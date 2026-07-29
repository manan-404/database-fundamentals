// Top 10 movies by comment count using pre-aggregation
db.comments.aggregate([
    { $group: { _id: "$movie_id", count: { $sum: 1 } } },
    { $sort: { count: -1 } },
    { $limit: 10 },
    {
        $lookup: {
            from: "movies",
            localField: "_id",
            foreignField: "_id",
            as: "movie_details"
        }
    },
    {
        $project: {
            _id: 0,
            title: { $arrayElemAt: ["$movie_details.title", 0] },
            commentCount: "$count"
        }
    }
]);

// Movies with more than 5 comments
db.movies.aggregate([
    {
        $lookup: {
            from: "comments",
            localField: "_id",
            foreignField: "movie_id",
            as: "movie_comments"
        }
    },
    {
        $project: {
            _id: 0,
            title: 1,
            commentCount: { $size: "$movie_comments" }
        }
    },
    { $match: { commentCount: { $gt: 5 } } }
]);

// Pipeline based lookup: join only comments containing word 'great'
db.movies.aggregate([
    {
        $lookup: {
            from: "comments",
            let: { movie_id: "$_id" },
            pipeline: [
                {
                    $match: {
                        $expr: { $eq: ["$movie_id", "$$movie_id"] },
                        text: { $regex: /great/i }
                    }
                }
            ],
            as: "great_comments"
        }
    },
    { $match: { "great_comments.0": { $exists: true } } },
    {
        $project: {
            _id: 0,
            title: 1,
            great_comments: 1
        }
    }
]);

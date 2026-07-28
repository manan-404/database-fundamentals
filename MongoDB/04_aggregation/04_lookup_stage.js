// Basic $lookup: join movies with comments
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
            movie_comments: 1
        }
    }
]);

// Inner join simulation: only movies that have comments
db.movies.aggregate([
    {
        $lookup: {
            from: "comments",
            localField: "_id",
            foreignField: "movie_id",
            as: "movie_comments"
        }
    },
    { $match: { "movie_comments": { $ne: [] } } }
]);

// Count comments per movie using $size
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
    }
]);

// Top 5 most active users based on comment count
db.comments.aggregate([
    { 
        $group: { 
            _id: "$email", 
            name: { $first: "$name" }, 
            commentCount: { $sum: 1 } 
        } 
    },
    { $sort: { commentCount: -1 } },
    { $limit: 5 }
]);

// Top 10 movies with most comments
db.comments.aggregate([
    { $group: { _id: "$movie_id", commentCount: { $sum: 1 } } },
    { $sort: { commentCount: -1 } },
    { $limit: 10 },
    {
        $lookup: {
            from: "movies",
            localField: "_id",
            foreignField: "_id",
            as: "movieDetails"
        }
    },
    {
        $project: {
            _id: 0,
            commentCount: 1,
            title: { $arrayElemAt: ["$movieDetails.title", 0] }
        }
    }
]);

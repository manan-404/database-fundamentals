// Unwind genres array into separate documents
db.movies.aggregate([
    { $unwind: "$genres" },
    { $project: { title: 1, genres: 1, _id: 0 } },
    { $limit: 10 }
]);

// Count movies per genre after unwinding
db.movies.aggregate([
    { $unwind: "$genres" },
    { $group: { _id: "$genres", count: { $sum: 1 } } },
    { $sort: { count: -1 } }
]);

// Find movies that have more than 3 genres
db.movies.aggregate([
    { $match: {
        $expr: { $gt: [{ $size: { $ifNull: ["$genres", []] } }, 3] }
    }},
    { $project: { 
        _id: 0, 
        title: 1, 
        genreCount: { $size: "$genres" } 
    }}
]);

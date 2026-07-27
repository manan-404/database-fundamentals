// Count movies per rating category
db.movies.aggregate([
    { $match: { rated: { $exists: true, $ne: null } } },
    { $group: { _id: "$rated", movieCount: { $sum: 1 } } },
    { $sort: { movieCount: -1 } }
]);

// Top 5 genres with highest average IMDB rating
db.movies.aggregate([
    { $unwind: "$genres" },
    { $group: { _id: "$genres", avgRating: { $avg: "$imdb.rating" } } },
    { $sort: { avgRating: -1 } },
    { $limit: 5 }
]);

// Year wise stats: total movies and highest rating per year
db.movies.aggregate([
    { $match: { 
        year: { $type: "number" }, 
        "imdb.rating": { $type: "number" } 
    }},
    { $group: { 
        _id: "$year",
        totalMovies: { $sum: 1 },
        highestRating: { $max: "$imdb.rating" }
    }},
    { $sort: { _id: -1 } }
]);

// Top 5 directors with most movies
db.movies.aggregate([
    { $unwind: "$directors" },
    { $group: { _id: "$directors", movieCount: { $sum: 1 } } },
    { $sort: { movieCount: -1 } },
    { $limit: 5 }
]);

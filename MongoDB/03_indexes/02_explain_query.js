// Check execution plan before index
db.movies.find({
    year: { $gte: 1995, $lte: 2005 },
    "imdb.rating": { $gt: 8 }
}).explain();

// Check with verbosity for more detail
db.movies.find({
    year: { $gte: 1995, $lte: 2005 },
    "imdb.rating": { $gt: 8 }
}).explain("executionStats");

// Create index then explain again to see improvement
db.movies.createIndex({ "imdb.rating": 1, year: 1 });

db.movies.find({
    year: { $gte: 1995, $lte: 2005 },
    "imdb.rating": { $gt: 8 }
}).explain("executionStats");

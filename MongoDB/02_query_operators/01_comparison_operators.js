// $gt: greater than
db.movies.find({ "imdb.rating": { $gt: 8.5 } });

// $lt: less than
db.movies.find({ runtime: { $lt: 120 } });

// $gte: greater than or equal
db.movies.find({ year: { $gte: 2000 } });

// $lte: less than or equal
db.movies.find({ year: { $lte: 2010 } });

// Combine range: movies between 2000 and 2010
db.movies.find({ year: { $gte: 2000, $lte: 2010 } });

// $ne: not equal
db.movies.find({ countries: { $ne: "USA" } });

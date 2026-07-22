// Include specific fields only (exclude _id)
db.movies.find(
    {},
    { title: 1, year: 1, "imdb.rating": 1, _id: 0 }
);

// Exclude specific fields (show everything except these)
db.movies.find(
    {},
    { plot: 0, fullplot: 0, _id: 0 }
);

// Projection with filter combined
db.movies.find(
    { year: { $gte: 1995, $lte: 2005 }, "imdb.rating": { $gt: 8 } },
    { title: 1, year: 1, "imdb.rating": 1, _id: 0 }
);

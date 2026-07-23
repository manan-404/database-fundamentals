// Find documents where year field is a number
db.movies.find(
    { year: { $type: "number" } },
    { title: 1, year: 1, _id: 0 }
);

// Find documents where year is stored as a string (data quality check)
db.movies.find(
    { year: { $type: "string" } },
    { title: 1, year: 1, _id: 0 }
);

// Find documents where imdb.rating is a number
db.movies.find(
    { "imdb.rating": { $type: "number" } },
    { title: 1, "imdb.rating": 1, _id: 0 }
);

// Create a single field index on imdb rating
db.movies.createIndex({ "imdb.rating": 1 });

// Create a single field index on year
db.movies.createIndex({ year: 1 });

// Create a compound index on imdb rating and year
db.movies.createIndex({ "imdb.rating": 1, year: 1 });

// Create an index on plot field
db.movies.createIndex({ plot: 1 });

// List all indexes on a collection
db.movies.getIndexes();

// Drop a specific index by name
db.movies.dropIndex("imdb.rating_1_year_1");

// Drop all indexes except the primary _id index
db.movies.dropIndexes();

// Get index stats to see which indexes are being used
db.movies.aggregate([{ $indexStats: {} }]);

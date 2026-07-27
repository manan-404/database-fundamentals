// Basic aggregation pipeline structure
// Each stage transforms the documents passed to the next stage

// $match: filter documents (like WHERE in SQL)
db.movies.aggregate([
    { $match: { "imdb.rating": { $gt: 8 } } }
]);

// $project: reshape documents (like SELECT in SQL)
db.movies.aggregate([
    { $project: { title: 1, "imdb.rating": 1, _id: 0 } }
]);

// $sort: order documents
db.movies.aggregate([
    { $sort: { "imdb.rating": -1 } }
]);

// $limit: restrict number of results
db.movies.aggregate([
    { $limit: 5 }
]);

// $skip: skip a number of documents
db.movies.aggregate([
    { $skip: 10 }
]);

// Combining stages into a pipeline
db.movies.aggregate([
    { $match: { "imdb.rating": { $gt: 8 } } },
    { $sort: { "imdb.rating": -1 } },
    { $limit: 10 },
    { $project: { title: 1, "imdb.rating": 1, _id: 0 } }
]);

// Find movies with IMDB rating above the overall average
// Step 1: Calculate the overall average
var avgResult = db.movies.aggregate([
    { $group: { _id: null, overallAvg: { $avg: "$imdb.rating" } } }
]).toArray();

var avg = avgResult[0].overallAvg;

// Step 2: Find movies above that average
db.movies.aggregate([
    { $match: { "imdb.rating": { $gt: avg } } },
    { $project: { _id: 0, title: 1, "imdb.rating": 1 } }
]);

// $and: both conditions must be true
db.movies.find({
    $and: [
        { year: 1996 },
        { "imdb.rating": { $gt: 8.5 } }
    ]
});

// $or: at least one condition must be true
db.movies.find({
    $or: [
        { rated: "PG-13" },
        { rated: "R" }
    ]
});

// Combine $and and $or
db.movies.find({
    $and: [
        { runtime: { $lt: 120 } },
        { $or: [ { rated: "PG-13" }, { rated: "R" } ] }
    ]
}, { title: 1, runtime: 1, rated: 1 });

// $and with multiple range conditions
db.movies.find({
    $and: [
        { year: { $gte: 2000 } },
        { year: { $lte: 2010 } },
        { "imdb.votes": { $gte: 1000 } }
    ]
}, { title: 1, year: 1, "imdb.votes": 1 });

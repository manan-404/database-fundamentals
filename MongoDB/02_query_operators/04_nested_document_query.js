// Query nested subdocument fields using dot notation
db.movies.find({
    "imdb.rating": { $gt: 8.5 }
}, { title: 1, "imdb.rating": 1 });

// Filter on multiple nested fields
db.movies.find({
    $and: [
        { "awards.wins": { $gte: 1 } },
        { "awards.nominations": { $gt: 5 } }
    ]
}, { title: 1, awards: 1 });

// Query votes on nested imdb object
db.movies.find({
    $and: [
        { countries: { $ne: "USA" } },
        { "imdb.votes": { $gt: 50 } }
    ]
}, { title: 1, countries: 1, "imdb.votes": 1 });

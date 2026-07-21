// $in: match any value in the array
db.movies.find({
    genres: { $in: ["Action", "Adventure"] }
}, { title: 1, genres: 1 });

// $nin: exclude documents matching any value in the array
db.movies.find({
    rated: { $nin: ["PG-13", "R"] }
}, { title: 1, rated: 1 });

// Combine $in and $nin on different fields
db.movies.find({
    $and: [
        { cast: { $in: ["Tom Hanks"] } },
        { cast: { $nin: ["Meg Ryan"] } }
    ]
}, { title: 1, cast: 1 });

// Find movies whose plot starts with the letter 'z' (case insensitive)
db.movies.find(
    { plot: { $regex: /^z/i } },
    { plot: 1, title: 1, _id: 0 }
);

// Find movies with title containing 'love'
db.movies.find(
    { title: { $regex: /love/i } },
    { title: 1, _id: 0 }
);

// Find movies whose title starts with 'The'
db.movies.find(
    { title: { $regex: /^The/i } },
    { title: 1, _id: 0 }
);

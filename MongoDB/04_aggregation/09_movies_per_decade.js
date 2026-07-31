// Count movies released each decade
db.movies.aggregate([
    { $match: { year: { $type: "number" } } },
    { 
        $project: { 
            decade: { $subtract: ["$year", { $mod: ["$year", 10] }] } 
        } 
    },
    { $group: { _id: "$decade", count: { $sum: 1 } } },
    { $sort: { _id: 1 } }
]);

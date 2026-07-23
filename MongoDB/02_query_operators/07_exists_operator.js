// Find documents where commission_pct field exists
db.employees.find(
    { commission_pct: { $exists: true } }
);

// Find documents where a field does NOT exist
db.employees.find(
    { skills: { $exists: false } }
);

// Find movies where rated field exists and is not null
db.movies.find(
    { rated: { $exists: true, $ne: null } },
    { title: 1, rated: 1, _id: 0 }
);

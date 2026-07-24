// Find movies where genre count is greater than 3
db.movies.find({
    $expr: { $gt: [ { $size: { $ifNull: ["$genres", []] } }, 3 ] }
}, { title: 1, genres: 1, _id: 0 });

// Find employees where salary is greater than their target salary field
db.employees.find({
    $expr: { $gt: ["$salary", "$targetSalary"] }
});

// Find documents where a calculated value meets a condition
db.orders.find({
    $expr: { $gte: ["$amount", "$minOrderAmount"] }
});

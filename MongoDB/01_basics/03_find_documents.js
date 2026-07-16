// Find all documents in a collection
db.employees.find();

// Find with a filter condition
db.employees.find({ department: "IT" });

// Find with projection (show only name and salary, hide _id)
db.employees.find({}, { name: 1, salary: 1, _id: 0 });

// Find documents where skills array contains "java"
db.employees.find({ skills: "java" });

// Find a single matching document
db.employees.findOne({ name: "Ahmed" });

// Delete a single matching document
db.employees.deleteOne({ name: "Ahmed" });

// Delete all documents matching a condition
db.employees.deleteMany({ joinYear: 2021 });

// Delete all documents in a collection (empty it)
db.employees.deleteMany({});

// Drop the entire collection
db.employees.drop();

// Drop the entire database
db.dropDatabase();

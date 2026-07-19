// Rename a field in a single document
db.employees.updateOne(
    { name: "Ahmed" },
    { $rename: { "salary": "baseSalary" } }
);

// Rename a field across all documents
db.employees.updateMany(
    {},
    { $rename: { "joinYear": "hireYear" } }
);

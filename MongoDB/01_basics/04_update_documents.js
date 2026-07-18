// Update a single document
db.employees.updateOne(
    { name: "Sana", department: "HR" },
    { $set: { department: "IT" } }
);

// Update multiple documents
db.employees.updateMany(
    { department: "Finance" },
    { $mul: { salary: 1.10 } }
);

// Add a new field to a document
db.employees.updateOne(
    { name: "Ahmed" },
    { $set: { email: "ahmed@company.com" } }
);

// Remove a field from a document
db.employees.updateOne(
    { name: "Ahmed" },
    { $unset: { email: "" } }
);

// Increment a numeric field
db.employees.updateOne(
    { name: "Zain" },
    { $inc: { salary: 5000 } }
);

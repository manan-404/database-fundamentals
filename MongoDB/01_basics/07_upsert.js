// Upsert: update if exists, insert if not found
db.employees.updateOne(
    { name: "Hassan" },
    { $set: { department: "IT", salary: 40000, joinYear: 2023 } },
    { upsert: true }
);

// Upsert with updateMany
db.employees.updateMany(
    { department: "Marketing" },
    { $set: { active: true } },
    { upsert: false }
);

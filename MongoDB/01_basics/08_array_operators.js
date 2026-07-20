// $push: add a skill to an employee's skills array
db.employees.updateOne(
    { name: "Zain" },
    { $push: { skills: "mongodb" } }
);

// $push with $each: add multiple items to an array at once
db.employees.updateOne(
    { name: "Ahmed" },
    { $push: { skills: { $each: ["nodejs", "express"] } } }
);

// $pull: remove a specific skill from the array
db.employees.updateOne(
    { name: "Ahmed" },
    { $pull: { skills: "sql" } }
);

// $pull with condition: remove all skills matching a pattern
db.employees.updateMany(
    {},
    { $pull: { skills: { $in: ["excel", "accounting"] } } }
);

// $addToSet: add to array only if value doesn't already exist
db.employees.updateOne(
    { name: "Fatima" },
    { $addToSet: { skills: "finance" } }
);

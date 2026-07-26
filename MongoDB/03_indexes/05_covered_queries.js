// Create a compound index on department and salary
db.employees.createIndex({ department: 1, salary: 1 });

// Covered query: filter and projection both use only indexed fields
// MongoDB reads ONLY the index, never touches actual documents
db.employees.find(
    { department: "IT" },
    { department: 1, salary: 1, _id: 0 }
);

// Verify it is a covered query using explain
// Look for "stage": "PROJECTION_COVERED" in the output
db.employees.find(
    { department: "IT" },
    { department: 1, salary: 1, _id: 0 }
).explain("executionStats");

// This is NOT a covered query — name is not in the index
// MongoDB must fetch the actual document to get name
db.employees.find(
    { department: "IT" },
    { department: 1, salary: 1, name: 1, _id: 0 }
).explain("executionStats");

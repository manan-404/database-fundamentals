// Unique index: no two documents can have the same email
db.employees.createIndex({ email: 1 }, { unique: true });

// Sparse index: only index documents where the field exists
db.employees.createIndex({ commission: 1 }, { sparse: true });

// TTL index: automatically delete documents after a set time
db.sessions.createIndex({ createdAt: 1 }, { expireAfterSeconds: 3600 });

// Text index: enables full text search on a field
db.movies.createIndex({ plot: "text", title: "text" });

// Wildcard index: index all fields in a document
db.employees.createIndex({ "$**": 1 });

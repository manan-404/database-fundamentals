// Create a collection with JSON schema validation rules
db.createCollection("employees", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            required: ["name", "salary", "department"],
            properties: {
                name: {
                    bsonType: "string",
                    description: "must be a string and is required"
                },
                salary: {
                    bsonType: "int",
                    minimum: 30001,
                    description: "must be an integer greater than 30000 and is required"
                },
                department: {
                    bsonType: "string",
                    description: "must be a string and is required"
                }
            }
        }
    }
});

// This INSERT will SUCCEED (valid document)
db.employees.insertOne({
    name: "Ahmed Khan",
    salary: 50000,
    department: "IT"
});

// This INSERT will FAIL (salary below minimum)
db.employees.insertOne({
    name: "John Doe",
    salary: 25000,
    department: "HR"
});

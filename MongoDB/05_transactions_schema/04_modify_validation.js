// Update validation rules on an existing collection
db.runCommand({
    collMod: "employees",
    validator: {
        $jsonSchema: {
            bsonType: "object",
            required: ["name", "salary", "department", "email"],
            properties: {
                name: {
                    bsonType: "string",
                    description: "must be a string and is required"
                },
                salary: {
                    bsonType: "int",
                    minimum: 30001,
                    description: "must be an integer greater than 30000"
                },
                department: {
                    bsonType: "string",
                    description: "must be a string and is required"
                },
                email: {
                    bsonType: "string",
                    pattern: "^.+@.+\\..+$",
                    description: "must be a valid email string and is required"
                }
            }
        }
    },
    validationLevel: "moderate"
});

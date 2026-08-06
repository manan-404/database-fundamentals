// Remove all validation rules from a collection
db.runCommand({
    collMod: "employees",
    validator: {},
    validationLevel: "off"
});

// Verify validation is removed by checking collection info
db.getCollectionInfos({ name: "employees" });

// Insert a single document into a collection
db.employees.insertOne({
    name: "Ahmed",
    department: "IT",
    salary: 45000,
    joinYear: 2022,
    skills: ["java", "sql"]
});

// Insert multiple documents at once
db.employees.insertMany([
    { name: "Ahmed", department: "IT", salary: 45000, joinYear: 2022, skills: ["java", "sql"] },
    { name: "Fatima", department: "Finance", salary: 60000, joinYear: 2021, skills: ["excel", "finance"] },
    { name: "Zain", department: "IT", salary: 35000, joinYear: 2023, skills: ["python"] },
    { name: "Sana", department: "HR", salary: 32000, joinYear: 2020, skills: ["communication"] },
    { name: "Ali", department: "Finance", salary: 55000, joinYear: 2021, skills: ["accounting", "java"] }
]);

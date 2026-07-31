// Create collections for financial ledger processing
db.createCollection("accounts");
db.createCollection("transactions");

// Insert sample accounts to work with
db.accounts.insertMany([
    { name: "Ali", balance: 5000 },
    { name: "Ahmed", balance: 3000 }
]);

// Multi-document bank transfer inside an isolated transaction
const session = db.getMongo().startSession();
session.startTransaction();

try {
    const accounts = session.getDatabase("lab").accounts;

    // Deduct funds from sender
    accounts.updateOne(
        { name: "Ali" },
        { $inc: { balance: -500 } }
    );

    // Add funds to receiver
    accounts.updateOne(
        { name: "Ahmed" },
        { $inc: { balance: 500 } }
    );

    session.commitTransaction();
    print("Transaction Successful");

} catch (error) {
    session.abortTransaction();
    print("Transaction Failed: " + error);

} finally {
    session.endSession();
}

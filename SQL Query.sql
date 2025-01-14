
/*find all the pending transactions that shows the payer_email and receiver_email with the 
currency and the date the transaction was completed in. The following query shows all pending transactions to be 
made in USD. 
*/
CREATE VIEW USDTransactions AS
SELECT T.id, T.amount, T.currency, T.paymentDate, T.status,
       payer.email AS payer_email, receiver.email AS receiver_email
FROM transaction T
JOIN personalusers payer ON T.payerID = payer.id
JOIN personalusers receiver ON T.receiverID = receiver.id
WHERE T.status = 'Pending' AND T.currency = "USD";



/*Create a view that shows all transaction details. This query selects all the transactions 
and the details of the payer as well as receiever.with all columns from the transaction table*/
CREATE VIEW TransactionDetails AS
SELECT T.id, 
       P.id AS PayerID,
       payerDetails.firstName AS PayerFirstName, 
       payerDetails.lastName AS PayerLastName,
       R.id AS ReceiverID,
       receiverDetails.firstName AS ReceiverFirstName, 
       receiverDetails.lastName AS ReceiverLastName,
       T.amount, 
       T.currency, 
       T.paymentDate, 
       T.status, 
       T.feeAmount
FROM transaction T
JOIN userdetails payerDetails ON T.payerID = payerDetails.id
JOIN userdetails receiverDetails ON T.receiverID = receiverDetails.id 
JOIN personalusers P ON T.payerID = P.id
JOIN personalusers R ON T.receiverID = R.id;

-- Create the stored procedure
DELIMITER //

CREATE PROCEDURE GetCardIDForBusinessUsersInNY()
BEGIN
    -- Select cardID for business users
    SELECT DISTINCT c.id
    FROM businessusers bu
    JOIN userdetails ud ON bu.userDetailsID = ud.id
    JOIN cards c ON bu.cardID = c.id

    UNION

    -- Select cardID for users with a bank account in NY
    SELECT DISTINCT c.id
    FROM bank b
    JOIN userdetails ud ON b.id = ud.bankID
    JOIN cards c ON b.id = c.bankID
    WHERE b.state = 'NY';
END //

DELIMITER ;

/*Create the stored procedure that showed all business users and their transaction amounts order descending 
it also allows two variables to specify the start date and the end date*/
DELIMITER //

CREATE PROCEDURE highestTransaction()
BEGIN
    DECLARE startDate DATE;
    DECLARE endDate DATE;

    SET startDate = '2022-01-01';
    SET endDate = '2024-01-01';

    SELECT U.id AS UserID, U.firstName AS FirstName, U.lastName AS LastName,
           SUM(CASE WHEN t.payerID = U.id THEN t.amount END) AS TotalTransactionAmount
    FROM businessusers B
    JOIN userdetails U ON B.id = U.id
    JOIN transaction t ON U.id = t.payerID OR U.id = t.receiverID
    WHERE t.paymentDate BETWEEN startDate AND endDate
    GROUP BY U.id, U.firstName, U.lastName
    ORDER BY TotalTransactionAmount DESC;
    
END //
DELIMITER ;









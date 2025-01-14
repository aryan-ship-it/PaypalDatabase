INSERT INTO `paypaldb`.`account` (`id`, `usd`, `jpy`, `npr`, `eur`) VALUES
(1, 1000.00, 50000.00, 100000.00, 800.00),
(2, 500.00, 20000.00, 50000.00, 400.00),
(3, 1500.00, 75000.00, 80000.00, 1200.00),
(4, 1200.00, 60000.00, 90000.00, 1000.00),
(5, 800.00, 30000.00, 70000.00, 600.00),
(6, 2000.00, 90000.00, 120000.00, 1500.00),
(7, 300.00, 10000.00, 30000.00, 200.00),
(8, 1800.00, 80000.00, 95000.00, 1100.00),
(9, 600.00, 25000.00, 45000.00, 500.00),
(10, 700.00, 35000.00, 60000.00, 700.00),
(11, 1300.00, 70000.00, 85000.00, 900.00),
(12, 100.00, 8000.00, 20000.00, 100.00),
(13, 950.00, 40000.00, 55000.00, 950.00),
(14, 1700.00, 85000.00, 95000.00, 1300.00),
(15, 400.00, 15000.00, 35000.00, 300.00);



INSERT INTO `paypaldb`.`bank` (`id`, `bankName`, `accountNumber`, `routingNumber`, `phone`, `address`, `city`, `state`, `zipcode`, `country`) VALUES
(1, 'Chase Bank', '123456789', '111000614', '555-1234', '123 Main St', 'New York City', 'NY', '10001', 'USA'),
(2, 'Bank of America', '987654321', '021000322', '555-5678', '456 Oak St', 'Charlotte', 'NC', '28202', 'USA'),
(3, 'Wells Fargo', '555555555', '121000248', '555-9999', '789 Pine St', 'San Francisco', 'CA', '94105', 'USA'),
(4, 'Wells Fargo', '222222222', '021000089', '555-1111', '456 Elm St', 'New York City', 'NY', '10005', 'USA'),
(5, 'US Bank', '333333333', '091000022', '555-7777', '321 Oak St', 'Minneapolis', 'MN', '55402', 'USA'),
(6, 'PNC Bank', '444444444', '043000096', '555-4444', '987 Pine St', 'Pittsburgh', 'PA', '15222', 'USA'),
(7, 'TD Bank', '666666666', '031101266', '555-6666', '654 Elm St', 'Cherry Hill', 'NJ', '08002', 'USA'),
(8, 'Bank of America', '777777777', '061000104', '555-3333', '789 Oak St', 'Atlanta', 'GA', '30308', 'USA'),
(9, 'US Bank', '888888888', '041001039', '555-2222', '123 Pine St', 'Cleveland', 'OH', '44114', 'USA'),
(10, 'Regions Bank', '999999999', '062005690', '555-1111', '456 Elm St', 'Birmingham', 'AL', '35203', 'USA'),
(11, 'Capital One', '101010101', '051405515', '555-9999', '789 Oak St', 'McLean', 'VA', '22102', 'USA'),
(12, 'HSBC Bank', '111111111', '022000020', '555-7777', '321 Pine St', 'New York City', 'NY', '10018', 'USA'),
(13, 'PNC Bank', '121212121', '053101121', '555-4444', '987 Elm St', 'Winston-Salem', 'NC', '27101', 'USA'),
(14, 'Santander Bank', '131313131', '031101143', '555-6666', '654 Oak St', 'Boston', 'MA', '02109', 'USA'),
(15, 'Capital One', '141414141', '124003116', '555-3333', '789 Pine St', 'Detroit', 'MI', '48226', 'USA');



INSERT INTO `paypaldb`.`userdetails` (`id`, `firstName`, `mInitial`, `lastName`, `phone`, `address1`, `city`, `state`, `zipcode`, `country`, `DOB`) VALUES
(1, 'John', 'A', 'Doe', '555-123-4567', '789 Elm St', 'New York City', 'NY', '10001', 'USA', '1990-01-15'),
(2, 'Jane', 'B', 'Smith', '555-234-5678', '321 Pine St', 'Los Angeles', 'CA', '90001', 'USA', '1985-05-22'),
(3, 'Michael', 'C', 'Johnson', '555-345-6789', '456 Oak St', 'Chicago', 'IL', '60601', 'USA', '1988-09-30'),
(4, 'Emily', 'D', 'Williams', '555-456-7890', '123 Maple St', 'Houston', 'TX', '77001', 'USA', '1992-03-12'),
(5, 'Daniel', 'E', 'Brown', '555-567-8901', '987 Pine St', 'Phoenix', 'AZ', '85001', 'USA', '1983-07-18'),
(6, 'Sophia', 'F', 'Jones', '555-678-9012', '654 Cedar St', 'Philadelphia', 'PA', '19101', 'USA', '1995-11-25'),
(7, 'William', 'G', 'Miller', '555-789-0123', '321 Birch St', 'San Antonio', 'TX', '78201', 'USA', '1981-12-04'),
(8, 'Olivia', 'H', 'Davis', '555-890-1234', '789 Walnut St', 'San Diego', 'CA', '92101', 'USA', '1994-06-08'),
(9, 'James', 'I', 'Taylor', '555-901-2345', '456 Redwood St', 'Dallas', 'TX', '75201', 'USA', '1987-02-20'),
(10, 'Emma', 'J', 'Anderson', '555-012-3456', '123 Cedar St', 'Austin', 'TX', '78701', 'USA', '1998-04-17'),
(11, 'Benjamin', 'K', 'White', '555-123-4567', '789 Elm St', 'Miami', 'FL', '33101', 'USA', '1989-08-03'),
(12, 'Ava', 'L', 'Harris', '555-234-5678', '321 Pine St', 'Seattle', 'WA', '98101', 'USA', '1991-01-09'),
(13, 'Liam', 'M', 'Martin', '555-345-6789', '456 Oak St', 'Denver', 'CO', '80201', 'USA', '1993-05-28'),
(14, 'Mia', 'N', 'Thompson', '555-456-7890', '123 Maple St', 'Atlanta', 'GA', '30301', 'USA', '1986-10-14'),
(15, 'Ethan', 'O', 'Garcia', '555-567-8901', '987 Pine St', 'Portland', 'OR', '97201', 'USA', '1996-02-02');



INSERT INTO `paypaldb`.`cards` (`id`, `firstName`, `mInitial`, `lastName`, `type`, `number`, `securityCode`, `expireDate`, `zipcode`, `accountID`) VALUES
(1, 'John', 'A', 'Doe', 'Visa', '1234-5678-9012-3456', '123', '2023-12-31', '10001', 1),
(2, 'Jane', 'B', 'Smith', 'MasterCard', '9876-5432-1098-7654', '456', '2024-06-30', '90001', 2),
(3, 'Michael', 'C', 'Johnson', 'Visa', '1111-2222-3333-4444', '789', '2022-11-30', '60601', 3),
(4, 'Emily', 'D', 'Williams', 'MasterCard', '5555-6666-7777-8888', '012', '2023-09-15', '77001', 4),
(5, 'Daniel', 'E', 'Brown', 'Visa', '9999-8888-7777-6666', '345', '2024-03-31', '85001', 5),
(6, 'Sophia', 'F', 'Jones', 'MasterCard', '4444-3333-2222-1111', '678', '2023-08-15', '19101', 6),
(7, 'William', 'G', 'Miller', 'Visa', '7777-8888-9999-0000', '901', '2024-01-01', '78201', 7),
(8, 'Olivia', 'H', 'Davis', 'MasterCard', '3333-4444-5555-6666', '234', '2022-12-31', '92101', 8),
(9, 'James', 'I', 'Taylor', 'Visa', '6666-5555-4444-3333', '567', '2023-05-15', '75201', 9),
(10, 'Emma', 'J', 'Anderson', 'MasterCard', '2222-1111-0000-9999', '890', '2024-10-31', '78701', 10),
(11, 'Benjamin', 'K', 'White', 'Visa', '8888-9999-0000-1111', '123', '2023-04-15', '33101', 11),
(12, 'Ava', 'L', 'Harris', 'MasterCard', '7777-6666-5555-4444', '456', '2022-11-30', '98101', 12),
(13, 'Liam', 'M', 'Martin', 'Visa', '3333-2222-1111-0000', '789', '2023-07-15', '80201', 13),
(14, 'Mia', 'N', 'Thompson', 'MasterCard', '9999-0000-1111-2222', '012', '2024-02-28', '30301', 14),
(15, 'Ethan', 'O', 'Garcia', 'Visa', '4444-5555-6666-7777', '345', '2023-06-15', '97201', 15);


INSERT INTO `paypaldb`.`businessusers` (`id`, `password`, `email`, `name`, `businessType`, `userDetailsID`, `cardID`, `bankID`, `accountID`) VALUES
(1, 'TechP@ssword1', 'techbiz1@example.com', 'Innovate Tech Solutions', 'Information Technology', 1, 1, 1, 1),
(2, 'C0nt3ntCr3@t0rs', 'creativedesigns2@example.com', 'Digital Creations Co.', 'Marketing and Advertising', 2, 2, 2, 2),
(3, 'GlobalM@nuf@ct1r3', 'globalmanufacturing3@example.com', 'Global Manufacturing Corp.', 'Manufacturing', 3, 3, 3, 3),
(4, 'H3althW@yz2023', 'healthcareinnovations4@example.com', 'Healthcare Innovations LLC', 'Healthcare', 4, 4, 4, 4),
(5, 'R3alEst@t3Pr0s', 'realestateventures5@example.com', 'Real Estate Ventures Corp.', 'Real Estate', 5, 5, 5, 5),
(6, 'Inf0TechP@ss', 'infotechbiz6@example.com', 'Infinite Technologies Solutions', 'Information Technology', 6, 6, 6, 6),
(7, 'M@rk3tAdv@nt@g3', 'marketingadv7@example.com', 'Market Advantage Strategies', 'Marketing and Advertising', 7, 7, 7, 7),
(8, 'GlobalMfgGr0up', 'globalmfg8@example.com', 'Global Manufacturing Group', 'Manufacturing', 8, 8, 8, 8),
(9, 'Adv@nc3dH3@lth', 'advancedhealth9@example.com', 'Advanced Healthcare Innovations', 'Healthcare', 9, 9, 9, 9),
(10, 'R3alE$t@t3V3ntur3', 'realestateventures10@example.com', 'Real Estate Ventures LLC', 'Real Estate', 10, 10, 10, 10);


INSERT INTO `paypaldb`.`personalusers` (`id`, `password`, `email`, `userDetailsID`, `cardID`, `bankID`, `accountID`) VALUES
(1, 'mypassword', 'john.doe@example.com', 1, 1, 1, 1),
(2, 'userpass123', 'jane.smith@example.com', 2, 2, 2, 2),
(3, 'secureUser@2023', 'michael.johnson@example.com', 3, 3, 3, 3),
(4, 'PersonalP@ss', 'emily.williams@example.com', 4, 4, 4, 4),
(5, 'MySecureP@ss', 'daniel.brown@example.com', 5, 5, 5, 5),
(6, 'User123@Pass', 'sophia.jones@example.com', 6, 6, 6, 6),
(7, 'Personal123', 'william.miller@example.com', 7, 7, 7, 7),
(8, 'Passw0rdUser', 'olivia.davis@example.com', 8, 8, 8, 8),
(9, 'U$erSecur3@2023', 'james.taylor@example.com', 9, 9, 9, 9),
(10, 'P@ssw0rdU', 'emma.anderson@example.com', 10, 10, 10, 10);


INSERT INTO `paypaldb`.`transaction` (`id`, `payerID`, `receiverID`, `amount`, `currency`, `paymentDate`, `status`, `feeAmount`) VALUES
(1, 15, 14, 110.00, 'USD', '2023-05-01', 'Pending', 4.50),
(2, 14, 13, 60.50, 'JPY', '2023-05-05', 'Completed', 2.00),
(3, 13, 12, 85.20, 'EUR', '2023-05-10', 'Pending', 3.50),
(4, 12, 11, 30.80, 'NPR', '2023-05-15', 'Completed', 1.50),
(5, 11, 10, 75.00, 'USD', '2023-05-20', 'Completed', 3.00),
(6, 10, 9, 40.50, 'JPY', '2023-06-01', 'Pending', 2.25),
(7, 9, 8, 95.75, 'EUR', '2023-06-05', 'Pending', 4.00),
(8, 8, 7, 50.30, 'NPR', '2023-06-10', 'Completed', 2.75),
(9, 7, 6, 65.40, 'USD', '2023-06-15', 'Pending', 3.25),
(10, 6, 5, 120.60, 'JPY', '2023-06-20', 'Completed', 4.00),
(11, 5, 4, 35.90, 'EUR', '2023-07-01', 'Pending', 1.75),
(12, 4, 3, 60.20, 'NPR', '2023-07-05', 'Completed', 2.50),
(13, 3, 2, 45.50, 'USD', '2023-07-10', 'Completed', 2.00),
(14, 2, 1, 80.75, 'JPY', '2023-07-15', 'Pending', 3.50),
(15, 1, 15, 110.00, 'EUR', '2023-07-20', 'Completed', 4.50);

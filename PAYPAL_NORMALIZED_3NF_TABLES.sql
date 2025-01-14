CREATE TABLE `userDetails` (
  `id` integer PRIMARY KEY,
  `firstName` varchar(255),
  `mInitial` varchar(255),
  `lastName` varchar(255),
  `phone` varchar(255),
  `address1` varchar(255),
  `address2` varchar(255),
  `city` varchar(255),
  `state` varchar(255),
  `zipcode` varchar(255),
  `country` varchar(255),
  `DOB` date
);
CREATE TABLE `bank` (
  `id` integer PRIMARY KEY,
  `Name` varchar(255),
  `accountNumber` varchar(255),
  `routingNumber` varchar(255),
  `phone` varchar(255),
  `address1` varchar(255),
  `address2` varchar(255),
  `city` varchar(255),
  `state` varchar(255),
  `zipcode` varchar(255),
  `country` varchar(255),
  `DOB` date
);

CREATE TABLE `cards` (
  `id` integer PRIMARY KEY,
  `firstName` varchar(255),
  `mInitial` varchar(255),
  `lastName` varchar(255),
  `type` varchar(255),
  `number` varchar(255),
  `securityCode` varchar(255),
  `expireData` date,
  `phone` varchar(255),
  `address1` varchar(255),
  `address2` varchar(255),
  `city` varchar(255),
  `state` varchar(255),
  `zipcode` varchar(255),
  `country` varchar(255)
);


CREATE TABLE `account` (
  `id` integer PRIMARY KEY,
  `usd` decimal(9,2),
  `jpy` decimal(9,2),
  `npr` decimal(9,2),
  `eur` decimal(9,2)
);

CREATE TABLE `personalUsers` (
  `id` integer PRIMARY KEY,
  `password` varchar(255),
  `email` varchar(255),
  `userDetailsID` integer,
  `cardID` integer,
  `bankID` integer,
  `accountID` integer,
  FOREIGN KEY (`userDetailsID`) REFERENCES `userDetails` (`id`),
  FOREIGN KEY (`cardID`) REFERENCES `cards` (`id`),
  FOREIGN KEY (`bankID`) REFERENCES `bank` (`id`),
  FOREIGN KEY (`accountID`) REFERENCES `account` (`id`)
);

CREATE TABLE `businessUsers` (
  `id` integer PRIMARY KEY,
  `password` varchar(255),
  `email` varchar(255),
  `name` varchar(255),
  `businessType` varchar(255),
  `userDetailsID` integer,
  `cardID` integer,
  `bankID` integer,
  `accountID` integer,
  FOREIGN KEY (`userDetailsID`) REFERENCES `userDetails` (`id`),
  FOREIGN KEY (`cardID`) REFERENCES `cards` (`id`),
  FOREIGN KEY (`bankID`) REFERENCES `bank` (`id`),
  FOREIGN KEY (`accountID`) REFERENCES `account` (`id`)
);


CREATE TABLE `transaction` (
  `id` integer PRIMARY KEY,
  `payerID` integer,
  `receiverID` integer,
  `amount` decimal(9,2),
  `currency` varchar(255),
  `paymentDate` date,
  `status` varchar(255),
  FOREIGN KEY (`payerID`) REFERENCES `personalUsers` (`id`),
  FOREIGN KEY (`payerID`) REFERENCES `businessUsers` (`id`),
  FOREIGN KEY (`receiverID`) REFERENCES `personalUsers` (`id`),
  FOREIGN KEY (`receiverID`) REFERENCES `businessUsers` (`id`)
);


ALTER TABLE `cards` ADD COLUMN `accountID` INTEGER;
ALTER TABLE `cards` ADD FOREIGN KEY (`accountID`) REFERENCES `account` (`id`)





-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema paypaldb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema paypaldb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `paypaldb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `paypaldb` ;

-- -----------------------------------------------------
-- Table `paypaldb`.`account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `paypaldb`.`account` (
  `id` INT NOT NULL,
  `usd` DECIMAL(9,2) NULL DEFAULT NULL,
  `jpy` DECIMAL(9,2) NULL DEFAULT NULL,
  `npr` DECIMAL(9,2) NULL DEFAULT NULL,
  `eur` DECIMAL(9,2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `paypaldb`.`bank`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `paypaldb`.`bank` (
  `id` INT NOT NULL,
  `Name` VARCHAR(255) NULL DEFAULT NULL,
  `accountNumber` VARCHAR(255) NULL DEFAULT NULL,
  `routingNumber` VARCHAR(255) NULL DEFAULT NULL,
  `phone` VARCHAR(255) NULL DEFAULT NULL,
  `address` VARCHAR(255) NULL DEFAULT NULL,
  `city` VARCHAR(255) NULL DEFAULT NULL,
  `state` VARCHAR(255) NULL DEFAULT NULL,
  `zipcode` VARCHAR(255) NULL DEFAULT NULL,
  `country` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `paypaldb`.`userdetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `paypaldb`.`userdetails` (
  `id` INT NOT NULL,
  `firstName` VARCHAR(255) NULL DEFAULT NULL,
  `mInitial` VARCHAR(255) NULL DEFAULT NULL,
  `lastName` VARCHAR(255) NULL DEFAULT NULL,
  `phone` VARCHAR(255) NULL DEFAULT NULL,
  `address1` VARCHAR(255) NULL DEFAULT NULL,
  `city` VARCHAR(255) NULL DEFAULT NULL,
  `state` VARCHAR(255) NULL DEFAULT NULL,
  `zipcode` VARCHAR(255) NULL DEFAULT NULL,
  `country` VARCHAR(255) NULL DEFAULT NULL,
  `DOB` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `paypaldb`.`cards`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `paypaldb`.`cards` (
  `id` INT NOT NULL,
  `firstName` VARCHAR(255) NULL DEFAULT NULL,
  `mInitial` VARCHAR(255) NULL DEFAULT NULL,
  `lastName` VARCHAR(255) NULL DEFAULT NULL,
  `type` VARCHAR(255) NULL DEFAULT NULL,
  `number` VARCHAR(255) NULL DEFAULT NULL,
  `securityCode` VARCHAR(255) NULL DEFAULT NULL,
  `expireDate` DATE NULL DEFAULT NULL,
  `zipcode` VARCHAR(255) NULL DEFAULT NULL,
  `accountID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `accountID` (`accountID` ASC) VISIBLE,
  CONSTRAINT `cards_ibfk_1`
    FOREIGN KEY (`accountID`)
    REFERENCES `paypaldb`.`account` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `paypaldb`.`businessusers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `paypaldb`.`businessusers` (
  `id` INT NOT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `businessType` VARCHAR(255) NULL DEFAULT NULL,
  `userDetailsID` INT NULL DEFAULT NULL,
  `cardID` INT NULL DEFAULT NULL,
  `bankID` INT NULL DEFAULT NULL,
  `accountID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `userDetailsID` (`userDetailsID` ASC) VISIBLE,
  INDEX `cardID` (`cardID` ASC) VISIBLE,
  INDEX `bankID` (`bankID` ASC) VISIBLE,
  INDEX `accountID` (`accountID` ASC) VISIBLE,
  CONSTRAINT `businessusers_ibfk_1`
    FOREIGN KEY (`userDetailsID`)
    REFERENCES `paypaldb`.`userdetails` (`id`),
  CONSTRAINT `businessusers_ibfk_2`
    FOREIGN KEY (`cardID`)
    REFERENCES `paypaldb`.`cards` (`id`),
  CONSTRAINT `businessusers_ibfk_3`
    FOREIGN KEY (`bankID`)
    REFERENCES `paypaldb`.`bank` (`id`),
  CONSTRAINT `businessusers_ibfk_4`
    FOREIGN KEY (`accountID`)
    REFERENCES `paypaldb`.`account` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `paypaldb`.`personalusers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `paypaldb`.`personalusers` (
  `id` INT NOT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `userDetailsID` INT NULL DEFAULT NULL,
  `cardID` INT NULL DEFAULT NULL,
  `bankID` INT NULL DEFAULT NULL,
  `accountID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `userDetailsID` (`userDetailsID` ASC) VISIBLE,
  INDEX `cardID` (`cardID` ASC) VISIBLE,
  INDEX `bankID` (`bankID` ASC) VISIBLE,
  INDEX `accountID` (`accountID` ASC) VISIBLE,
  CONSTRAINT `personalusers_ibfk_1`
    FOREIGN KEY (`userDetailsID`)
    REFERENCES `paypaldb`.`userdetails` (`id`),
  CONSTRAINT `personalusers_ibfk_2`
    FOREIGN KEY (`cardID`)
    REFERENCES `paypaldb`.`cards` (`id`),
  CONSTRAINT `personalusers_ibfk_3`
    FOREIGN KEY (`bankID`)
    REFERENCES `paypaldb`.`bank` (`id`),
  CONSTRAINT `personalusers_ibfk_4`
    FOREIGN KEY (`accountID`)
    REFERENCES `paypaldb`.`account` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `paypaldb`.`transaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `paypaldb`.`transaction` (
  `id` INT NOT NULL,
  `payerID` INT NULL DEFAULT NULL,
  `receiverID` INT NULL DEFAULT NULL,
  `amount` DECIMAL(9,2) NULL DEFAULT NULL,
  `currency` VARCHAR(255) NULL DEFAULT NULL,
  `paymentDate` DATE NULL DEFAULT NULL,
  `status` VARCHAR(255) NULL DEFAULT NULL,
  `feeAmount` DECIMAL(9,2) NULL DEFAULT NULL, 
  PRIMARY KEY (`id`),
  INDEX `payerID` (`payerID` ASC) VISIBLE,
  INDEX `receiverID` (`receiverID` ASC) VISIBLE,
  CONSTRAINT `transaction_ibfk_1`
    FOREIGN KEY (`payerID`)
    REFERENCES `paypaldb`.`personalusers` (`id`),
  CONSTRAINT `transaction_ibfk_2`
    FOREIGN KEY (`payerID`)
    REFERENCES `paypaldb`.`businessusers` (`id`),
  CONSTRAINT `transaction_ibfk_3`
    FOREIGN KEY (`receiverID`)
    REFERENCES `paypaldb`.`personalusers` (`id`),
  CONSTRAINT `transaction_ibfk_4`
    FOREIGN KEY (`receiverID`)
    REFERENCES `paypaldb`.`businessusers` (`id`))
    
    
    
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


ALTER TABLE bank RENAME COLUMN Name TO bankName;

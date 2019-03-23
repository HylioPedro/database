-- MySQL Script generated by MySQL Workbench
-- Sat Mar 23 18:57:59 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema example
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema example
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `example` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `example` ;

-- -----------------------------------------------------
-- Table `example`.`country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `example`.`country` (
  `id` INT(11) NOT NULL,
  `country_name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `example`.`city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `example`.`city` (
  `id` INT(11) NOT NULL,
  `city_name` VARCHAR(30) NOT NULL,
  `country_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `country_id` (`country_id` ASC) VISIBLE,
  CONSTRAINT `city_ibfk_1`
    FOREIGN KEY (`country_id`)
    REFERENCES `example`.`country` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `example`.`company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `example`.`company` (
  `id` INT(11) NOT NULL,
  `company_name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `example`.`company_city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `example`.`company_city` (
  `id` INT(11) NOT NULL,
  `city_id` INT(11) NOT NULL,
  `company_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `city_id` (`city_id` ASC) VISIBLE,
  INDEX `company_id` (`company_id` ASC) VISIBLE,
  CONSTRAINT `company_city_ibfk_1`
    FOREIGN KEY (`city_id`)
    REFERENCES `example`.`city` (`id`),
  CONSTRAINT `company_city_ibfk_2`
    FOREIGN KEY (`company_id`)
    REFERENCES `example`.`company` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

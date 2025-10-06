-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema gameraccount
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gameraccount
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gameraccount` DEFAULT CHARACTER SET utf8 ;
USE `gameraccount` ;

-- -----------------------------------------------------
-- Table `gameraccount`.`gamer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gameraccount`.`gamer` (
  `gamer_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NULL,
  `created_at` DATETIME NULL,
  UNIQUE INDEX `idtable1_UNIQUE` (`gamer_id` ASC) VISIBLE,
  PRIMARY KEY (`gamer_id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gameraccount`.`gamerdoel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gameraccount`.`gamerdoel` (
  `  gamer_id` INT NOT NULL,
  `game_id` INT NOT NULL,
  `achieved_at` DATETIME NULL,
  PRIMARY KEY (`  gamer_id`, `game_id`),
  INDEX `gamer_id` (`  gamer_id` ASC, `achieved_at` ASC) INVISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gameraccount`.`doel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gameraccount`.`doel` (
  `doel_id` INT NOT NULL,
  `game_id` INT NOT NULL,
  `naam` VARCHAR(100) NULL,
  `beschrijving` VARCHAR(255) NULL,
  `punten` INT NULL,
  `gamer_gamer_id` INT NOT NULL,
  `gamerdoel_  gamer_id` INT NOT NULL,
  `gamerdoel_game_id` INT NOT NULL,
  PRIMARY KEY (`doel_id`),
  UNIQUE INDEX `doel_id_UNIQUE` (`doel_id` ASC) VISIBLE,
  INDEX `fk_doel_gamer1_idx` (`gamer_gamer_id` ASC) VISIBLE,
  INDEX `fk_doel_gamerdoel1_idx` (`gamerdoel_  gamer_id` ASC, `gamerdoel_game_id` ASC) VISIBLE,
  CONSTRAINT `fk_doel_gamer1`
    FOREIGN KEY (`gamer_gamer_id`)
    REFERENCES `gameraccount`.`gamer` (`gamer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_doel_gamerdoel1`
    FOREIGN KEY (`gamerdoel_  gamer_id` , `gamerdoel_game_id`)
    REFERENCES `gameraccount`.`gamerdoel` (`  gamer_id` , `game_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gameraccount`.`game`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gameraccount`.`game` (
  `game_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `genre` VARCHAR(50) NOT NULL,
  `created_at` DATETIME NULL,
  `doel_doel_id` INT NOT NULL,
  PRIMARY KEY (`game_id`),
  UNIQUE INDEX `idgame_UNIQUE` (`game_id` ASC) VISIBLE,
  INDEX `fk_game_doel_idx` (`doel_doel_id` ASC) VISIBLE,
  CONSTRAINT `fk_game_doel`
    FOREIGN KEY (`doel_doel_id`)
    REFERENCES `gameraccount`.`doel` (`doel_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

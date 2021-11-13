-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema BD_PELICULAS
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BD_PELICULAS
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BD_PELICULAS` DEFAULT CHARACTER SET utf8 ;
USE `BD_PELICULAS` ;

-- -----------------------------------------------------
-- Table `BD_PELICULAS`.`PAIS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_PELICULAS`.`PAIS` (
  `codigo` VARCHAR(3) NOT NULL,
  `nombre` VARCHAR(50) NOT NULL,
  `fechaCreacion` DATETIME NOT NULL,
  `fechaModificacion` DATETIME NOT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_PELICULAS`.`DIRECTOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_PELICULAS`.`DIRECTOR` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `apellido` VARCHAR(100) NOT NULL,
  `fechaNacimiento` DATETIME NOT NULL,
  `fechaCreacion` DATETIME NOT NULL,
  `fechaModificacion` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_PELICULAS`.`PELICULA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_PELICULAS`.`PELICULA` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sinopsis` VARCHAR(1500) NOT NULL,
  `fechaEstreno` DATETIME NOT NULL,
  `codigoPais` VARCHAR(3) NOT NULL,
  `duracion` INT NOT NULL,
  `calificacion` DECIMAL(2,1) NOT NULL,
  `DIRECTOR_id` INT NOT NULL,
  `clasificacion` VARCHAR(50) NOT NULL,
  `fechaCreacion` DATETIME NOT NULL,
  `fechaModificacion` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_PELICULA_PAIS1_idx` (`codigoPais` ASC) VISIBLE,
  INDEX `fk_PELICULA_DIRECTOR1_idx` (`DIRECTOR_id` ASC) VISIBLE,
  INDEX `PELICULA_clasificacion_idx` (`clasificacion` ASC) VISIBLE,
  CONSTRAINT `fk_PELICULA_PAIS1`
    FOREIGN KEY (`codigoPais`)
    REFERENCES `BD_PELICULAS`.`PAIS` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PELICULA_DIRECTOR1`
    FOREIGN KEY (`DIRECTOR_id`)
    REFERENCES `BD_PELICULAS`.`DIRECTOR` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_PELICULAS`.`PELICULA_NOMBRE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_PELICULAS`.`PELICULA_NOMBRE` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `PELICULA_id` INT NOT NULL,
  `fechaCreacion` DATETIME NOT NULL,
  `fechaModificacion` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_PELICULA_NOMBRE_PELICULA_idx` (`PELICULA_id` ASC) VISIBLE,
  CONSTRAINT `fk_PELICULA_NOMBRE_PELICULA`
    FOREIGN KEY (`PELICULA_id`)
    REFERENCES `BD_PELICULAS`.`PELICULA` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_PELICULAS`.`ACTOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_PELICULAS`.`ACTOR` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `fechaCreacion` DATETIME NOT NULL,
  `fechaModificacion` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_PELICULAS`.`ACTOR_PELICULA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_PELICULAS`.`ACTOR_PELICULA` (
  `ACTOR_id` INT NOT NULL,
  `PELICULA_id` INT NOT NULL,
  `fechaCreacion` DATETIME NOT NULL,
  `fechaModificacion` DATETIME NOT NULL,
  PRIMARY KEY (`ACTOR_id`, `PELICULA_id`),
  INDEX `fk_ACTOR_has_PELICULA_PELICULA1_idx` (`PELICULA_id` ASC) VISIBLE,
  INDEX `fk_ACTOR_has_PELICULA_ACTOR1_idx` (`ACTOR_id` ASC) VISIBLE,
  CONSTRAINT `fk_ACTOR_has_PELICULA_ACTOR1`
    FOREIGN KEY (`ACTOR_id`)
    REFERENCES `BD_PELICULAS`.`ACTOR` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ACTOR_has_PELICULA_PELICULA1`
    FOREIGN KEY (`PELICULA_id`)
    REFERENCES `BD_PELICULAS`.`PELICULA` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_PELICULAS`.`GENERO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_PELICULAS`.`GENERO` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `fechaCreacion` DATETIME NOT NULL,
  `fechaModificacion` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_PELICULAS`.`GENERO_PELICULA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_PELICULAS`.`GENERO_PELICULA` (
  `GENERO_id` INT NOT NULL,
  `PELICULA_id` INT NOT NULL,
  `fechaCreacion` DATETIME NOT NULL,
  `fechaModificacion` DATETIME NOT NULL,
  PRIMARY KEY (`GENERO_id`, `PELICULA_id`),
  INDEX `fk_GENERO_has_PELICULA_PELICULA1_idx` (`PELICULA_id` ASC) VISIBLE,
  INDEX `fk_GENERO_has_PELICULA_GENERO1_idx` (`GENERO_id` ASC) VISIBLE,
  CONSTRAINT `fk_GENERO_has_PELICULA_GENERO1`
    FOREIGN KEY (`GENERO_id`)
    REFERENCES `BD_PELICULAS`.`GENERO` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_GENERO_has_PELICULA_PELICULA1`
    FOREIGN KEY (`PELICULA_id`)
    REFERENCES `BD_PELICULAS`.`PELICULA` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

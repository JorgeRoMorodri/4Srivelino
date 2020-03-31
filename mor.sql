-- MySQL Script generated by MySQL Workbench
-- Mon Mar 30 18:20:16 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cerveceria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cerveceria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cerveceria` DEFAULT CHARACTER SET utf8 ;
USE `cerveceria` ;

-- -----------------------------------------------------
-- Table `cerveceria`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cerveceria`.`Productos` (
  `idProductos` INT NOT NULL AUTO_INCREMENT,
  `Producto1` VARCHAR(45) NOT NULL,
  `Producto2` VARCHAR(45) NOT NULL,
  `Producto3` VARCHAR(45) NOT NULL,
  `Producto4` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProductos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cerveceria`.`Datos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cerveceria`.`Datos` (
  `idDatos` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NULL,
  `Nacimiento_Fecha` VARCHAR(45) NOT NULL,
  `idProductos` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDatos`),
  CONSTRAINT `idProductos`
    FOREIGN KEY (`idDatos`)
    REFERENCES `cerveceria`.`Productos` (`idProductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cerveceria`.`Detalles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cerveceria`.`Detalles` (
  `idDetalles` INT NOT NULL AUTO_INCREMENT,
  `idDatos` VARCHAR(45) NULL,
  `Cantidad` INT NOT NULL,
  `Desc` DECIMAL(18) NOT NULL,
  PRIMARY KEY (`idDetalles`),
  CONSTRAINT `idDatos`
    FOREIGN KEY (`idDetalles`)
    REFERENCES `cerveceria`.`Datos` (`idDatos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema introDB62083
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema introDB62083
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `introDB62083` DEFAULT CHARACTER SET utf8 ;
USE `introDB62083` ;

-- -----------------------------------------------------
-- Table `introDB62083`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB62083`.`marcas` (
  `idMarca` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mkNombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE INDEX `mkNombre_UNIQUE` (`mkNombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB62083`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB62083`.`categorias` (
  `idCategoria` TINYINT NOT NULL AUTO_INCREMENT,
  `catNombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE INDEX `catNombre_UNIQUE` (`catNombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB62083`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB62083`.`productos` (
  `idProducto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `prdNombre` VARCHAR(45) NOT NULL,
  `prdPrecio` FLOAT(8,2) NOT NULL,
  `idMarca` TINYINT NOT NULL,
  `idCategoria` TINYINT NOT NULL,
  `prdDescricion` VARCHAR(1000) NOT NULL,
  `prdImagen` VARCHAR(45) NOT NULL,
  `prdActivo` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idProducto`),
    FOREIGN KEY (`idMarca`)
		REFERENCES `marcas` (`idMarca`),
    FOREIGN KEY (`idCategoria`)
		REFERENCES `categorias` (`idCategoria`)
)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

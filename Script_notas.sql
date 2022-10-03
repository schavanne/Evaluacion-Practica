CREATE DATABASE `notas_db`;
USE `notas_db`; 

CREATE TABLE `notas_db`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `notas_db`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `notas_db`.`notes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NULL,
  `description` VARCHAR(45) NULL,
  `creation_date` DATETIME NULL,
  `modify_date` DATETIME NULL,
  `id_user` INT NULL,
  `id_category` INT NULL,
  `permanent` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_user_idx` (`id_user` ASC) VISIBLE,
  CONSTRAINT `id_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `notas_db`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    INDEX `id_category_idx` (`id_category` ASC) VISIBLE,
  CONSTRAINT `id_category`
    FOREIGN KEY (`id_category`)
    REFERENCES `notas_db`.`categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
INSERT INTO `notas_db`.`categories` (`id`, `name`) VALUES ('1', 'music');
INSERT INTO `notas_db`.`categories` (`name`) VALUES ('economy');
INSERT INTO `notas_db`.`categories` (`name`) VALUES ('art');
INSERT INTO `notas_db`.`categories` (`name`) VALUES ('sport');
INSERT INTO `notas_db`.`categories` (`name`) VALUES ('movies');
INSERT INTO `notas_db`.`categories` (`name`) VALUES ('tv');
INSERT INTO `notas_db`.`categories` (`name`) VALUES ('food');
INSERT INTO `notas_db`.`categories` (`name`) VALUES ('technology');
INSERT INTO `notas_db`.`categories` (`name`) VALUES ('travel');
INSERT INTO `notas_db`.`categories` (`name`) VALUES ('fashion');

INSERT INTO `notas_db`.`users` (`name`, `email`, `password`) VALUES ('jorge', 'jorge@gmail.com', '123345');
INSERT INTO `notas_db`.`users` (`name`, `email`, `password`) VALUES ('maria', 'maria@hotmail.com', '321987');
INSERT INTO `notas_db`.`users` (`name`, `email`, `password`) VALUES ('rodolfo', 'rodolfo@outlook.es', '984123');
INSERT INTO `notas_db`.`users` (`name`, `email`, `password`) VALUES ('vanesa', 'vanesa@gmail.com', '435678');
INSERT INTO `notas_db`.`users` (`name`, `email`, `password`) VALUES ('evelyn', 'evelyn@gmail.com', '987384');
INSERT INTO `notas_db`.`users` (`name`, `email`, `password`) VALUES ('bianca', 'bianca@hotmail.com', '335544');
INSERT INTO `notas_db`.`users` (`name`, `email`, `password`) VALUES ('alejandro', 'alejandro@hotmail.com', '220944');
INSERT INTO `notas_db`.`users` (`name`, `email`, `password`) VALUES ('nadia', 'nadia@gmail.com', '345710');
INSERT INTO `notas_db`.`users` (`name`, `email`, `password`) VALUES ('gabriela', 'gabriela@hotmail.com', '998230');
INSERT INTO `notas_db`.`users` (`name`, `email`, `password`) VALUES ('ariel', 'ariel@outlook.es', '776488');

INSERT INTO `notas_db`.`notes` (`title`, `description`, `creation_date`, `modify_date`, `id_user`, `id_category`, `permanent`) VALUES ('lorenm', 'lorem', '2022-09-29 11:09:02', '2022-09-29 11:09:02', '1', '2', '0');
INSERT INTO `notas_db`.`notes` (`title`, `description`, `creation_date`, `modify_date`, `id_user`, `id_category`, `permanent`) VALUES ('lorenm', 'lorem', '2022-09-29 11:09:02', '2022-09-29 11:09:02', '1', '2', '0');
INSERT INTO `notas_db`.`notes` (`title`, `description`, `creation_date`, `modify_date`, `id_user`, `id_category`, `permanent`) VALUES ('lorenm', 'lorem', '2022-09-29 11:09:02', '2022-09-29 11:09:02', '1', '2', '0');
INSERT INTO `notas_db`.`notes` (`title`, `description`, `creation_date`, `modify_date`, `id_user`, `id_category`, `permanent`) VALUES ('lorenm', 'lorem', '2022-09-29 11:09:02', '2022-09-29 11:09:02', '1', '2', '0');
INSERT INTO `notas_db`.`notes` (`title`, `description`, `creation_date`, `modify_date`, `id_user`, `id_category`, `permanent`) VALUES ('lorenm', 'lorem', '2022-09-29 11:09:02', '2022-09-29 11:09:02', '1', '2', '0');
INSERT INTO `notas_db`.`notes` (`title`, `description`, `creation_date`, `modify_date`, `id_user`, `id_category`, `permanent`) VALUES ('lorenm', 'lorem', '2022-09-29 11:09:02', '2022-09-29 11:09:02', '1', '2', '0');
INSERT INTO `notas_db`.`notes` (`title`, `description`, `creation_date`, `modify_date`, `id_user`, `id_category`, `permanent`) VALUES ('lorenm', 'lorem', '2022-09-29 11:09:02', '2022-09-29 11:09:02', '1', '2', '0');
INSERT INTO `notas_db`.`notes` (`title`, `description`, `creation_date`, `modify_date`, `id_user`, `id_category`, `permanent`) VALUES ('lorenm', 'lorem', '2022-09-29 11:09:02', '2022-09-29 11:09:02', '1', '2', '0');
INSERT INTO `notas_db`.`notes` (`title`, `description`, `creation_date`, `modify_date`, `id_user`, `id_category`, `permanent`) VALUES ('lorenm', 'lorem', '2022-09-29 11:09:02', '2022-09-29 11:09:02', '1', '2', '0');
INSERT INTO `notas_db`.`notes` (`title`, `description`, `creation_date`, `modify_date`, `id_user`, `id_category`, `permanent`) VALUES ('lorenm', 'lorem', '2022-09-29 11:09:02', '2022-09-29 11:09:02', '1', '2', '0');


    

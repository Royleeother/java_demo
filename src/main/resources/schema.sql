CREATE SCHEMA `picknewbie` DEFAULT CHARACTER SET utf8mb4 ;


CREATE TABLE `picknewbie`.`user` (
     `id` INT NOT NULL AUTO_INCREMENT,
     `username` VARCHAR(45) NOT NULL,
     `password` VARCHAR(45) NOT NULL,
     `role` VARCHAR(45) NOT NULL,
     `phone` VARCHAR(45) NOT NULL,
     `schoolId` VARCHAR(45) NOT NULL,
     `department` VARCHAR(45) NULL,
     `dorm` VARCHAR(45) NULL,
     `message` VARCHAR(45) NULL,
     `avatar` VARCHAR(500) NULL,
     `volunteerId` VARCHAR(45) NULL,
     PRIMARY KEY (`id`)
);

CREATE TABLE `picknewbie`.`newbievolunteer` (
     `id` INT NOT NULL AUTO_INCREMENT,
     `volunteerId` VARCHAR(45) NOT NULL,
     `schoolId` VARCHAR(45) NOT NULL,
     PRIMARY KEY (`id`)
);

ALTER TABLE `picknewbie`.`user`
    CHANGE COLUMN `avatar` `avatar` VARCHAR(500) NULL DEFAULT 'avatar/test.jpg' ;


ALTER TABLE `picknewbie`.`user`
ADD COLUMN `babysisterPhone` VARCHAR(45) NULL AFTER `volunteerId`,
CHANGE COLUMN `message` `babysisterName` VARCHAR(45) NULL DEFAULT NULL ;

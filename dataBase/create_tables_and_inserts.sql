SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `sisap` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `sisap` ;

-- -----------------------------------------------------
-- Table `sisap`.`tb_jogador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap`.`tb_jogador` (
  `cd_jogador` INT NOT NULL AUTO_INCREMENT,
  `nm_jogador` VARCHAR(100) NULL,
  `idade_jogador` INT NULL,
  PRIMARY KEY (`cd_jogador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap`.`tb_pergunta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap`.`tb_pergunta` (
  `cd_pergunta` INT NOT NULL AUTO_INCREMENT,
  `nm_pergunta` VARCHAR(200) NULL,
  PRIMARY KEY (`cd_pergunta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap`.`tb_resposta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap`.`tb_resposta` (
  `cd_resposta` INT NOT NULL AUTO_INCREMENT,
  `nm_resposta` VARCHAR(200) NULL,
  `cd_pergunta` INT NOT NULL,
  `sts_resposta` TINYINT(1) NOT NULL,
  PRIMARY KEY (`cd_resposta`),
  INDEX `fk_tb_resposta_tb_pergunta_idx` (`cd_pergunta` ASC),
  CONSTRAINT `fk_tb_resposta_tb_pergunta`
    FOREIGN KEY (`cd_pergunta`)
    REFERENCES `sisap`.`tb_pergunta` (`cd_pergunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap`.`tb_resposta_jogador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap`.`tb_resposta_jogador` (
  `cd_resposta_jogador` INT NOT NULL AUTO_INCREMENT,
  `cd_jogador` INT NOT NULL,
  `cd_resposta` INT NOT NULL,
  PRIMARY KEY (`cd_resposta_jogador`),
  INDEX `fk_tb_resposta_jogador_tb_jogador1_idx` (`cd_jogador` ASC),
  INDEX `fk_tb_resposta_jogador_tb_resposta1_idx` (`cd_resposta` ASC),
  CONSTRAINT `fk_tb_resposta_jogador_tb_jogador1`
    FOREIGN KEY (`cd_jogador`)
    REFERENCES `sisap`.`tb_jogador` (`cd_jogador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_resposta_jogador_tb_resposta1`
    FOREIGN KEY (`cd_resposta`)
    REFERENCES `sisap`.`tb_resposta` (`cd_resposta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap`.`tb_usuario` (
  `cd_usuario` INT NOT NULL AUTO_INCREMENT,
  `nm_usuario` VARCHAR(100) NOT NULL,
  `pw_usuario` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cd_usuario`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `sisap`.`tb_pergunta`
-- -----------------------------------------------------
START TRANSACTION;
USE `sisap`;
INSERT INTO `sisap`.`tb_pergunta` (`cd_pergunta`, `nm_pergunta`) VALUES (1, 'Qual a dimensão do Jogo?');
INSERT INTO `sisap`.`tb_pergunta` (`cd_pergunta`, `nm_pergunta`) VALUES (2, 'Qual a Engine de Desenvolvimento do Jogo?');
INSERT INTO `sisap`.`tb_pergunta` (`cd_pergunta`, `nm_pergunta`) VALUES (3, 'O Jogo foi Baseado no:');
INSERT INTO `sisap`.`tb_pergunta` (`cd_pergunta`, `nm_pergunta`) VALUES (4, 'Quais as Linguagem de Programação / Interpretação utilizada no Jogo?');
INSERT INTO `sisap`.`tb_pergunta` (`cd_pergunta`, `nm_pergunta`) VALUES (5, 'Os Objetos do Jogo foram modelados na ferramenta:');

COMMIT;


-- -----------------------------------------------------
-- Data for table `sisap`.`tb_resposta`
-- -----------------------------------------------------
START TRANSACTION;
USE `sisap`;
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (1, '3D', 1, TRUE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (2, '2D', 1, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (3, 'Nenhuma', 1, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (4, '4D', 1, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (5, 'Unity 3D', 2, TRUE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (6, 'Eclipse', 2, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (7, 'Tiled / Quintus HTML5', 2, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (8, 'Unity 2D', 2, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (9, 'Bomberman', 3, TRUE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (10, 'Pac Man', 3, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (11, 'Car Man', 3, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (12, 'Pica-Pau', 3, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (13, 'Unity C#, PHP', 4, TRUE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (14, 'Quintus JavaScript, PHP', 4, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (15, 'Java, JavaScript', 4, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (16, 'Unity JavaScript, PHP', 4, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (17, 'Blender 3D', 5, TRUE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (18, 'Blender 4D', 5, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (19, 'Sprintes 2D', 5, FALSE);
INSERT INTO `sisap`.`tb_resposta` (`cd_resposta`, `nm_resposta`, `cd_pergunta`, `sts_resposta`) VALUES (20, 'Não foi Modelado', 5, FALSE);

COMMIT;


-- -----------------------------------------------------
-- Data for table `sisap`.`tb_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `sisap`;
INSERT INTO `sisap`.`tb_usuario` (`cd_usuario`, `nm_usuario`, `pw_usuario`) VALUES (1, 'fernando', '123456');

COMMIT;



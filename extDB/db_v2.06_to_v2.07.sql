-- This is for those who are running the A3W database v2.06

USE `a3wasteland`; -- database name

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

ALTER TABLE `ServerVehicles` 
ADD COLUMN `AnimPhases` VARCHAR(4096) NOT NULL DEFAULT '[]' AFTER `HitPoints`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


START TRANSACTION;

INSERT INTO DBInfo SET Name = 'Version', Value = '2.07' 
ON DUPLICATE KEY UPDATE Value = VALUES(Value);

COMMIT;

DROP DATABASE IF EXISTS monsterdb;

CREATE DATABASE IF NOT EXISTS monsterdb
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_general_ci;

USE monsterdb;

CREATE TABLE monster (
  id INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  nickname VARCHAR(100),
  weekness VARCHAR(255),
  PRIMARY KEY(id)
) ENGINE = InnoDB
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_general_ci;

CREATE TABLE habitat (
  id INT NOT NULL AUTO_INCREMENT,
  map VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
) ENGINE = InnoDB
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_general_ci;

CREATE TABLE species (
  id INT NOT NULL AUTO_INCREMENT,
  species VARCHAR(100),
  PRIMARY KEY(id)
) ENGINE = InnoDB
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_general_ci;

CREATE TABLE monsterdex (
  monsterid INT NOT NULL,
  habitatid INT NOT NULL,
  speciesid INT NOT NULL,
  PRIMARY KEY(monsterid, habitatid, speciesid),
  FOREIGN KEY(monsterid) REFERENCES monster(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY(habitatid) REFERENCES habitat(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY(speciesid) REFERENCES species(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  INDEX(monsterid)
) ENGINE = InnoDB
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_general_ci;

INSERT INTO species VALUES (1, "아룡종");
INSERT INTO species VALUES (2, "어룡종");
INSERT INTO species VALUES (3, "수룡종");
INSERT INTO species VALUES (4, "조룡종");
INSERT INTO species VALUES (5, "비룡종");
INSERT INTO species VALUES (6, "아수종");
INSERT INTO species VALUES (7, "고룡종");

INSERT INTO habitat VALUES (1, "고대수의 숲")
INSERT INTO habitat VALUES (2, "개밋둑의 황야")
INSERT INTO habitat VALUES (3, "육산호의 대지")
INSERT INTO habitat VALUES (4, "독기의 골짜기")
INSERT INTO habitat VALUES (5, "용결정의 땅")
INSERT INTO habitat VALUES (6, "바다 건너 극한지")
INSERT INTO habitat VALUES (7, "인도하는 땅")
INSERT INTO habitat VALUES (8, "지맥 회랑") # 조라 마그다라오스
INSERT INTO habitat VALUES (9, "지맥이 모이는 땅") # 제노-지바
INSERT INTO habitat VALUES (10, "지맥의 황금향") # 맘-타로트
INSERT INTO habitat VALUES (11, "깊숙한 골짜기") # 무페토-지바, 알바트리온
INSERT INTO habitat VALUES (12, "기원의 외딴 섬") # 안-이슈왈다
INSERT INTO habitat VALUES (12, "슈레이드 성") # 밀라보레아스

INSERT INTO monster VALUES (1, "도스쟈그라스", "적룡", "불");

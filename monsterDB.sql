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
  speciesid INT NOT NULL,
  habitatid INT NOT NULL,
  PRIMARY KEY(monsterid, speciesid, habitatid),
  FOREIGN KEY(monsterid) REFERENCES monster(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY(speciesid) REFERENCES species(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY(habitatid) REFERENCES habitat(id)
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
INSERT INTO species VALUES (8, "잔존생물");

INSERT INTO habitat VALUES (1, "고대수의 숲");
INSERT INTO habitat VALUES (2, "개밋둑의 황야");
INSERT INTO habitat VALUES (3, "육산호의 대지");
INSERT INTO habitat VALUES (4, "독기의 골짜기");
INSERT INTO habitat VALUES (5, "용결정의 땅");
INSERT INTO habitat VALUES (6, "바다 건너 극한지");
INSERT INTO habitat VALUES (7, "인도하는 땅");
INSERT INTO habitat VALUES (8, "지맥 회랑"); # 조라 마그다라오스
INSERT INTO habitat VALUES (9, "지맥이 모이는 땅"); # 제노-지바
INSERT INTO habitat VALUES (10, "지맥의 황금향"); # 맘-타로트
INSERT INTO habitat VALUES (11, "깊숙한 골짜기"); # 무페토-지바, 알바트리온
INSERT INTO habitat VALUES (12, "기원의 외딴 섬"); # 안-이슈왈다
INSERT INTO habitat VALUES (12, "슈레이드 성"); # 밀라보레아스

INSERT INTO monster VALUES (1, "도스쟈그라스", "적룡", "화");
INSERT INTO monster VALUES (2, "쿠루루야크", "소조", "수");
INSERT INTO monster VALUES (3, "푸케푸케", "독요조", "뇌");
INSERT INTO monster VALUES (4, "볼보로스", "토사룡", "화");
INSERT INTO monster VALUES (5, "쥬라토도스", "이어룡", "뇌");
INSERT INTO monster VALUES (6, "토비카가치", "비뢰룡", "수");
INSERT INTO monster VALUES (7, "안쟈나프", "만악룡", "수");
INSERT INTO monster VALUES (8, "리오레이아", "자화룡", "용");
INSERT INTO monster VALUES (9, "치치야크", "현조", "뇌, 빙");
INSERT INTO monster VALUES (10, "파오우르무", "부공룡", "화");
INSERT INTO monster VALUES (11, "도스기르오스", "비적룡", "수");
INSERT INTO monster VALUES (12, "라도발킨", "골추룡", "용");
INSERT INTO monster VALUES (13, "리오레우스", "화룡", "용");
INSERT INTO monster VALUES (14, "디아블로스", "각룡", "빙");
INSERT INTO monster VALUES (15, "레이기에나", "풍표룡", "뇌");
INSERT INTO monster VALUES (16, "키린", "환수", "화");
INSERT INTO monster VALUES (17, "오도가론", "참조룡", "빙");
INSERT INTO monster VALUES (18, "도도가마루", "암적룡", "뇌");
INSERT INTO monster VALUES (19, "조라-마그다라오스", "용산룡", "수, 용");
INSERT INTO monster VALUES (20, "리오레이아 아종", "앵화룡", "용");
INSERT INTO monster VALUES (21, "리오레우스 아종", "창화룡", "용");
INSERT INTO monster VALUES (22, "디아블로스 아종", "흑각룡", "빙");
INSERT INTO monster VALUES (23, "볼가노스", "용암룡", "수");
INSERT INTO monster VALUES (24, "우라간킨", "폭추룡", "수");
INSERT INTO monster VALUES (25, "바젤기우스", "폭린룡", "뇌");
INSERT INTO monster VALUES (26, "크샬다오라", "강룡", "뇌");
INSERT INTO monster VALUES (27, "테오-테스카토르", "염왕룡", "수, 빙");
INSERT INTO monster VALUES (28, "발하자크", "시투룡", "화, 용");
INSERT INTO monster VALUES (29, "네르기간테", "멸진룡", "뇌");
INSERT INTO monster VALUES (30, "제노-지바", "명등룡", "모든속성");
INSERT INTO monster VALUES (31, "이블조", "공폭룡", "뇌, 용");
INSERT INTO monster VALUES (32, "맘-타로트", "난휘룡", "빙");
INSERT INTO monster VALUES (33, "나나-테스카토리", "염비룡", "빙");
INSERT INTO monster VALUES (34, "베히모스", "마수", "용");
INSERT INTO monster VALUES (35, "레셴", "없음", "화");

INSERT INTO monster VALUES (36, "브란토도스", "동어룡", "화");
INSERT INTO monster VALUES (37, "버프바로", "맹우룡", "용");
INSERT INTO monster VALUES (38, "도비카가치 아종", "비독룡", "뇌");
INSERT INTO monster VALUES (39, "푸케푸케 아종", "수요조", "빙");
INSERT INTO monster VALUES (40, "파오우르무 아종", "부면룡", "수");
INSERT INTO monster VALUES (41, "벨리오로스", "빙아룡", "화");
INSERT INTO monster VALUES (42, "나르가쿠르가", "신룡", "뇌");
INSERT INTO monster VALUES (43, "디노발드", "참룡", "수");
INSERT INTO monster VALUES (44, "티가렉스", "굉룡", "뇌");
INSERT INTO monster VALUES (45, "브라키디오스", "쇄룡", "빙");
INSERT INTO monster VALUES (46, "얼려 찌르는 레이기에나", "풍표룡", "화");
INSERT INTO monster VALUES (47, "안쟈나프 아종", "뇌악룡", "빙");
INSERT INTO monster VALUES (48, "디노발드 아종", "류참룡", "화, 용");
INSERT INTO monster VALUES (49, "오도가론 아종", "흉조룡", "수");
INSERT INTO monster VALUES (50, "진오우거", "뇌랑룡", "빙");
INSERT INTO monster VALUES (51, "홍련의 솟구치는 바젤기우스", "폭린룡", "빙");
INSERT INTO monster VALUES (52, "죽음을 두른 발하자크", "시투룡", "화, 용");
INSERT INTO monster VALUES (53, "미친 이블조", "공폭룡", "뇌, 용");
INSERT INTO monster VALUES (54, "얀가루루가", "흑랑조", "수");
INSERT INTO monster VALUES (55, "티가렉스 아종", "흑굉룡", "수");
INSERT INTO monster VALUES (56, "상처 입은 얀가루루가", "흑랑조", "수");
INSERT INTO monster VALUES (57, "리오레우스 희소종", "은화룡", "수");
INSERT INTO monster VALUES (58, "리오레이아 희소종", "금화룡", "뇌");
INSERT INTO monster VALUES (59, "이베르카나", "빙룡", "화");
INSERT INTO monster VALUES (60, "네로미에르", "명룡", "화");
INSERT INTO monster VALUES (61, "모두를 멸하는 네르기간테", "멸진룡", "용");
INSERT INTO monster VALUES (62, "안-이슈왈다", "지제룡", "빙");
INSERT INTO monster VALUES (63, "라잔", "금사자", "빙");
INSERT INTO monster VALUES (64, "진오우거 아종", "옥랑룡", "없음");
INSERT INTO monster VALUES (65, "무페토-지바", "명적룡", "모든속성");
INSERT INTO monster VALUES (66, "사납게 터지는 브라키디오스", "쇄룡", "빙");
INSERT INTO monster VALUES (67, "격앙 라잔", "금사자", "빙");
INSERT INTO monster VALUES (68, "알바트리온", "황흑룡", "빙");
INSERT INTO monster VALUES (69, "얼음 칼날을 찬 벨리오로스", "빙아룡", "화");
INSERT INTO monster VALUES (70, "밀라보레아스", "흑룡", "용");

INSERT INTO monsterdex VALUES
  (1, 1, 1),
  (2, 4, 1),
  (2, 4, 2),
  (3, 4, 1),
  (3, 4, 2),
  (4, 3, 2),
  (5, 2, 2),
  (6, 1, 1),
  (7, 3, 1),
  (7, 3, 2),
  (8, 5, 1),
  (8, 5, 2),
  (9, 4, 3),
  (10, 5, 3),
  (11, 1, 4),
  (12, 3, 4),
  (13, 5, 1),
  (14, 5, 2),
  (15, 5, 3),
  (15, 5, 6),
  (16, 7, 3),
  (17, 1, 3),
  (17, 1, 4),
  (18, 1, 5),
  (19, 7, 8),
  (20, 5, 2),
  (20, 5, 3),
  (21, 5, 5),
  (22, 5, 2),
  (23, 2, 5),
  (24, 3, 5),
  (25, 5, 1),
  (25, 5, 2),
  (25, 5, 3),
  (25, 5, 4),
  (25, 5, 5),
  (25, 5, 6),
  (26, 7, 1),
  (26, 7, 5),
  (27, 7, 2),
  (27, 7, 5),
  (28, 7, 1),
  (28, 7, 4),
  (29, 7, 5),
  (30, 7, 9),
  (31, 3, 1),
  (31, 3, 2),
  (31, 3, 3),
  (31, 3, 4),
  (31, 3, 5),
  (31, 3, 6),
  (32, 7, 10),
  (33, 7, 2),
  (33, 7, 5),
  (34, 7, 5),
  (35, 8, 1),

  (36, 2, 6),
  (37, 3, 1),
  (37, 3, 2),
  (37, 3, 3),
  (37, 3, 4),
  (37, 3, 5),
  (37, 3, 6),
  (38, 1, 6),
  (39, 5, 1),
  (39, 5, 2),
  (40, 4, 3),
  (41, 5, 6),
  (42, 5, 1),
  (42, 5, 3),
  (43, 3, 1),
  (43, 3, 2),
  (43, 3, 5),
  (44, 5, 1),
  (44, 5, 2),
  (44, 5, 4),
  (44, 5, 5),
  (44, 5, 6),
  (45, 3, 5),
  (46, 5, 6),
  (47, 3, 1),
  (47, 3, 2),
  (47, 3, 3),
  (47, 3, 4),
  (47, 3, 5),
  (47, 3, 6),
  (48, 3, 4),
  (49, 1, 1),
  (49, 1, 2),
  (49, 1, 3),
  (49, 1, 4),
  (49, 1, 5),
  (49, 1, 6),
  (50, 1, 7),
  (51, 5, 5),
  (52, 7, 1),
  (52, 7, 4),
  (53, 3, 1),
  (53, 3, 2),
  (53, 3, 3),
  (53, 3, 4),
  (53, 3, 5),
  (53, 3, 6),
  (54, 4, 7),
  (55, 5, 7),
  (56, 4, 7),
  (57, 5, 7),
  (58, 5, 7),
  (59, 7, 6),
  (60, 7, 3),
  (61, 7, 7),
  (62, 7, 12),
  (63, 6, 7),
  (64, 1, 7),
  (65, 7, 11),
  (66, 3, 7),
  (67, 6, 7),
  (68, 7, 11),
  (69, 5, 6),
  (70, 7, 12);


# Join
SELECT * FROM monster;
SELECT * FROM species;
SELECT * FROM habitat;
SELECT * FROM monsterdex;

SELECT * `name`, nickname, species, map FROM monster
  LEFT JOIN monsterdex ON monster.id = monsterdex.monsterid
  LEFT JOIN habitat ON monsterdex.habitatid = habitat.id
  LEFT JOIN species ON monsterdex.speciesid = species.id;

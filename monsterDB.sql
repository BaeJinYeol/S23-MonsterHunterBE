DROP DATABASE IF EXISTS monsterdb;

CREATE DATABASE IF NOT EXISTS monsterdb
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_general_ci;

USE monsterdb;

CREATE TABLE monster (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  nickname VARCHAR(100),
  weekness VARCHAR(255),
  icon_address TEXT,
  image_address TEXT,
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
INSERT INTO habitat VALUES (13, "슈레이드 성"); # 밀라보레아스

INSERT INTO monster VALUES (1, "도스쟈그라스", "적룡", "화", "https://i.namu.wiki/i/FHKbV-rfYCoPZ4bqYRIu9jyNdtsV5EzJfMdxFzg4GosNBRWv1Ow7Y6tXB11BpaZUiQcZgdNDVPrHK4N7h92kxjHPCIUHLS6nMWqt8e0GJLipWUophvPnAsjmVvmaiX3vxivvMy9-sDjt8J7k4L9gJw.webp", "https://i.namu.wiki/i/c1c_FDuty8b0xgGIy4VZFQ9_SFSj99-liabLZn1M4TBbZHcEgpPQdxBX_OTeAQlyo4P6NTtaEKt-87FC4xnT20UwgQqueEHPULiAjtCatbE0bAAZXvGgNeFh-HAlMQQ5eXx1bubBMhkbdHl8w8s2lg.webp");
INSERT INTO monster VALUES (2, "쿠루루야크", "소조", "수", "https://i.namu.wiki/i/JHwOEtVSLhosl6UideoJlkkOESI3hANxebqFBobutXZcFSqMQiaJ3foeJUjREpg4XbsxBjuAD5TG11f-3p7GnKsWUes-nGZx_JKjoxIOULMUe_zBY0r28kHsRej1iGNmYvUeYryZZ0jov5qb-S858Q.webp", "https://i.namu.wiki/i/mKDH0oIr2uR0y0-oS1N9HaXRBTJCqpOqj4RgIQHexithuWJZbYO-NAUjRa-GahDgXFFXqDPCtDO69MCBkKCRckBl2JftfeqGmDdLmuXosM6OSVLracJMAZNoMcBzm6KsUPf-EDViKM9vzbzQC07P-g.webp");
INSERT INTO monster VALUES (3, "푸케푸케", "독요조", "뇌", "https://i.namu.wiki/i/arH3d6g_vEVEmkHj3ciTOyilFmsfARF9h3Pgwrl1rZ1wrkAbii8yfdgaS6IjP4ykheKoAuynHw-gnS0e_kg7omzpX2MGCs09lqz88_xPsI_kQGhF80ob96jEJq5z_DJHkVPQ10B0POeI3dH4iyv_lw.webp", "https://i.namu.wiki/i/YQuervAso6ID1uST3rZt2_8OIzu_2RvThvDsQI_ynYKygnZGJ_qE1LVAcAIpmvpMg1aTY6yoGCQqwRLpWrrv0tG0egrZMYWLxF8ZnzHV8o0zhpeALBT98KS87POt0rzxr8PI3FdGZqwvXpDCgHg_4Q.webp");
INSERT INTO monster VALUES (4, "볼보로스", "토사룡", "화", "https://i.namu.wiki/i/Kj0rm8P37TVCG5Gu6bfuOH6CedyY8Sk9Bl29w_ZGxTiZnYQW6PPS24sfR0fRkkTZA5YGZUa3uXrV6qm3dVZyJ3FK07sxf-kxcaHBIadGKUlp4W9jGfwye-mNa4iZmBabt7aXXsvyyhWfCOyWE3-jHQ.webp", "https://i.namu.wiki/i/vZTsOKRPM9r3a3YUBRNdyCn0J6mx6nwilqnJ0pc9CYdaqDmqsXqTC7EI13NzJJPDsoGiRsDZtcxuIJicS8o9QK9BbmcY5Cs-H0XwtSEqyf0vAx-l9D0e90yhmGF-_Wha7JSXw7zI3YJCyYqqbplrnA.webp");
INSERT INTO monster VALUES (5, "쥬라토도스", "이어룡", "뇌", "https://i.namu.wiki/i/iFqopIjJhajUpZ3NLxJcqRgb385vDoiTsGD4rnUxpU1HGNjd6UVZoFp3ytR5OhPsI63LDsH6yw9l5TICFHFR-KdtWyHnI7posbioDTIHUL_lRsOfY3DwRmCnTHwFONGFKWaglCZGXOAfkzHOTsfbQw.webp", "https://i.namu.wiki/i/i3H-c26zgYK_bF8nhvZvrxiaiQy8vJgSHmC2jBDuTPj3WUv80kDToPcsd1Kd7tj5Btzv1lPcrlq6V9cFK6e19lalLClF_yiG2hjt3j_7AhXRCWCLOCACZo3hxQC_ZLcXbEnUoVnWGzskuKQy_olWsA.webp");
INSERT INTO monster VALUES (6, "토비카가치", "비뢰룡", "수", "https://i.namu.wiki/i/eY4GucszpqncIuraeheMSftw51cU1vQUxCk4e5V-6KqzRXJwhtbLD4t6PrEkqMFqmx1yQT3Wet8c0xsoCM1BI-ruzJWueVbY9pve62-xy--iGwqdxMQgMHTJobb7ZNEJJvzfWKTTLy_cmYKKf1XInw.webp", "https://i.namu.wiki/i/Wb6xNePlG9t4dNreQ2lXl83RnumD7DvCjZLcrGw2hUWpU1nTtwZOmQMXGURlUjIHbkl7nDz2jHleeCTnyZmng2y06CK5RViUaWRc8LbdZXH88K-phWFrG-oe9RVV2Konc2PUMGtdjTP_bCD5X51RrQ.webp");
INSERT INTO monster VALUES (7, "안쟈나프", "만악룡", "수", "https://i.namu.wiki/i/IhIjohEQxF0izae0oUnrtBjarKnOlQinG4KchcIGCOg8nM7LkVXPi3UPHEBMAOf1WOj77NNs5z6IkuysMgr7_497KGmmf9txRmxnBGchEHJtFlT8-or3LgqIANcZ9_7iqu1FCnYwcu0wz80j_BN_DA.webp", "https://i.namu.wiki/i/G-PGsjFyhJ5WgiYfEzmLYhLxkk5iRtWmQVTjdFHyuR7c1k4OzCjKxYOp69wVgP8wPlJDv1jsQAhDTk6spEAjH_aaNtJ1-ox0lFFe5sXSBAy13bmNBc_gXde59heMFA5PJK0P7dU1dcxXScsoJSUowA.webp");
INSERT INTO monster VALUES (8, "리오레이아", "자화룡", "용", "https://i.namu.wiki/i/8hcH1Unk4H4aupWXwi7ASHxfyZW-Y-NBHInPX3h728NVSrhdwRtvECUgJBGCQpPUPw51bPEsmchCeq-kM0WqhgsPnFkM_MdvX44xn_lxtwiOHcjslZrTaV7ZWEXE0xs8Y6FKZlLJWembdz8pYZXT_Q.webp", "https://i.namu.wiki/i/d-arVqyg1cwfr5Tgz-gIZCcF2O9AZCnjGICplxOTvgSLQXa1dqg8Bp4XWNuevGyZ37M69Ylq5RU6d4XoX7H3FXZU_og5Y4j8K-RKAhDPshTe_8uIuDRgzTkonK_FlcNvZ1HZ21MKp1F6O8qyfTjyVg.webp");
INSERT INTO monster VALUES (9, "치치야크", "현조", "뇌, 빙", "https://i.namu.wiki/i/mlxC9l-no2nyST0BwmVeZiA1S3phn4hhZT8JRI61YdGCgtawcGgbuZycHlZAJHX1resqOurCOb9VxpYTLdeyrjuo8X7qBEoV63orqRxipEqcwKCqATXCsDMRjvqtYNYnUK6ve21C4U0JcJXfcJbj-A.webp", "https://i.namu.wiki/i/dSiHSy_J6YsWqSQQCQaVr2cJY7fWjBQ_d0s_3FAm9FyEIhS4stpGEfjFBwLMO9VKQ7S2RJNgYGVdLgsrek059PK0gCj7jIP0hlgz0IUsi2i5qiuAJj2W4foYPe8sHP5Vl3Yf3Gpx6l5O-E85ZSSzhA.webp");
INSERT INTO monster VALUES (10, "파오우르무", "부공룡", "화", "https://i.namu.wiki/i/Kh_xou2AennnyODPnjLROeNZMrnweX2vwhwWEFr_Hk29ihf5C6mTkusMLziLv-5sVVkSkAT3GGiS9-5p7FRm3B1VS4YtF4ZdYP9hgJMt3t7g2Z_y_W_lqQ6PxB0qrDqxpXip44EBo1ZhQ4gmfe763g.webp", "https://i.namu.wiki/i/IY05gEAivbH0lza8GlCt-TpYeDq2zUMlG94laf6L54KDqZq9GuPGYI9SGg2rN5-I4d2fI352w3cVMIzc72LZCBo4N0G7fULMLgdxFSkY1X9v-gS1JfEQLcIzGmc2yJm3ISfyGGE-JjE5vAgXekNnBg.webp");
INSERT INTO monster VALUES (11, "도스기르오스", "비적룡", "수", "https://i.namu.wiki/i/ZzsMfr_QthtfHDLFqHLi08_B75bCgO5uJWuNEoCt1PgK-Yez58F-5a_6IB31zgFXRqXg0MVD9P71LkQWhzXWkoaqXpYzvak4we112HO3JZbjItRT2bgDy3wNH1PraEQQZzlhOe9ZJ86BdAEr99jRoA.webp", "https://i.namu.wiki/i/fRnCKuW4eulklGH0vqe582FAJKoakVYDUq0u2D5DhnLq2QmIMDDsERHiP-z1S_unhsStQkyTDi1RlFF8zm1W9vkhOJjj_HVXE0Ba9Nx5mqm7hgbjmC2YVALNPxV6Yg7OT4l2Q3zXQ34jLbCPtoCbxw.webp");
INSERT INTO monster VALUES (12, "라도발킨", "골추룡", "용", "https://i.namu.wiki/i/B8YYfFtn1z4fwZbVa6FEWjNTgq5A8yG_f8VNfKxfpjI2-lIs7hbly27zW6eLCgABNvJeQnZQ01cX2W3N2lpLoB3hibkkxK5Z0HZj5jPhwQ1lslPkcEBitesBEQDeUKhtHcEDTxkleJhcApKq95CWbQ.webp", "https://i.namu.wiki/i/g99s9_J1PkMphxmmzxOoy6p7TBRlc1fWjits8rKo7neHQEWCDdMAWwuY79G02g2TiWpWHPE8l5nY_m3M9LrwPQkorFn2lsOliDfpqJk14swhBIKLZRbX38CPQTMw-lGAa7l34MLOETN_niKFd_v4wQ.webp");
INSERT INTO monster VALUES (13, "리오레우스", "화룡", "용", "https://i.namu.wiki/i/FnEhhrvZJeezimdXvGDSdqbFNXaZblEwR5GLGI6UmS8fcgixCzkZ0qGnjWRn_UaSkVBcKr14Hs4Z4uFmBY5vujf0Q-UZ7451oqQIbwRY_MluzTsq92kDSOmYFy7hQrPZzGUyjbstTTgEt_1F1gZUDQ.webp", "https://i.namu.wiki/i/IgGHIXaem4Zum3ycYbAXiK6FPeClkMpbHnmuYuNx3z-s6Rt3gpq12xEQUQ-mzQeV1buFvmXmvMI2Km1KxQndYHgWmp8KA4ScW49vf6Yfp8nzAgVmpANd36OhgtxqzOrZlLqn64P8Yw58DAczZJ7ukg.webp");
INSERT INTO monster VALUES (14, "디아블로스", "각룡", "빙", "https://i.namu.wiki/i/j_01vB-BFETQJBwkfBv88BJ6KL-OvEJbvxwEPHe4Aa1iUxaH3zeruU0CC40iJ0FkKfPerpypAMWIu-7Fz2KWdo1tpWrVeoqQLQ1nOP6fSV2eR9PxJs6owkdOXSa21gguIRDgC6agVk3cIRe552kUyw.webp", "https://i.namu.wiki/i/mblmBgMYEpbYTNaMVC5jd_V2gcIGyu6SSKO49JmF1eT45j_1c23-OQ-HpPLwzH8p4djvHxj09bvanr1Ga1nDpvnf6ymYQ7iMNIXoCb6UHsJIyZrF5s1Kb8nzwKyGPsgo87iiPztOpuIINRNaBQVN0Q.webp");
INSERT INTO monster VALUES (15, "레이기에나", "풍표룡", "뇌", "https://i.namu.wiki/i/Fpe2TiNYEltWwIMBK2cEAvBi4wTM5RHvdkOAP2OowD4HQqkXRwUc5CY3xqxBMgc7MuNWtL3OGew0v2h6oiHs4iVGCfLn73zKsS9TwznE5N883eUD9_F8PQ_MG2d97ZOFVdBqNPLfzq3OGaa5tn4ViQ.webp", "https://i.namu.wiki/i/PWsZD_oQMMNUNtLl0tW1HJe9zZ1fun7tQJbOC0P6jeBpL3xMMvKsLcLjrO5orpf8_A-Mi8AGM3Yf9jLMCD1-Bw9LXJVN1CNxNB3TkNkMsJ5xkHlVCob2yArtqg7jTTh-mExB-UgaMQ7i-h81KUpvuw.webp");
INSERT INTO monster VALUES (16, "키린", "환수", "화", "https://i.namu.wiki/i/Do_xp9GkPbBefLzb_d-PA1F78-7krkxbu1w-sXXl_Iu8pqM5APLAqySCMC7aI_G0g42NsGECCRpDt3xncCWJHmwFg-O50dEOvP9PjsTsiW__nfr3BHfvwRw7YqgKmGVwoLgA5IhzEpCW4zb_Zxt2eQ.webp", "https://i.namu.wiki/i/g7wpoP-20YP15D301PItjJielYVSXstU-iPxNJUzaVCPkBjEvDvHpfySFI6TwGCZ2hsoQ3vGDbtPSUKeejfAgH57WWRkhD5GlOL_r-xlmCgU4Caitv58NEu_xC4mseJZfXhJNWs4CxFcNelViqqEyQ.webp");
INSERT INTO monster VALUES (17, "오도가론", "참조룡", "빙", "https://i.namu.wiki/i/qwbM-YmcIpWYIeCb4jJrMyDQae36w6StIw4s1Y_CmXpul_mPDcfOhp_DfR7HC-8NtY3A3-w7o3tXi4Kl_E-Ue4Uiko6SMNnXj11IfszgPHCG1hG9Yhmo32sVHs5HMjSqxakrTS2dmWZWtvJrSMqnig.webp", "https://i.namu.wiki/i/D3ZcZXrjMzJXVoxoEZvCDy-3vO7xRG2p7FKBm-zmUrHQ5BDbJlY45c1eZb4Mi2YecMGpVSG9ExKN911jtyXanJbp7T-XG_InMNrMEOUMPHc-J3ulOF3KXu9v4WZKkM7mA0czAb94agMiovZcPWRaLQ.webp");
INSERT INTO monster VALUES (18, "도도가마루", "암적룡", "뇌", "https://i.namu.wiki/i/csKQG0KOWRBYhDLRjmyq76dHLibRgQZF0DGhyfgiKdc-gfMdQV8j3jH_3EJlK5oo8e7H8LvQq1MqbDW0hSjl9WB_VlfrRB_i7GJ3vxb4ATHRpkWv0oXxSGyInqcR9eBtviNGbi0AsOWCAss35InweA.webp", "https://i.namu.wiki/i/9Ac4cboEAv0fH81uyPnbE9_fTww6GGT8WtU0-jNsRclDHKwBxrm1O3JKLjUHsl3piF4GGtftWRlWQ8vvC2p_SPQsxVOVGMI1bd7WIot5tQQd_hblCTW8-nwwWs04JvVMFEt85z8h_hO-DON7YNYgyg.webp");
INSERT INTO monster VALUES (19, "조라-마그다라오스", "용산룡", "수, 용", "https://i.namu.wiki/i/QCBGul7kDznBuGNMi8R3QSQd6IHM5Xqa5V2aciMsFPD_tCytlN3L7dpHDB7B5N3SxxhEnQtfyg8jYCponpvEHlON_84PMYLZadwiNQ7jR4WhaHBmO9RCD7O7uBzt1AvbMEdr-VE85khWGanyAndM6g.webp", "https://i.namu.wiki/i/fdZwdMHhD5MYn_wGUDd75tl1lpUbb_DQYQ95txFJT8xwLdqcOP-DVIhXadwYSypjVcvJqtmAL_VQrBxWXUspeT7YnAnyxlrBJ7vrhM8WuL4RT0uToDylUI9MxZek7aqvZq6EWsLCZPRXtNom_2Y0wA.webp");
INSERT INTO monster VALUES (20, "리오레이아 아종", "앵화룡", "용", "https://i.namu.wiki/i/pJOXeGmFc9b2Cs8-yEKwK7e-EfJYIptmmwgeCeLJbB5xz4Pw06MWQQ_w_EM5BaCf0Tj5UTAKkiCXmYh_YirnZdpdJavaBSaHf0afFZ3Ps4sjkQ5Vimkm7Tgk2ImiGdzBiZEc2OmCS9mxQnJYJ0Iz0Q.webp", "https://i.namu.wiki/i/edbz_Tu3ury-_B-YQxt_aK84zsc83cSqmiwUZyKHGoawZBUNzVWgbjf5xzFdwXIIdrIP2_Y8WxbUo5qoQmm3u8CQXquPDGWwN5OePCEpLL-PpxvRysnjopQ24V-I_25HEfvGB1mp_4zhwpF38h8XhA.webp");
INSERT INTO monster VALUES (21, "리오레우스 아종", "창화룡", "용", "https://i.namu.wiki/i/9aP93Peh9cB9magoMdR5qIdYZX6UZU6VrSjYXh6l4Z7_gzBPiC337a93mdZW9bgLrOMSwFvQeVvIJ8boMQ0QHmJ_pL4-WfRjp8j1tAKFivGjsFgF0NqK1ZU4JvowrlkWjajeiQ5AEdgH5gwBFYavFg.webp", "https://i.namu.wiki/i/ifzv9a0gHIdNsCcYTft8gf5Dcrk06w_rmwNbkiMnpuwDvhiFbOw0CnTi97f21b5f6x_eEEk6tJaxJBMGF82LyebnNvqewh6lvdsPjltSwSigGPuCzhGGYuOHe13G-OdQ04y7kNerscmtwU81vZnVLQ.webp");
INSERT INTO monster VALUES (22, "디아블로스 아종", "흑각룡", "빙", "https://i.namu.wiki/i/Soc-qd3CCwDqd-QrlQnBgFNNL9ua2dCN6LBlk0LBYpccHPLsMeXEohzp9AnqX_fKatRobphmKMoh_4LYskAgHJ8ZOktR0rSPRQdZfKJpgc6cPcYhjJMjt0vssUZCZ6wKN-JrRnB3KbyDv1OXG3YGbA.webp", "https://i.namu.wiki/i/Wkx7l3W06WUqQOki61fThM7Hdjc-nUSkgXJ7qdCv2gr6BaumN_apNiEZgZJ5CSeADUq8JF97POFaDs4DHEuB0siD4i2jxEy6imj3qpQB1CR55fSJ7PZyQSxCWZtnqeTphZp5Mm3vxI0SxNTc-2yYYA.webp");
INSERT INTO monster VALUES (23, "볼가노스", "용암룡", "수", "https://i.namu.wiki/i/uAdUbRECD6v0Xii6qWKgJyJc2_ZNj3uCHh2dhmgo4CU3PoMyw-OgOrJc07Q2srp3oqGruK0-u3Al-RWxPIEDccwv_t8WwdUSd3OnxMBgkXIIR2CMLxCB8w78Hmpay9D9jiEhHgxazwPzCblrnnLFhw.webp", "https://i.namu.wiki/i/EiN7i_ME2_A6IrZsB_DUQ5sleUA4bVXfjB2xQt8INDaab-riNBeasLo8z9taoYO_FsIx5_axlC8tdGrfNCqUGZqgvll9st7o9-DNIJ5qZZHSQSbUUz5v9TbxC_fNYYX2CX1U8NUwuf7Ep1HFdOTq5A.webp");
INSERT INTO monster VALUES (24, "우라간킨", "폭추룡", "수", "https://i.namu.wiki/i/_5YUIjRSR3wkOiW2LQ5PIcIQpRbuIyNMtRcfMk9pZ4-1LifCzXSHoB6mCrYZoCfWjW2Amm77mEY0P2w6e6EfzP-X-zfR2qBirHeWwNM2AyQfBRRTg1xWMJXehGiWu5f3cZGUQP1Q5RHEke1cszTKJA.webp", "https://i.namu.wiki/i/5h81EV7UeypH_jEhWTxLeV6b5Tsa29hg7ZBLtaMq6HFiRJUcu7Srr6KkI8oQ6KeVvme66vVGyOsmYSshKN5svyR8yGl2159gN6JtIQx85_i3_PRg0kMQO2iuwTujdMgVca2pVYTgM91iIaOjEvDPrA.webp");
INSERT INTO monster VALUES (25, "바젤기우스", "폭린룡", "뇌", "https://i.namu.wiki/i/HVqJCtK6-UqWSAv36vtxzqnurCoZuSYwMf7MJajSvpY5YETPbREyCeBLsH25yMMBsrh9fYUcpjfl_ZbrKj2p3k7yYXO-pj_sW9eEDW1210np2o0bB65bfyeL7vxI62t9Y3XpXsJrttr5XU2Mn0Ru0Q.webp", "https://i.namu.wiki/i/TVxlssOCV0hbBNU9QaAhbfY2wKsm-KmTeenZHhfThy5NXJ4AYjxfCtVNomKZLnGl2MTTEGX-lpzxMRNCHgAoOYqFKzcEq7O02Mm7CtyDSNL1tb64yMawWjFmqayB_m6q8VNGI04RGHajhNvJn1PhVQ.webp");
INSERT INTO monster VALUES (26, "크샬다오라", "강룡", "뇌", "https://i.namu.wiki/i/s-5ZufDJVztj-YUCg-jfOCnUJcVTpthD4vyoBX9O02KPPxRy1HcA1quEng-Q-IChYpTzdpbr74NfqBPYqTBD1dU45JekxZUgFJoHQwNl72S1rtgfTeYg-tvZpkpI5K6iLz9dpEWm1t3qhr9xyE0lDQ.webp", "https://i.namu.wiki/i/p_2OdAmERGnTofH6qebFjynHmzg0kBwr1NVPX7R1spii9GAyC1xr8Ptv7yPE03rYHRg7RbiVBtX5HaX3B2bXPSzEg7D2S8pN4_HVL3xtePNSzrbbyQ2g7PzS0PmjUNAZEWqRft9nT5wDXeNXFeNJ-g.webp");
INSERT INTO monster VALUES (27, "테오-테스카토르", "염왕룡", "수, 빙", "https://i.namu.wiki/i/hN9HcFHDoxVVpwrHmuaTyngRn1JpN_ap5tXe3GLlsd72MYMVVcf8wEK8pfpB-scxc9uqWTwYFAijtWOv2ks-TV4Kh6LgsFDzPdgrdUBrIfOHoFe7Uaik59mN519N4DaRPyo1yJyZ19IB08WD25SrPg.webp", "https://i.namu.wiki/i/OoolBT-n0_qBJpwYsf0V5TycZ5Ef8LuKNY1geQ1waAI869iES98EEBc10qzPqbhm7i9566-TgWdZS_uEBagKlRJ_DoAED1pn9NV3eH9AgaYwzFg-uhOIka_dZeatbcToVII_h_t__J55-GSaZ_1Osw.webp");
INSERT INTO monster VALUES (28, "발하자크", "시투룡", "화, 용", "https://i.namu.wiki/i/z3kvJTEfoglOjD292QfFUixYiz64BipdEZrfSRbJTtfPrzf9DNFw1yLB2Z7OmEUNA1U4UTl0Tjo9wJ-jxSTrsm7ssbGQCZtQ1-M2IqrkK9woMhNkbhfzVfoms3nFnTJ9lHY9wtAP6YxArgK3KusBLw.webp", "https://i.namu.wiki/i/68hy3ASCQYyqW0gVmfueXXIvgaj-FxFd-ZIuqGRM6iR7aW4veUFa_i5TD6nTggxswTwzxc01bgQetTbDjeEDneVZVB6gn7gnYB0sNKpEKCrPKiLwkd7wJ1c82xLZtGNBug52Gb5QDpF3XqaCXvL_Rg.webp");
INSERT INTO monster VALUES (29, "네르기간테", "멸진룡", "뇌", "https://i.namu.wiki/i/BKsvZfuSw1_UOe1eZ_p33cZCCQILobtLlwt8Pso_TxhJ26ILHCAbip_09LTwOeCX6O3nvwcsuNseSHROZ7YxpAt_Fpg0R4khgLIh3Feh-fu0yVF2OfUJsetFvWbOGMOsYvkyLC33htM0MfBGRTpvqg.webp", "https://i.namu.wiki/i/39f-waW1MFDeYSsJpUGIn7jQsUy4mGrNcI7jklOjO-jd_GXM2e_80i25ANixERkEoy8DhhNkCvHXeZFtKyr-6c7QY0NXHUEJQhCUD-qfN2J3QAuvHOKbvb8uzkC-EFqgY1vXYsp4mcsklrYMVDwqtw.webp");
INSERT INTO monster VALUES (30, "제노-지바", "명등룡", "모든속성", "https://i.namu.wiki/i/1sdHWfboGBzbsDg9LZnGNQb01iMgSqrwNqdkL2sGBHii02-g2Co2_jHWtdqUVsWYRFynR2U8b5fzhw9stRTdI_Lh324sqaHkoSgnf-uMf4GtY5Vu56qXeHsx2ao8g07Bhr0dNcVkORRQ8v6cflSMhw.webp", "https://i.namu.wiki/i/Aq-8lwFCDbR4J3XteAEpnmjG_0o4g9Ff47Ib19k-CtmjyRB8VSGmL0g5U5h4ljEllYbrHDkKrxXB5jJTxlzK7NvHF8_oTXmibQ7giIlB5b_2AcTxaUeMk2OFL9v9E92OX2ZTqQc4pPDfI-QxWPhyPQ.webp");
INSERT INTO monster VALUES (31, "이블조", "공폭룡", "뇌, 용", "https://i.namu.wiki/i/iYV-PGNEmKSjB7eIvUMifMlQk9AWH9gvIy9BCUIlUxBKjVGIhEtXEgbv639G5TqP6leUOWCBJvXVaqYxg8k1k6-LR8tGyIL-N9QsQm3mxh5ufnc70VanIyWjTH-YoXB_2EQSNxkBk48Xg8UCh542NA.webp", "https://i.namu.wiki/i/FNkrkUrTJZAECKnMmHnHy7gYEvF1sIRjKsQPOTPi7NI0SZP2y26hapbsDZzmBTUeTFQ5XyvI9cTg3dF97DJVYxD4o7MePV2ZTVRzMjmiLIDMa1vYGkMOMOmIQ7E93Z9Te7ocnSJSAogGXK64MHaRyw.webp");
INSERT INTO monster VALUES (32, "맘-타로트", "난휘룡", "빙", "https://i.namu.wiki/i/6QH0OzOpnENJbF2KYCFvCZkxCbfP-avQU03z-hH5pq-YFtbGnRcI2ODQwk2ODhPcB0a43tUCyPm8CkDtxKaktH3i5IgIuzsPEDyKRJf0yAMbJUMo7zlrLvUi1NUQQEvmCcMoh7h1tUK51g3ZMmxK5A.webp", "https://i.namu.wiki/i/3lefasHlGE7a39VFuRx-nVkVkXDtE0zsp0GLT4SoaRuUlIWjSh5lBGm9Gxswf-ZgdkYEDPlSfJb-5I4owLSRQ360wfdf6Y8uO88d3fYnQ3TG6_KeP4rW5mfTCGSd6yM1dsI9N24ciPKCqKRv3c4fqQ.webp");
INSERT INTO monster VALUES (33, "나나-테스카토리", "염비룡", "빙", "https://i.namu.wiki/i/U4ig0zHLREntAnp821U-mVSZoZAlA7aK_Yv9I1Sa_Xp18ttAhu94jQ0ICfdYUsyaKEiW8cKbbv0BdlxKeezsVK9ywkk2vBbDbZoXDTJIiIQu1AFNsXWCkUrIqCF0uASnBoCCmoS9AaWdkOpkD65OUw.webp", "https://i.namu.wiki/i/R0MFB3GFHoHvAIwCoMbSN_GVvKitvV7SYX1ktSXBoAob0gNGX2oaCXtB2xaW4kWBfXmALNvzudOWjmsXxgWMg3ctDsEDrPGtQNRDubqrYGwwDbPMUh5bmRpmPOOfjdRy6HKvSCZRQyI1GcHBM0R4HQ.webp");
INSERT INTO monster VALUES (34, "베히모스", "마수", "용", "https://i.namu.wiki/i/OE_-SpDDSES3yKkqQbbGBGVFcjn1CB1AsvE-KxGLqPLjGFPHrLDoRvdBr3YWF_suLvMpHQ4K5Ke2D8KEodbOn1BAGOJtg2oxKjE1RyF6XpdK5YaG19I9h8H0jpfJA2hEdobAQ_VY7wNm9zn_ZQSTWA.webp", "https://i.namu.wiki/i/7RkCp60z9HmULIOCS9PEbFK8iY696rJL-fqF1Mhi6D3bHUqT_UCg1h8dn3WeWarkkZcPn90dcBBl2k2myaUyYSXHvgQQCuXsvxzSK3KecnDar5JXtPuU3YyPdxt0oMr7--8B_TkLriaApGexmSEXLg.webp");
INSERT INTO monster VALUES (35, "레셴", "없음", "화", "https://i.namu.wiki/i/pff0jtJ4ccpy0OkaYDpKBO0l7Y6ZGkJuteErESu-f7yYFFcGXQVovrWket6AkDMcoJ-18UN0V8JysmJyi4ZsUAUvsFYWiKZNrwq_RcI6Y0WkALzpt_DTj0tZaOK84u2RobBT1-ewSBIgGRTtHm_J5g.webp", "https://i.namu.wiki/i/gagu27D7OgbFgCt6HChoEO2Cw5NOtxkDjfpa9KXI7-YvAkg4qP4-q4T6g_LZAe9h9F5gGgqFMWuaMyzBQ6g2TonwxlWZgyLzRRo2OLHxkyeR1QKnlQJDUai3EQxd4pRDT5Gj0RDatmZVjct4da1mDQ.webp");

INSERT INTO monster VALUES (36, "브란토도스", "동어룡", "화", "https://i.namu.wiki/i/TXJED1_YlE47adVosOqqI9_im4fW0CrRTwSSLCp3zTItjoxsAVmzclqZ2-6WTzZLDOI9IALCMIhPmxcA1T9tUrmq63A7h2TR0qCdf4MStNxnd_P9Mz7J9DKNO58PHyP-tzeIX8skJCi4w58JWgiClw.webp", "https://i.namu.wiki/i/QZFoRiNrwGZonOw4nMR9taTUZCB9IMRoLmxy40uBs0bU49_tN2h8fn3y0kOyraJeod3WDoKoOm7SYT2rDB0HCQ70EaaRZGB_nwiByfS4UCiTpAsih08Sg6phSy8H9a9mPy9PUOg1qgtqjXrhSDzHDA.webp");
INSERT INTO monster VALUES (37, "버프바로", "맹우룡", "용", "https://i.namu.wiki/i/bz3pr7zuDJOo-yasevqCPuYaHc4qi3r4aUmuN3sG1gLbSRy1l8tuTBfom_yBQFFXoL-pVJqseeOE-62E4lykta62BM8_q0S3Cl3HIuP5evq3SEmUOIwyouUk7m16OiNQZ61HnsOIrwoMN4vOwWlY7g.webp", "https://i.namu.wiki/i/oRtTTkqgJ6oSIZ_UzLM-8vGeQSZi0-2jOFws-Njzo5nXN99cQArHJDDzJBiQYaYlhgd8o2HJ2m5zpwwKfQGa68LGDuoarVcrVYZTmyqIpOSBppZKyQuyfwz809wYbQb37-aFV8YLUh8gkK_slh76hQ.webp");
INSERT INTO monster VALUES (38, "도비카가치 아종", "비독룡", "뇌", "https://i.namu.wiki/i/iprUVwmYeG0vBT5nXEr4jK1gA2eGGR5jVt9UQHKrNiLZmk_niyCmjQerQ9_O7FO_JoFArFXlbXijcmK0xREf7Y9kB8M29GQuO4p3DQLHuBi_qv9p9etgC6AVP5tsKI1SxuUyn4V5kCS1VVTS_-rHaw.webp", "https://i.namu.wiki/i/b1EwFu3BcU5ODRLIi0oJV6Ns3VsoXUu4Dsok2YmaSqe4QN2ZtMPhh6MZaDF53tP0yZ08qYdOdfsVzijwQCIyyPFeTUig8O1vLvdOmIp_PVyokNskTHAFqiE33I-_h1fxfzpnNG4h4Xtq7lvqJEySGA.webp");
INSERT INTO monster VALUES (39, "푸케푸케 아종", "수요조", "빙", "https://i.namu.wiki/i/hdGj61DqIxF9I_acKrKo44SAdRSjCIIJkAvO0JhDAGoDDGFuH-sJ4Ps2xIgQoF8z0Qp-kKrixn61xCEM1A71Ysj1_jThKIdJvmrL3EJ1kK2-hrv5YPDgEimF_3naNdlBelNjWO-WbmWaCCvDBphdww.webp", "https://i.namu.wiki/i/too20Egu75G03aiE4Vk33Z12p9cK0atX98YC-QFShIdrOkKTFHJC8TCP1f63QBknkxfvv2_vGqkDOKTPO2SYQ80--KqcDCx-4Swqs0CUo007vpUlfuJkhDPpjbFx3wDAs-CJXOtmvjqKN1S9akSFAg.webp");
INSERT INTO monster VALUES (40, "파오우르무 아종", "부면룡", "수", "https://i.namu.wiki/i/gpz_9OTHpoIJCMYtyTYf_m9N3qhO-s1aR1Lma-zs49jIWLwvDWfNPokfVu2pN4txS_v0DKaFIqIjR98AzI2ulJyASAAty9RBK_HnPD7GCrWI8PuloHg3TmPsSATu4k6rOgOvpCpAB_aHB0APS-IVeg.webp", "https://i.namu.wiki/i/WICv4ZVkq-9O676dq3Chd-0nxuJ7ayQDdb3rX7pgucWLEezafcHYE1EfIUWxpMCbCpAGWAhcQ1Musj2v6edff2xzxxFj0RY00zAALiekGbRGCtvhD-zVlb1kzzu1AbUK4BSZC7pOR0xhNti54Fp6jg.webp");
INSERT INTO monster VALUES (41, "벨리오로스", "빙아룡", "화", "https://i.namu.wiki/i/uZu2LcJ3HYQpg8xnVoPxEUyYLhyE_3kyXd0sS49JE7BRVQ6B2fKdW3ZTo_Mq3VfnDim80omuwF1sNFf8b4jD_4JhF_cuJEX9i6HrcMD1oHBONAZ3gVOClBTv6SC4gLZRR4RRe7nG6FuYJuyVowMSWg.webp", "https://i.namu.wiki/i/lSMG_6ejmP9aUwzV6NZsdb1dA-wNBGl2z9f78IJVXkimzUli7WKWutrSgWKjnjTyfoPgxdGgEVETueL2YETh3vcNcFabr3N5JWGAs3KWD1XSrqcD3lKdX-UxwtLxaWib6OfOR0RMQI8Dp2k47qAZkg.webp");
INSERT INTO monster VALUES (42, "나르가쿠르가", "신룡", "뇌", "https://i.namu.wiki/i/hvzmMpUpmZylI-8xDBH3NrhNrl23YlGzr50tLQ1OJqbgTqjJtocdrCDTz6uHDziC_fhA4IvLUfIO6VlHu8VsEO9aGYEv3BP5995ayi6e5Pg0jXFZO-LN5o--AlzxUkWj1gegfT_5hYhBxceuXmjoeg.webp", "https://i.namu.wiki/i/lCDTAd3GYs6boA3KrSwY6bqwc8KD42YHsfIZELui0FELZ6wS3eYfMh8-tDw0oIuqTed-JsYvuaroC19JrJqniS7NehMRy0ZJB_NQZ9VocKWtm_J9AzahBpE3SOpprOZ_sBlaBGdy5xZYOaYtb6HFdQ.webp");
INSERT INTO monster VALUES (43, "디노발드", "참룡", "수", "https://i.namu.wiki/i/vvIeN7rs-HvRxdHQq5oeuIzlSOH5maaXVpOGRMMubRbPOVditz-RSuOIw2h4UBIZzkrB0PlSvh9sCdhevh95TP6Q-hQGEdf5JrB1_yBgKcSBiVs3tTNBuHwNoYjq6d26SIxlFwiPrL-heO17OvyTJA.webp", "https://i.namu.wiki/i/2GeWUJhLuXd_EZvEfoXbeQsJHPZsrQnfx4LqUWrkABkYxYkhkFueYl4MEW-1VmV2bIdwRc1Pu4GUO9ytRxO4IxjYablhk6zIsG9dZ7kVb8ORN2kvXeCLJBmPRB2iaP05f84vcL5t-Y5Wvtu5AyAjvA.webp");
INSERT INTO monster VALUES (44, "티가렉스", "굉룡", "뇌", "https://i.namu.wiki/i/Cq2NlpSeKR1cEwS_Cq-nTkWUJJMPmgFU2PskNPmMPyco6Cfg30Uu9t-iy8OSN5K6R-JYY1qUq26ng6zkvshwQkD6ZQOXhhsCZmcuChVVfLynEl46gLdvFUnU1e4ieSTYy5nqIOX0JwPw2N44ZG191g.webp", "https://i.namu.wiki/i/ELx0o06mLnJJlYr35PM0BjOHVS2ZuMZpfO2o2esEYpUsw_aRVicfq7xuEXU2hshotNmpH1q4nV_GZS_l5djb-15br5BWwyVMUPFiDlqX0YjUf57gYPQBTHQseIwIQOjzBwlfHEmswRap1Fudmqgf5g.webp");
INSERT INTO monster VALUES (45, "브라키디오스", "쇄룡", "빙", "https://i.namu.wiki/i/xYzrbAgziTl_XOkzvqWUyiRnftbnontzBTpIQ-Cp2aX9nZFgz9lh3IL9Wx0RZqf2ecpGEViiy_W4eKivg0lEjoPci2EWIlfGm3GMGuQoQwFcB5XqLuhB3vIhWYxnt8iV0piZqoHm6bmuXOFBth2nWg.webp", "https://i.namu.wiki/i/2v3jlz3spsXdpja3-ZUd3aTlMIiZxUw5Jmr6lIsZ3E4Fo3-pX_-6FZ5e3cgpBQnojCvzSoa_q3y33CbbNSWpbsWX77_oJSyGtR3jm1a_jsqGzVs54UVu0EDGlVexOvpbscBN5FMSW2OTfnrZ7jMPLw.webp");
INSERT INTO monster VALUES (46, "얼려 찌르는 레이기에나", "풍표룡", "화", "https://i.namu.wiki/i/wBUhunC8uS9jRbwtneIsmyeMTC7E-i2oTSvwQpkY_M4xEDecqUNk2ZNb0401USKsB5jeHTpdq1fIX_EkKUwrH4r-GAXR6tOzbsQVt1lwlx0iPjbLG1yo8b3l7O_xfZPd0Rj1d-zPEAIFRfL5BYM1og.webp", "https://i.namu.wiki/i/ehnPnr9p8-8dysjVp-FIhrJC0ZyfmxvCn090e-jdqoksa50M6MYFly4q9kAFe3lhZ8rDnRwRwpcGQM6D7_JIHSK6IZmXHenbaUitMwnItNMB0376Na-kqI0TS3OZ1Zb5OnFWk-elQahCqkdY3qxH8Q.webp");
INSERT INTO monster VALUES (47, "안쟈나프 아종", "뇌악룡", "빙", "https://i.namu.wiki/i/wWB8JzSpT25Npyq10VyGnTzFLTH932E1kiBydjuJASppSANxXIup_GHNf3LXOWcRck02ApNN9OAAK9w0RrowGCbTjbsNQeO6F2oqXvsug8l2o2otEa2k_KXTeV5IvPTeUXLscCR9q4nylgXopGtQlA.webp", "https://i.namu.wiki/i/q3y8e4piVcOkpTJHKUc8XUiLhr5Uxcu82o5qdabvxmqV_aSTw0MK1_YpJm4Gq3R12mGVkJsOjXrSLYkCXlQFL05sDNLeoWdvA1rKBhxuCyWUMaciKVXADlNEaYUTdFLiM18R2GmW73xBlfWribX--Q.webp");
INSERT INTO monster VALUES (48, "디노발드 아종", "류참룡", "화, 용", "https://i.namu.wiki/i/mxGx5Rkzb47kpPLE__HM_7nohU3nUwFgwnrxTSTVE1cW9jRhYEjgStHzhNiVQv4NZM5EZkaGBSZjY6xOHtgAtHEN0PXGcWINgg7za2sWZebLz5UNKIYkU37GzlcXkVh5w2gbq-PBpZkP597IosyW4Q.webp", "https://i.namu.wiki/i/q9JfHjnlDlaAc2iNCafaOYkMFYDjqigiy6D8qnuQeG96LIfsB0nQbvbHZdxD8bwkD4v9EdkWCEVxFb2TTZA0ntG5wwUlpL0j4QoHPRRicOH7AGEM7n1rpCr-XtfjGfjimDuwzhDaUFylb3utZ8CKSQ.webp");
INSERT INTO monster VALUES (49, "오도가론 아종", "흉조룡", "수", "https://i.namu.wiki/i/bFRFoS6d98S8Oco9UbqD7xOoT63u-LxVamnSYPR0IEErY06N2gNsQ914eI2Stn_GEixibaOle2iBFiUfPGgpG6ciHKv3zaoGKfo4IaVb8eFnAtL4l7dfBKxWY7o4EkN29JPD8gDy7rJ9stmEowoTwQ.webp", "https://i.namu.wiki/i/wl-XOmlMV655fnD1DS-PMjurgV8sJgNp7SslFTCzoZisMxXpTOCSQnASPMwRveFh9eWXH1aLdSSqBy5DET_HZOdO63dbremrHJ1Et5CAkx53w-qLTX-m9Nh38O1OeXdTd52E2WuJjPXiaEyYbj3B7A.webp");
INSERT INTO monster VALUES (50, "진오우거", "뇌랑룡", "빙", "https://i.namu.wiki/i/wKk3_mcHAcnV_EkE74qlvG5aP6Du8woqTKENOLnkrT_6o6l3RQph1cADMXRPLcFWswv9OIhkG5oSgKUfZ1XObzrbWoEvm4OIIHzFQqLN9J9J0fxbmmba-l-REigus0WxTfEnl5VxGDq2MFhbmt1CMQ.webp", "https://i.namu.wiki/i/4_y1lgLiJMzhenK07CjTbDrGl8gWpZ-jD_hGy03NAFAGt9RoMKGHZtWIixbczKHGqm0-XiYOgxCqen6H1cUawgHFbvrT0Qa31Je2oV58ynMFeTaxKRqkvI84snne2EcUzHXwox80hs5PwBkL9tMrtg.webp");
INSERT INTO monster VALUES (51, "홍련의 솟구치는 바젤기우스", "폭린룡", "빙", "https://i.namu.wiki/i/ixmkPUt6ILqEoaBUG2k3sQs9M5gjM-V-2VoRgKAP0zj6hEWPXSZM6cjGFdDKPsWG1IReoH6S7HNbh2tHvKYzOh7KGJK9YT0OKSwl6B72VpjGCZ9hZbwlNYG2I09Coi-DDgv2GAq7hUFG3rrJ3lYRnw.webp", "https://i.namu.wiki/i/OxryizO08lXSe_YSK_gXryh5rL-NtGv4O6L3i_aYdbXibp4Dw225C7KM7SHBcp342gPATBkAJouBv_9S6cLY0yF9_UPTjrlz42gUZAZHY_u4GpUbjFOEE9V1-XJKh3j5axj4HDRrWbNPH2hKsWrGEQ.webp");
INSERT INTO monster VALUES (52, "죽음을 두른 발하자크", "시투룡", "화, 용", "https://i.namu.wiki/i/YqPTmwKTDLJabLbVBp2NEIhJVNbYkKTPMRrxjdDJgDtF-b9JmwUyGAkpefw6BaOD9F-lTU5VHv-AU8f8NjKPHq-TkYt8hsM6t-fMPAB0_i9VvGWERb4P_gfB_Y2crNWvkgL3r_qAUXyGJw2f08JDng.webp", "https://i.namu.wiki/i/Pns1M4ln0Q5JelxiGrX1vPtt9EFcFpGUNrUanoePduUFSbDJKFAf4MFcUInCfMz4iSvdfRNrDpsCWYfEg3cxDVKiBQJWvSPL8sCeYljBJoQsgxImyskAuksDQCIXJrajq1PSks5yGU3DGnuqO0ZFyQ.webp");
INSERT INTO monster VALUES (53, "미친 이블조", "공폭룡", "뇌, 용", "https://i.namu.wiki/i/hUjRYhEXQM4_L_69oV9F0At8y7_hfHADHVnDyfPOSW3j4j0IiD5QIJ3aGc35C3SwnUOhWzVl_y6V-dagwHZChl3PLJJgrz4Go9lm0mqqNuVHbTTKueiuZDiUHowPvRIGWZsZR9SjstGQPTgan_LbXQ.webp", "https://i.namu.wiki/i/fib-RRL6C7jfxW3q6KA1GkIhpZfAllOsuSpscjfHIPJJ-hbaW2GhRMMvlr8tvJHEMFny-WYTGJC161wqRDwNcFrzXTFckQdUx0Ug2Wuc82qTDZvWOklTudh3G2kD_wNHjYLDmhfV7z0Fy8uQ5ea3jA.webp");
INSERT INTO monster VALUES (54, "얀가루루가", "흑랑조", "수", "https://i.namu.wiki/i/WhHzoGniWa5vkrp_-qhtqO3h7RLRyhVxjnaufG24INCA9lnXpqPX3AgB6jpmJ1sjXZ9opqXYOq56OpvWsyvlXmL0ePt-FNVSN8MBOrJ2bhOa-TqjqpChmudPymaDDZA39Dt1SwE3oE172sJnyWYWAQ.webp", "https://i.namu.wiki/i/CrPnrblc1-ruvPyOSJcbEA86rT1W_n2xZqZFirCbXgBlZymjqP41J_KRMjH9NHrBS7huxnmrR98weDY6c7egf2zNSN-HeteJcW4F0UlRNiUdCPrpZ9-JruL70u-Qzz7SNHnxvtIHiMOKzf1qkRXj0g.webp");
INSERT INTO monster VALUES (55, "티가렉스 아종", "흑굉룡", "수", "https://i.namu.wiki/i/NQlJllUMb-gc8ddojOwSyQLzo0QBO_oplwrhjcCc2adee-M7lIK7RxB63viZHsI7njHj-mtwqdSsWza2jWqSdEMB159GFyOAwtiKXp1AfF7hGnVYN22pw5nfn-9imnJDfNP6lFRfQFT6f9zNOxl5GQ.webp", "https://i.namu.wiki/i/tOM793LzmjK69bckPauTNlnxJJL_35cAL5srm2lIWKIrVa7csZ8s7cW0gAyXwultUdfydja3AR8QiXOkalUtGnqvGWCqaEDMjl5wm1WcM8p6HiS3UB48uliHcsFcE24z6cMpNfL2VMvenyhdVCJ6Ow.webp");
INSERT INTO monster VALUES (56, "상처 입은 얀가루루가", "흑랑조", "수", "https://i.namu.wiki/i/3vEWoMy-26wKdEHQIkv3VBQu8RgAQ6stmm3msz6o3HFAxrLZxfEEvWkn7hjvvxKRXHvcVLiZ1sQeblr65YlL3yUXBGkvWbTjhP8IPW7Cw82YwucGeBvKq3n_LEGJ4uFnznTtPki9U1ZKzvYSYs_Tdg.webp", "https://i.namu.wiki/i/d4evFVlyPhgaIULemb1EvFR-97p3KBbX_iIlWdSnkj1XgGTJJGSB3tcA7s7eBKYpztaFpGjjSy1kgHv-z4qjYJQryQpJPupCny0U4uCzpQvYg3MZcKgGH7zOG9oPo9bv_Ht3pHeEgJpM9bzE5xq1SA.webp");
INSERT INTO monster VALUES (57, "리오레우스 희소종", "은화룡", "수", "https://i.namu.wiki/i/DKTeQx3Rd5SODcazJPh0oZXLBJarteFyeXthimfKV94xpm5PKCScVazRu8zvcxUSUEVpJqF1J1Hat3VSQ2mKl7nF0wMD03WfnT1eA6bCItZ5eNFaGC2IWbaJYHYJSsSfHHe58IbQxrken1nenbNVQg.webp", "https://i.namu.wiki/i/UQRz8S8fi2ZvS55GZuczW2xAFQN5mQuBLTtUxuHOrjQw6Bt1cL65JxCPri9721nfV1n5BbHTLQ62HvhkBdkoJu3HMi6OaW74taeD8MswTD7sP0MdQ5LAaCBwp9JDs_fXaQ1QWz0dVJX8_u0J6Txp8A.webp");
INSERT INTO monster VALUES (58, "리오레이아 희소종", "금화룡", "뇌", "https://i.namu.wiki/i/P5n17bT7OIoMjI72_4gOoxTzx841vIiCJXEcCrYAxyjRPCI6-GxN5q6f10GFHFqOU5CKOvsOhrD1PjYxgDvATcHzxtjJFKDwPEwNlplkbO0I_0tfrjQR2zVK1vMC0PHK-zPc5Fb0KUYfNslqh2p9Fg.webp", "https://i.namu.wiki/i/vHeuILWzT4g8SlzO6qwLF-2Q8REcy490yYztzHtwCk9x9-FQYZPbaTNKY1R-gQnACdzG5SFfMF0K6Fij13dFN7xeDnMDHbBcE2OrfwvbSbcsQGqgZTROv8Tan_bLsOgkuhctUOTiYI7nTnKJiuFdgw.webp");
INSERT INTO monster VALUES (59, "이베르카나", "빙룡", "화", "https://i.namu.wiki/i/0bqKbxIcKXPoSy1PoFVJnKVQyEAikoTIk8cjMN3CuIrHAgOtRgQYhn4hs8MxHRNX932GFiNKgOfEvQME8S9Mzc4unCxVOY98apYO_yLRc34GhY-iqxdFA-7r6Lp58MvIwdS6FJBW_LAIpBRlxPlstQ.webp", "https://i.namu.wiki/i/1HgdSIIsF5h2GPmYy2TZDHg0uBFAizgtnkRYkw6Ax0alS5sMBCIYtGPNzs8yoaLkU0xcd_61nri_iTUR_ghFUoDGOr0r8AAXSEXXhPmjnwdZzLaKiHKIbZiaK46MXa45BYJGUfmOswRpTW-pNiu5Lg.webp");
INSERT INTO monster VALUES (60, "네로미에르", "명룡", "화", "https://i.namu.wiki/i/wVMk-ZBSjSCeWFQfzUZTYeVJ6Bw_n-ysrNZUJ23TVE0N-6ocV1vnI9ZGr2czt2KXno56G7AOEyKDSTNWGJ3GbywNjEMiPkh6xJR8BRSfAv6sQvWs6hq7Fk3wDhsqQ6BhQ8RuvS0OG1G0LE2rsDpuQQ.webp", "https://i.namu.wiki/i/lymrwM29jtZDZKP_29vGIAWA5UCrUGF5NWx8DGCRYDlhjn_Tu6hLUNrDrYsEg0WIPCQWjjMN_V_rjd6HD1ehQsHn6OoYRkyC49OfFeHQkXW7VUFL3Tti-m3DtyaCqkanX1gagDxkBaQaYv1pN0Cg8Q.webp");
INSERT INTO monster VALUES (61, "모두를 멸하는 네르기간테", "멸진룡", "용", "https://i.namu.wiki/i/WAozThsUQy9PEO_FiXTrkaycSCnp0vae4LCi5-WYXhIrnhEHngCGG6ckIYUUXGJANRcfkBZJxauNach-OJVZBdT7BYdaiiRKNpzW3BkxxpTeGcKB923_5SV6Z-VncQAFlpbdd-b5BuDyyKQX9Mhe0g.webp", "https://i.namu.wiki/i/h1N1XDk_y6lFwCbQ0B0HI1SLxyKAOlojM7hdkIzrkaDRLCq4sR4BP3rxKZibg0rcq65AcwUtbQbU_epsQIc9gLHaUyKhBPCVBcLqb5qADOE7gGbix8IbzFV1NvlZsPSzaBlMFHLETimf3MPmSmfGXA.webp");
INSERT INTO monster VALUES (62, "안-이슈왈다", "지제룡", "빙", "https://i.namu.wiki/i/2O1ZEPKetBkoLD1wgwt5a4jTM-GVw6RQDvF6-6P3PshwIwBhsPFNsREPFg1r54aYtlB2Vl2y1O8L8z2GvQmj_TgFUSqXx4QGFo6RnE7lIlcjH1f7bWmWTGQMaFtAHQRL9KluWa1Jnup8ankOHvpNng.webp", "https://i.namu.wiki/i/oZpilPAxAf09mPiqjekI_OIJjcGFOWw6-fS3Ys957B6VSH7K7NzKQQHkfaE9b_nRyNzsOSPGCLZKusN6yXrR29w0uqhSMeYCIqeKtEU0d5XSYSo3vlZipDw7uISReHMngCmjP2ETj4PHaM1qiS-r6Q.webp");
INSERT INTO monster VALUES (63, "라잔", "금사자", "빙", "https://i.namu.wiki/i/rq64Xp4U5Y5RNqOqZ75ZxpGSnCyT79MViZ-Fsp8EjkT_Epsv3DCPiO6EuMIIBxFrYv0WKQCrqH4szwOr2OG6P-GafU1fmAeR5oyLSIiXopF-3YJ5KosFpluArjYu9WDMM9fPWWYlePtnORkRReyWIA.webp", "https://i.namu.wiki/i/udgPLMD9wM06zwsSvMxA0lsHJ_0kuvDvrX36d5uqwRyBlxn-uFxtImKfEOZzIbtik-IZDC1i6ev07JRzO5e7fv3BmPf31Hgu-gzl0fRYW59MBKCSKZMYo4l6Mt4-9aNWcDUZDdp8tH0b5sz79LLtKg.webp");
INSERT INTO monster VALUES (64, "진오우거 아종", "옥랑룡", "없음", "https://i.namu.wiki/i/LqMkqz3EwIr2_5infosRiUTyH4GBOXwsbQukHPcS22SAupFlUpWDg2zk0H5wozE52TKccWMpVUneHSmopZpGVKYTuqTlYQb2JignE6hQsGKCGmo0uHHhsdTefIMRtC7tiuXFzwyVDaaJU51asA20Tw.webp", "https://i.namu.wiki/i/DVm9TBjX0SlA9wgMtKi2-0L1uhGAKgf57hgG1ue74uICnyHA1oEbu6m536Dg1nGrNw3aw4keGxlFln5ae0xFbZdQJ8MqVlyIo1oIBvxhSo_7K1UwtnAYTDVDaIfqyGpJ5dYkN67A9l8Cf1FIjWGmPw.webp");
INSERT INTO monster VALUES (65, "무페토-지바", "명적룡", "모든속성", "https://i.namu.wiki/i/WwnkS1jqPoERqLdqKIDCjW8IkVQN0mV3jp0_XCFZdT5H92gbfGBpObMfokj1rVAlygfys_0afJUwdaLdmc1RZfbolKio4hC2H8HlrZP_37bRcgNw4QxPIiafmBeUVkvgHVKB_Ov_PRnRr3BTUtDcTg.webp", "https://i.namu.wiki/i/1qVYdGaUuZd7jGIzdapnPm_SmhQaZceTfSksuDVk7U54k9G7pEzEqbq2JPpih4x6vgLo18vCfmDc254O0x3chmc8Gt_NwVzTaciap37kgzdWpHJeQFPEgdeRk54ojwF2C6BOqTgqbauk02XMxIXAjg.webp");
INSERT INTO monster VALUES (66, "사납게 터지는 브라키디오스", "쇄룡", "빙", "https://i.namu.wiki/i/zQXPGahEAg0TIu7ug35KzWYDEMxZZFN0KkHWP2YZn30gRbv6yWYc6_esDkebUD39B1rpaAEql8M5AWQ8s6VSyQIdwMrtkzLNNdLB7XyKnev4v0AJVMwQC3F5j_TuaD96A2bgJwXcIuzcSvoQOVg_vA.webp", "https://i.namu.wiki/i/y3PX47IR4jqjNFloEjMTx5CMJK0CE4WL5VDnd9qBzxWi5SJzpGk1TuVi8S6pVGb37jleGzd4nC30cIsrL2fQSQV4kAvNfXN6a4C-wRe2EKnJlDLFT5g_g63TwokKvf4kb473hXZyczkm6ZH1m5inTA.webp");
INSERT INTO monster VALUES (67, "격앙 라잔", "금사자", "빙", "https://i.namu.wiki/i/WJSgUoK2dVNmEdU7h1Dr8xLNAjAFbFIiOd4M_glhhfnNudDPMgAKEGNbxDVg9wcH6a53PWBh6R4hT38CBAcznWjlrgZHq-6fWEsvFpfGohO3zao5H5wrntCtpnFuIN6IOr9uMOMlcAMrudWShXsOdA.webp", "https://i.namu.wiki/i/vJfgMCH7q62Oxc2V8J12vco1uv6XMGMALu0QOOcRAKoSHbujoXIlBTlVULMWlsMssO-mtvOxpEK4dQ4xFFkd5PAyKQCZl8rAluxKfY41wwIL0c9A-YJZnAqcwK6d-mYLWZwgS7UQo37H8fQ5XESoPw.webp");
INSERT INTO monster VALUES (68, "알바트리온", "황흑룡", "빙", "https://i.namu.wiki/i/mwhOdSu3kk9hdUdwCUaHt9DHObR2vW-fwfMA9ztUkNjXo6orXV9hZSc0L36NOz7Fod3Q9_psKrFX5L2rltPXZrBPdNdgtBIZtrgPycJQy-Hek60zJImejRuBu76zQsWv0QkTT561X9M5O9TxgGrFVw.webp", "https://i.namu.wiki/i/L3RQjEt5tcwWobEQQYP-WuDAAricgsvzhyJ5ZYI_O0zFAT3HE5dydQuf7vcpUvZVCSbBbj5qigtwoZSzJrOQGYMfmOebkAnUxjpHV8CrqHuJpBhtXgaNEIZNi76uuLRs3sxSyluZdg5J0QXjxzk9cw.webp");
INSERT INTO monster VALUES (69, "얼음 칼날을 찬 벨리오로스", "빙아룡", "화", "https://i.namu.wiki/i/dTTlAqQXDnPWoq__PnFsI9NZi0UjqwTsmLfjKVGj92Pweu8cE3o9S5S8k25F2o9lfM-mhcrNXaif3r8wY0GxXf2MVauTimx1wk8dkD71DYs5sHouYB61gekimQzF9_mp5yGRdaeGO2Q0IFSuFNc0ew.webp", "https://i.namu.wiki/i/zil59t7bPDHW9koHZbeW0i33uKzd-UFbwgoQIVXLcXKtgkpP7sGrNl0Ehd4aG1ypIovgUaDM188OUSi69GiDl0SY8PIWBJ3evW_j-pX50TFcNXIzc4Bsp1HLotfntPQXa-ai3mMTvwTqNlEwn5hy5g.webp");
INSERT INTO monster VALUES (70, "밀라보레아스", "흑룡", "용", "https://i.namu.wiki/i/FmPdeuSeXs5-lmL-40Dz_q3rKr4t80cjBTZDRwS99LCSX4XnAW5UDGiyH7ONrcaERxh_jBR3HhkrWYdvivlc_uJ1GOYHTsxhP4rIHDfXZys3-1-y-58m_07o--PWfHy1Rw8is3RjPigSRjfoRUyTIg.webp", "https://i.namu.wiki/i/oNmnaEzB9DFfbo5UnHrqIz4ma5jk9QkwcnP5oAZlu781TbeeBMuUi8VaiR55eZky0vBxLQLPZZE88Dwu1p9gvYCAXjX5EF4WMMM5sa5lp1gVqaxC1fRgcadiWc9xu0OLxcDspI4FzC4-UX1ALugnVg.webp");

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
  (70, 7, 13);


# Join
SELECT * FROM monster;
SELECT * FROM species;
SELECT * FROM habitat;
SELECT * FROM monsterdex;

SELECT monster.id, monster.name, monster.nickname, monster.weekness, species.species, GROUP_CONCAT(habitat.map) AS maps, monster.icon_address, monster.image_address
    FROM monster
    LEFT JOIN monsterdex ON monster.id = monsterdex.monsterid
    LEFT JOIN habitat ON monsterdex.habitatid = habitat.id
    LEFT JOIN species ON monsterdex.speciesid = species.id
    GROUP BY 
      monster.id, 
      monster.name, 
      monster.nickname, 
      monster.weekness, 
      species.species,
      monster.icon_address,
      monster.image_address;
      
DROP DATABASE IF EXISTS `info`;

CREATE DATABASE `info`;

USE `info`;

CREATE TABLE `operators` (
    id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(20) NOT NULL,
    age INTEGER NOT NULL,
    tags VARCHAR(50),
    organisation VARCHAR(50) NOT NULL,
    bio TEXT NOT NULL,
    attacker BOOLEAN,
    foto VARCHAR(100)
);

CREATE TABLE `wapens` (
    id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naam TEXT NOT NULL,
    class ENUM(
        'Assault Rifle',
        'SMG',
        'Sniper Rifle',
        'Marksman Rifle',
        'Pistol',
        'Shotgun',
        'LMG',
        'Machine Pistol',
        'Shield',
        'Special'
    ) NOT NULL,
    soort BOOLEAN,
    damage INTEGER NOT NULL,
    firerate INTEGER NOT NULL
);

CREATE TABLE `gadgets` (
    id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    side BOOLEAN,
    naam VARCHAR(15)
);

CREATE TABLE `users` (
	id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(150) NOT NULL,
    email VARCHAR(100) NOT NULL
);

INSERT INTO
    `operators` (
        `naam`,
        `age`,
        `tags`,
        `organisation`,
        `bio`,
        `attacker`,
        `foto`
    )
VALUES
    ('Grim', 39, 'Map Control', 'Nighthaven', 'Grim', TRUE, './grim.avif'),
    ('Blitz', 37, 'Front Line', 'Viperstrike', 'Blitz', TRUE, './blitz.avif'),
    ('Maverick', 36, 'Breach', 'Ghosteyes', 'Maverick', TRUE, './maverick.avif'),
    ('Twitch', 30, 'Intel', 'Ghosteyes', 'Twitch', TRUE, './twitch.avif'),
    ('Ash', 32, 'Breach', 'Ghosteyes', 'Ash', TRUE, './ash.avif'),
    ('Thermite', 38, 'Breach', 'Red Hammer', 'Thermite', TRUE, './thermite.avif'),
    ('Montagne', 40, 'Front Line', 'Viperstrike', 'Montagne', TRUE, './montagne.avif'),
    ('Doc', 45, 'Support', 'Wolfguard', 'Doc', FALSE, './doc.avif'),
    ('Rook', 33, 'Support', 'Viperstrike', 'Rook', FALSE, './rook.avif'),
    ('Jager', 29, 'Anti-Gadget', 'Viperstrike', 'Jager', FALSE, './jager.avif'),
    ('Bandit', 34, 'Anti-Breach', 'Red Hammer', 'Bandit', FALSE, './bandit.avif'),
    ('Frost', 32, 'Trapper', 'Wolfguard', 'Frost', FALSE, './frost.avif'),
    ('Sledge', 35, 'Breach', 'Red Hammer', 'Sledge', TRUE, './sledge.avif'),
    ('Kapkan', 34, 'Trapper', 'Red Hammer', 'Kapkan', FALSE, './kapkan.avif');

INSERT INTO
    `wapens` (
        `naam`,
        `class`,
        `soort`,
        `damage`,
        `firerate`
    )
VALUES
    ('AK-12', 'Assault Rifle', TRUE, 45, 850),
    ('AK-74M', 'Assault Rifle', TRUE, 42, 600),
    ('AR-33', 'Assault Rifle', TRUE, 42, 750),
    ('Aug A2', 'Assault Rifle', TRUE, 42, 700),
    ('ARX200', 'Assault Rifle', TRUE, 47, 700),
    ('C8-SFW', 'Assault Rifle', TRUE, 40, 837),
    ('L85A2', 'Assault Rifle', TRUE, 43, 750),
    ('MK17 CQB', 'Assault Rifle', TRUE, 41, 650),
    ('F2', 'Assault Rifle', TRUE, 37, 980),
    ('G36C', 'Assault Rifle', TRUE, 38, 780),
    ('Commando 9', 'Assault Rifle', TRUE, 36, 700),
    ('Type-89', 'Assault Rifle', TRUE, 41, 800),
    ('F90', 'Assault Rifle', TRUE, 43, 750),
    ('M4', 'Assault Rifle', TRUE, 44, 750),
    ('M762', 'Assault Rifle', TRUE, 45, 730),
    ('C7E', 'Assault Rifle', TRUE, 47, 700),
    ('Para-308', 'Assault Rifle', TRUE, 48, 650),
    ('R4-C', 'Assault Rifle', TRUE, 39, 860),
    ('SC3000K', 'Assault Rifle', TRUE, 45, 800),
    ('PCX-33', 'Assault', TRUE, 38, 750),
    ('Type-89', 'Assault Rifle', TRUE, 40, 850),
    ('POF9', 'Assault Rifle', TRUE, 37, 800),
    ('V308', 'Assault Rifle', TRUE, 44, 700),
    ('Spear.308', 'Assault Rifle', TRUE, 46, 650),
    ('552 Commando', 'Assault Rifle', TRUE, 48, 690),
    ('556XI', 'Assault Rifle', TRUE, 47, 690),
    ('9x19VSN', 'SMG', TRUE, 35, 692),
    ('K1A', 'SMG', TRUE, 36, 750),
    ('MP5', 'SMG', TRUE, 30, 800),
    ('MP5K', 'SMG', TRUE, 31, 800),
    ('MPX', 'SMG', TRUE, 28, 900),
    ('MP5SD', 'SMG', TRUE, 30, 800),
    ('MX4 Storm', 'SMG', TRUE, 28, 900),
    ('9MM C1', 'SMG', TRUE, 42, 550),
    ('T-5 SMG', 'SMG', TRUE, 29, 800),
    ('MP7', 'SMG', TRUE, 32, 950),
    ('P90', 'SMG', TRUE, 26, 900),
    ('Scorpion EVO 3 A1', 'SMG', TRUE, 33, 950),
    ('PDW9', 'SMG', TRUE, 31, 900),
    ('FMG-9', 'SMG', TRUE, 34, 800),
    ('UMP45', 'SMG', TRUE, 38, 600),
    ('P10 Roni', 'SMG', TRUE, 22, 1000),
    ('Aug A3', 'SMG', TRUE, 37, 700),
    ('M12', 'SMG', TRUE, 44, 550),
    ('Vector .45 ACP', 'SMG', TRUE, 33, 1200),
    ('G8A1', 'SMG', TRUE, 37, 850),
    ('UZK50GI', 'SMG', TRUE, 36, 700),
    ('G8A1', 'LMG', TRUE, 39, 700),
    ('6P41', 'LMG', TRUE, 46, 680),
    ('Alda 5.56', 'LMG', TRUE, 38, 850),
    ('L85A2', 'LMG', TRUE, 47, 670),
    ('M249', 'LMG', TRUE, 48, 650),
    ('M249 SAW', 'LMG', TRUE, 48, 650),
    ('T-95 LSW', 'LMG', TRUE, 46, 650),
    ('LMG-E', 'LMG', TRUE, 41, 720),
    ('DP27', 'LMG', TRUE, 60, 550),
    ('SG-CQB', 'Shotgun', TRUE, 100, 110),
    ('ACS12', 'Shotgun', TRUE, 69, 300),
    ('Supernova', 'Shotgun', TRUE, 125, 100),
    ('SIX12', 'Shotgun', TRUE, 90, 150),
    ('M1014', 'Shotgun', TRUE, 125, 300),
    ('Spas-12', 'Shotgun', TRUE, 80, 150),
    ('Spas-15', 'Shotgun', TRUE, 80, 150),
    ('TCSG12', 'Shotgun', TRUE, 71, 300),
    ('FO-12', 'Shotgun', TRUE, 61, 400),
    ('SASG-12', 'Shotgun', TRUE, 125, 120),
    ('M590A1', 'Shotgun', TRUE, 150, 120),
    ('M870', 'Shotgun', TRUE, 100, 120),
    ('Super 90', 'Shotgun', TRUE, 80, 150),
    ('ITA12L', 'Shotgun', TRUE, 100, 120),
    ('TCSG12', 'Shotgun', TRUE, 75, 140),
    ('SR-25', 'Marksman Rifle', TRUE, 72, 450),
    ('417', 'Marksman Rifle', TRUE, 69, 450),
    ('MK 14 EBR', 'Marksman Rifle', TRUE, 60, 400),
    ('AR-15.50', 'Marksman Rifle', TRUE, 79, 350),
    ('CAMRS', 'Marksman Rifle', TRUE, 69, 450),
    ('OTs-03', 'Sniper Rifle', TRUE, 85, 235),
    ('BOSG.12.2', 'Sniper Rifle', TRUE, 125, 500),
    ('CSRX 300', 'Sniper Rifle', TRUE, 135, 50),
    ('P226 Mk 25', 'Pistol', FALSE, 48, 380),
    ('5.7 USG', 'Pistol', FALSE, 41, 400),
    ('M45 Meusoc', 'Pistol', FALSE, 62, 300),
    ('PRB92', 'Pistol', FALSE, 44, 400),
    ('MK1 9MM', 'Pistol', FALSE, 39, 400),
    ('P9', 'Pistol', FALSE, 55, 400),
    ('GSH-18', 'Pistol', FALSE, 48, 500),
    ('LFP586', 'Pistol', FALSE, 85, 60),
    ('P-10C', 'Pistol', FALSE, 36, 400),
    ('D-50', 'Pistol', FALSE, 71, 80),
    ('Keratos .357', 'Pistol', TRUE, 63, 200),
    ('RG15', 'Pistol', FALSE, 39, 300),
    ('Q-929', 'Pistol', FALSE, 61, 250),
    ('.44 Vendetta', 'Pistol', FALSE, 79, 300),
    ('SDP 9MM', 'Pistol', FALSE, 45, 300),
    ('P229', 'Pistol', FALSE, 57, 300),
    ('USP40', 'Pistol', FALSE, 45, 250),
    ('Luison', 'Pistol', FALSE, 69, 300),
    ('.44 Mag Semi-Auto', 'Pistol', FALSE, 57, 250),
    ('PMM', 'Pistol', FALSE, 62, 240),
    ('Bailiff 410', 'Pistol', FALSE, 200, 70),
    ('P12', 'Pistol', FALSE, 50, 300),
    ('SMG-11', 'Machine Pistol', FALSE, 40, 1100),
    ('SMG-12', 'Machine Pistol', FALSE, 31, 1250),
    ('SPSMG9', 'Machine Pistol', FALSE, 28, 1000),
    ('C75 Auto', 'Machine Pistol', FALSE, 34, 1100),
    ('Reaper MK2', 'Machine Pistol', FALSE, 29, 1100),
    ('Bearing 9', 'Machine Pistol', FALSE, 33, 1000),
    ('ITA12S', 'Shotgun', FALSE, 80, 120),
    ('Super Shorty', 'Shotgun', FALSE, 60, 100),
    ('GLAIVE-12', 'Shotgun', FALSE, 65, 100),
    ('Balistic Shield', 'Shield', TRUE, 0, 0),
    ('G52-Shield', 'Shield', TRUE, 0, 0),
    ('Le Roc Shield', 'Shield', TRUE, 0, 0),
    ('CCE Shield MK2', 'Shield', TRUE, 0, 0),
    ('Gonne-6', 'Special', FALSE, 10, 1);

INSERT INTO
    `gadgets` (`side`, `naam`)
VALUES
    (TRUE, 'Claymore');
-- Active: 1683133572474@@127.0.0.1@3306
CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at TEXT DEFAULT (DATETIME()) NOT NULL
);

INSERT INTO users (id, name, email, password, role)
VALUES
	('u001', 'Fulano', 'fulano@email.com', 'fulano123', 'NORMAL'),
	('u002', 'Beltrana', 'beltrana@email.com', 'beltrana00', 'NORMAL'),
	('u003', 'Astrodev', 'astrodev@email.com', 'astrodev99', 'ADMIN');


UPDATE users 
SET password = "$2a$12$F589D/sv4xpYMidvnsfWT.bbchYEo08mojunJb6VqcSwm08ulQEye"
WHERE id = "u001";

UPDATE users 
SET password = "$2a$12$k6YpkKP13bh1Fa/5KglfUuJrDB9T5L0GXCqjBgOQPQ7xSi.qQQCkO"
WHERE id = "u002";
UPDATE users 
SET password = "$2a$12$.yUedv6cphynY3AFqcMTF.qkSLtxwi23ew9c3SK3ZMb32TGIkUQ8K"
WHERE id = "u003";
UPDATE users 
SET password = "$2a$12$dy0uJNSmFuB.B2Q2BAbpG.1LK/J2MRZtKh59qL/bmRBEpzV3bg3Bu"
WHERE id = "7a2fc164-d401-4594-88f9-d0ba94f095ac";
UPDATE users 
SET password = "$2a$12$LVjGcjERgMHy6rWqyZX1..FnwsG5Pduwsjvoy9nUvGxlI1xl.Ve3q"
WHERE id = "04e771d7-0e4f-499b-af55-521e1d133ff8";
UPDATE users 
SET password = "$2a$12$x1c6WCzjhyZvMtaIUIwHrudffaGLriwiyq.z9bpI8PUcK/AdO7Iuq"
WHERE id = "cfc5af8f-f015-4889-a9b6-9f6086d35528";

SELECT * FROM users;
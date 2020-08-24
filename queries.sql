-- Create tables for raw data to be loaded into

drop table batting_post;
drop table hof

CREATE TABLE batting_post (
playerID INT PRIMARY KEY,
round TEXT,
AB TEXT,
R TEXT,
H TEXT,
Doubles Text,
Triples TEXT,
HR TEXT,
RBI TEXT,
SB TEXT,
CS TEXT,
BB TEXT,
SO TEXT,
IBB TEXT,
HBP TEXT,
SH TEXT,
SF TEXT,
GIDP TEXT
	
);

CREATE TABLE hof (
playerID INT PRIMARY KEY,
inducted TEXT
);


-- Joins tables
SELECT batting_post.playerID, batting_post.round, batting_post.AB, batting_post.R, batting_post.H, batting_post.Doubles, batting_post.Triples,
		batting_post.HR, batting_post.RBI, batting_post.SB, batting_post.CS, batting_post.BB, batting_post.SO, batting_post.IBB, batting_post.HBP, batting_post.SH, batting_post.SF, batting_post.GIDP,
		hof.inducted
FROM batting_post
JOIN hof
ON batting_post.playerID = hof.playerID;
-- Create Tables Query

--Teams
CREATE TABLE teams (T_id varchar(3) PRIMARY KEY, T_name 
varchar(25) NOT NULL, project_name varchar(25) NOT NULL,
repo_link varchar(300) NOT NULL, p_desc varchar(200));

--Hackathon Event
CREATE TABLE HackathonEvent (
H_id varchar(3) PRIMARY KEYy,
H_name varchar(25) NOT NULL,
start_date date NOT NULL,
end_date date NOT NULL,
location varchar(50),
mode varchar(20) NOT NULL);

--Participants
CREATE TABLE participants(
p_id varchar(3) PRIMARY KEY,
f_name varchar(25),
l_name varchar(25),
phoneno numeric(10),
skills varchar(100),
T_id varchar(3) REFERENCES teams(T_id));

--Registration
CREATE TABLE Registration(
R_id varchar(3) PRIMARY KEY,
reg_date date NOT NULL,
p_id varchar(3) REFERENCES participants(p_id),
Page 11 of 22
T_id varchar(3) REFERENCES teams(T_id),
H_id varchar(3) REFERENCES HackathonEvent(H_id));

--Judges
CREATE TABLE Judges(J_id varchar(3) PRIMARY KEY, jf_name varchar(25) 
NOT NULL, jl_name varchar(25) NOT NULL, Expertize varchar(100));

--Prizes
CREATE Prizes(
pr_id varchar(3) PRIMARY KEY,
pr_title varchar(25) NOT NULL,
pr_amt numeric(6) NOT NULL,
Sp_id varchar(3) REFERENCES Sponsor(Sp_id),
H_id varchar(3) REFERENCES HackathonEvent(H_id)); 

--Sponsors
CREATE TABLE Sponsor(
Sp_id varchar(3) PRIMARY KEY,
sp_name varchar(50) NOT NULL,
sp_email varchar(50) NOT NULL,
sp_level varchar(10) NOT NULL,
sp_amt numeric(6), 
H_id varchar(3) REFERENCES HackathonEvent(H_id));

--Scores
CREATE TABLE Scores(
s_id varchar(3) PRIMARY KEY,
H_id varchar(3) REFERENCES HackathonEvent(H_id),
T_id varchar(3) REFERENCES teams(T_id),
J_id varchar(3) REFERENCES Judges(J_id));


--Insert Query

--Teams
INSERT INTO teams values ('T01', 'Hacksquad', 'Cypher Link', 
'https://github.com/HIMANSHIthakkar/himanshi', 'Empowering Indie 
Developers Across Blockchains');
INSERT INTO teams values
('T02','ByteBattles','AlumInsights','https://github.com/HIMANSHIthakkar/himan
shi','Alumni Insights for Placement Preparations');
INSERT INTO teams values 
('T03','HackHeroes','Gitsume','https://github.com/shailifadadu','Crafting the 
perfect resume just got easier');
INSERT INTO teams values 
('T04','WebWarriors','InterviewMap','https://github.com/shailifadadu','Crafting 
the perfect resume just got easier');

--Participants
INSERT INTO participants 
values('P01','Himanshi','Thakkar',8780230308,'c++,java','T01');
INSERT INTO participants 
values('P02','Srushti','Gol',8780230308,'c++,java','T01');
INSERT INTO participants 
values('P03','Manan','Patel',8780230208,'Dbms,python','T01');
INSERT INTO participants 
values('P04','Isha','Jagani',8780230209,'React,C','T01');
INSERT INTO participants values('P05','Mansi','Shah',8780222209,'Node 
js,js','T02');
INSERT INTO participants 
values('P06','Shyam','Shah',9780222209,'sql,js,React','T02');
INSERT INTO participants values('P07','Mann','Jain',9730220209,'next 
js,React','T02');
INSERT INTO participants 
values('P08','Shaily','Fadadu',9730223209,'AWS,Docker','T03');
INSERT INTO participants 
values('P09','Neha','Patel',9730123209,'HTML,CSS,JS','T03');
INSERT INTO participants values('P10','Meet','soni',9730123289,'React, next 
JS','T03');
Page 13 of 22
INSERT INTO participants values('P11','Disha','Patel',9730893289,'AI/ML,node 
JS','T03');
INSERT INTO participants 
values('P12','Devanshi','Patel',9830893289,'React,node JS','T04');
INSERT INTO participants 
values('P13','Prushti','Shah',9830593289,'GCP,mernstack','T04');
INSERT INTO participants 
values('P14','Yashvi','Joshi',9830593279,'AI/ML,mongo DB','T04');

--Hackathon Event
INSERT INTO HackathonEvent 
values('H01','DUHacks','24/02/2024','26/02/2024','ddu college','offline');
INSERT INTO HackathonEvent 
values('H02','Hack&Chill','16/01/2024','17/01/2024','ddu college','offline');
INSERT INTO HackathonEvent 
values('H03','HackNITR','8/03/2024','10/03/2024','none','online');
INSERT INTO HackathonEvent 
values('H04','DataThrone','7/04/2024','8/04/2024','none','online');

--Judges
INSERT INTO judges (j_id, jf_name, jl_name, expertise, jemail)
VALUES ('J01', 'Juhi', 'Jaiswal', 'AI/ML', 'juhi890@gmail.com'),
 ('J02', 'Harsh', 'Thakkar', 'Web', 'hthakkar@gmail.com');

--Sponsors
INSERT INTO Sponsor (sp_id, sp_name, sp_email, sp_level, sp_amt, h_id)
VALUES ('S01','Apex Education', 'hthakkar374@gmail.com', 'Bronze', 50000, 
'H01'),
 ('S02','Sucess overseas', 'hthakkar374@gmail.com', 'Diamond', 150000, 
'H01'),
 ('S03','Jivan vikas Education', 'hthakkar374@gmail.com', 'Silver', 55000, 
'H02');

--Scores
INSERT INTO Scores (s_id, h_id, t_id, score)
VALUES ('S01', 'H01', 'T01', 'J01', '4.0'), 
 ('S02', 'H01', 'T02', 'J01', '3.0'), 
 ('S03', 'H02', 'T01', 'J02', '4.0');

--Prizes
INSERT INTO prizes (pr_id, pr_title, pr_amt, sp_id, h_id)
VALUES ('Z01','1st', 8000, 'S01', 'H01'), 
 ('Z02','2nd', 8000, 'S01', 'H02'),
 ('Z03','3rd', 8000, 'S01', 'H01'), 
 ('Z04','1st con', 8000, 'S02', 'H03'); 

 --Registration
 INSERT INTO registration values('R01','1/3/2024','P01','T01','H01');
INSERT INTO registration values('R02','2/3/2024','P02','T01','H01');
INSERT INTO registration values('R03','2/3/2024','P03','T01','H01');
INSERT INTO registration values('R04','3/3/2024','P04','T01','H01');
INSERT INTO registration values('R05','3/3/2024','P05','T02','H01');
INSERT INTO registration values('R06','4/3/2024','P06','T02','H01');
INSERT INTO registration values('R07','4/3/2024','P07','T02','H01');
INSERT INTO registration values('R08','4/3/2024','P08','T03','H01');
INSERT INTO registration values('R09','4/3/2024','P09','T03','H01');
INSERT INTO registration values('R10','4/3/2024','P10','T03','H01');
INSERT INTO registration values('R11','4/3/2024','P11','T03','H01');
INSERT INTO registration values('R12','4/3/2024','P12','T04','H01');
INSERT INTO registration values('R13','4/3/2024','P13','T04','H01');
INSERT INTO registration values('R14','4/3/2024','P14','T04','H01'); 


--Function & Triggers
CREATE OR REPLACE FUNCTION test1()
 RETURNS trigger AS
$$
BEGIN
INSERT INTO dummy_participants
VALUES(old.p_id,old.f_name,old.l_name,old.phoneno,old.skills,old.T_id,curren
t_date);
 RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER test_trigger1
AFTER INSERT
ON dummy_participants
FOR EACH ROW
EXECUTE PROCEDURE test1();


--Cursor
CREATE OR REPLACE FUNCTION process_participants()
RETURNS void AS $$
DECLARE
 participant_cursor CURSOR FOR
 SELECT *
 FROM participants;
 participant participants%ROWTYPE;
BEGIN
 OPEN participant_cursor;
 LOOP
 FETCH participant_cursor INTO participant;
 EXIT WHEN NOT FOUND;
 RAISE NOTICE 'Participant ID: %', participant.p_id;
 RAISE NOTICE 'Name: % %', participant.f_name, participant.l_name;
 RAISE NOTICE 'Phone Number: %', participant.phoneno;
 RAISE NOTICE 'Skills: %', participant.skills;
 RAISE NOTICE 'Team ID: %', participant.t_id;
 RAISE NOTICE '---------------------------';
 END LOOP;
 CLOSE participant_cursor;
END;
$$ LANGUAGE plpgsql;
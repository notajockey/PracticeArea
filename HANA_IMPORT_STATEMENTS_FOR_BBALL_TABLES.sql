SELECT * FROM BASEBALL.PEOPLE


SET SCHEMA BASEBALL;

-- had to have system in the tenant db grant import privileges to TENANT_USER_01
-- also had to set enable_csv_import_path_filter false (alternatively could have set the specific path to /tmp for csv_import_path_filter)
commit;
import from csv file '/tmp/People.csv'
into BASEBALL.PEOPLE
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.People;



commit;
import from csv file '/tmp/AwardsManagers.csv'
into BASEBALL.AwardsManagers
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.AWARDSMANAGERS;



commit;
import from csv file '/tmp/AwardsPlayers.csv'
into BASEBALL.AwardsPlayers
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.AWARDSPLAYERS;




import from csv file '/tmp/AwardsShareManagers.csv'
into BASEBALL.AwardsShareManagers
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.AWARDSSHAREMANAGERS;



commit;
import from csv file '/tmp/AwardsSharePlayers.csv'
into BASEBALL.AwardsSharePlayers
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.AWARDSSHAREPLAYERS;



commit;
import from csv file '/tmp/CollegePlaying.csv'
into BASEBALL.CollegePlaying
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.CollegePlaying;


commit;
import from csv file '/tmp/HomeGames.csv'
into BASEBALL.HomeGames
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.HomeGames;




commit;
import from csv file '/tmp/Managers.csv'
into BASEBALL.Managers
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.Managers;


commit;
import from csv file '/tmp/ManagersHalf.csv'
into BASEBALL.ManagersHalf
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.ManagersHalf;


commit;
set schema BASEBALL;
drop table PARKS;
CREATE COLUMN TABLE  Parks ( parkkey char(5)  NOT NULL, parkname varchar (255) NULL,parkalias varchar (100) NULL,  city varchar (30) NULL, state varchar (30) NULL, country varchar (30) NULL);

import from csv file '/tmp/Parks.csv'
into BASEBALL.Parks
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
--alter table BASEBALL.Parks add  (country char(10) null)  -- Didn't have to alter just had ID as int when it is a char(5)
select * from BASEBALL.Parks;

commit;
import from csv file '/tmp/PitchingPost.csv'
into BASEBALL.PitchingPost
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.PitchingPost;



commit;
import from csv file '/tmp/Salaries.csv'
into BASEBALL.Salaries
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.Salaries;



commit;
import from csv file '/tmp/Schools.csv'
into BASEBALL.Schools
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.Schools;


/*

Must have been a table I created in IQ
commit;
import from csv file '/tmp/SchoolsPlayers.csv'
into BASEBALL.SchoolsPlayers
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.SchoolsPlayers;
*/


commit;
import from csv file '/tmp/TeamsHalf.csv'
into BASEBALL.TeamsHalf
  with  record delimited by '\n'
    field delimited by ','
   optionally enclosed by '"'
   date format 'YYYY-MM-DD'
;
select * from BASEBALL.TeamsHalf;

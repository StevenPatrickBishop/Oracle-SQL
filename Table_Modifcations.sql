ALTER TABLE CENTERS
ADD CONSTRAINT DIV_ID_FK FOREIGN KEY(DIVISON_ID) REFERENCES divisions;


ALTER TABLE STUDENTS
ADD CONSTRAINT STU_ID_FK FOREIGN KEY(student_id) REFERENCES members;

ALTER TABLE MEMBER_ROLES
--ADD DIVISION_ID  NUMBER(6,0);
ADD CONSTRAINT R_DIV_FK FOREIGN KEY(DIVISION_ID) REFERENCES divisions;


ALTER TABLE PROGRAM_SECTIONS
--ADD PROGRAM_ID NUMBER(6,0);
ADD CONSTRAINT PR_ID_FK FOREIGN KEY(PROGRAM_ID) REFERENCES PROGRAMS;

ALTER TABLE PROGRAMS
DROP(section_id,division_id);

ALTER TABLE DIVISIONS
ADD CONSTRAINT DIV_HEAD_FK FOREIGN KEY(DIVISON_HEAD) REFERENCES MEMBERS;

ALTER TABLE MEMBERS
--ADD CONSTRAINT M_TYPE_FK FOREIGN KEY(MEMBER_TYPE) REFERENCES MEMBER_TYPES
--ADD CONSTRAINT M_ROLE_FK FOREIGN KEY(MEMBER_ROLE) REFERENCES MEMBER_ROLES
ADD CONSTRAINT MGR_ID_FK FOREIGN KEY(MANAGER_ID) REFERENCES MEMBERS;

ALTER TABLE STUDENTS
--DROP COLUMN enrolement_status;
--ADD ENROLEMENT NUMBER(6,0);
--ADD CONSTRAINT ENR_FK FOREIGN KEY(ENROLEMENT) REFERENCES PROGRAM_SECTIONS;
ADD CONSTRAINT PROG_ID_FK FOREIGN KEY(PROGRAM_ID) REFERENCES PROGRAMS;

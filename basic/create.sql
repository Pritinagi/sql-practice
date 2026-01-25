CREATE TABLE persons
(
 id int NOT NULL,
 person_name VARCHAR(50) NOT NULL,
 birth_date date,
 phone VARCHAR(15) NOT NULL,
 CONSTRAINT pk_persons primary key (id)
)

SELECT * FROM persons
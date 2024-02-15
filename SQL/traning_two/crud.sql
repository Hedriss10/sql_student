-- criando as tabelas 
CREATE TABLE COMPANY (
    COMPANY_ID INTEGER PRIMARY KEY,
    NAME VARCHAR(30) NOT NULL,
    DESCRIPTION VARCHAR(60),
    PRIMRAY_CONTATCT_ID INTEGER NOT NULL
);

CREATE TABLE ROOM (
    ROOM_ID INTEGER PRIMARY KEY,
    FLOOR_NUMBER INTEGER NOT NULL,
    SEAT_CAPACITY INTEGER NOT NULL
);

CREATE TABLE REPRESENTATION (
    REPRESENTATION_ID INTEGER PRIMARY KEY,
    BOOKED_COMPANY_ID INTEGER NOT NULL,
    BOOKED_ROOM_ID INTEGER NOT NULL,
    START_TIME TIME,
    END_TIME TIME 
	
);   

CREATE TABLE ATTENDE (
    ATTENDEE_ID INTEGER PRIMARY KEY,
    FIRST_NAME VARCHAR(30) NOT NULL,
    LAST_NAME VARCHAR(30) NOT NULL,
    PHONE INTEGER,
    EMAIL VARCHAR(60),
    VIP BOOLEAN 
);

CREATE TABLE REPRESENTATION_ATTENDANCE (
	TICKET_ID INTEGER PRIMARY KEY,
	REPRESENTATION_ID INTEGER,
	ATTENDEE_ INTEGER
);

-- criando a view 
CREATE VIEW REPRESENTATION_VW AS (
	SELECT 
	company.NAME as booked_company,
	room.ROOM_ID as room_number,
	room.FLOOR_NUMBER as floor_number,
	room.SEAT_CAPACITY as seats,
	START_TIME,
	END_TIME 
	FROM REPRESENTATION 
	INNER JOIN COMPANY ON 
	REPRESENTATION.BOOKED_COMPANY_ID = COMPANY_ID
	INNER JOIN ROOM ON 
	REPRESENTATION.BOOKED_ROOM_ID = ROOM_ID
);

-- mostra simples da view criada 
SELECT * FROM representation_vw 



--- comando INSERT
insert into ATTENDE(ATTENDEE_ID, FIRST_NAME, LAST_NAME) values (1, 'Hedris', 'Pereira')
insert into ATTENDE(attendee_id, phone, email, vip) values (1, 34028922, 'hedrisgts@gmail.com', True)
insert into attende(ATTENDEE_ID, FIRST_NAME, LAST_NAME, PHONE, EMAIL)
values 
(2,'Rodrigo', 'Fábio', 098765, 'emailtest@gmail.com'),
(3,'Shen', 'Fábio', 098765, 'emailtest@gmail.com'),
(4,'Goku', 'Fábio', 098765, 'emailtest@gmail.com'),
(5,'Vegetta', 'Fábio', 098765, 'emailtest@gmail.com')

insert into company (COMPANY_ID, NAME, DESCRIPTION, PRIMRAY_CONTATCT_ID) 
values (1,'RexApp Solutions', 'A mobile app delivery service', 3)




-- comando DELETE 
DELETE FROM public.attende 
WHERE phone is null and email is null
DELETE FROM public.attende 
where first_name = 'Goku' 
select * from public.attende


-- comando update 
UPDATE attende SET EMAIL = UPPER(EMAIL)
select * from public.attende
UPDATE attende SET first_name = UPPER(first_name), 
last_name = UPPER(last_name)
 
SELECT * FROM public.COMPANY


-- criando index
CREATE UNIQUE INDEX attende_index on attende(FIRST_NAME)


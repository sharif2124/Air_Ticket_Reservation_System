DROP flight_details;
DROP flight;
DROP credit_card_details;
DROP ticket_info;
DROP passenger_profile;

CREATE TABLE flight(
fFlight_id NUMBER(15),
    fAirline_id NUMBER(15),
    fAirline_Name varchar(25),
    fFrom_location varchar(25),
    fTo_location varchar(25),
   fDepature_time varchar(25),
    fArival_time varchar(25),
    fDuration varchar(25),
    fTotal_seat Number(15),
    PRIMARY KEY (fFlight_id)
);

CREATE TABLE flight_details(
    dFlight_depature_date varchar(25),
    dFlight_id NUMBER(15),
    dPrice varchar(20),
    dAvaliable_seat Number(15),
    FOREIGN KEY (dFlight_id) REFERENCES flight (fFlight_id) ON DELETE CASCADE
);

CREATE TABLE passenger_profile(
Pprofile_id NUMBER(20),
PName varchar(25),
Paddress varchar(25),
Pemail_address varchar(45),
Pnumber_of_ticket NUMBER(15),
PRIMARY KEY (Pprofile_id)    
);

CREATE TABLE ticket_info(
tTicket_id NUMBER(15),
tProfile_id NUMBER(20),
tFlight_id NUMBER(15),
tFlight_departure_date varchar(25),   
PRIMARY KEY(tTicket_id),
FOREIGN KEY (tProfile_id) REFERENCES passenger_profile (Pprofile_id) ON DELETE CASCADE    
);

CREATE TABLE credit_card_details(
cProfile_id NUMBER(20),
cCard_number NUMBER(30),
cCard_type varchar(30),
cExpiration_month varchar(30),
cExpiration_year varchar(30),    
FOREIGN KEY (cProfile_id) REFERENCES passenger_profile (Pprofile_id) ON DELETE CASCADE
);

INSERT INTO flight VALUES (101,2071,'BD_BIMAN','DHAKA','Dubai','10 PM','2 AM','4 hours',300);
INSERT INTO flight VALUES (102,2072,'US BANGLA','DHAKA','NEPAL','8 PM','11 PM','3 hours',250);
INSERT INTO flight VALUES (103,2073,'Kolkata Airline','Nepal','Kolkata','10 PM','12.30 AM','2.30 hours',350);
INSERT INTO flight VALUES (104,2074,'Singapur Airline','DHAKA','Singapur','5 PM','8 PM','3 hours',400);
INSERT INTO flight VALUES (105,2075,'Pakistan Airline','DHAKA','Islamabad','1 PM','4 PM','3 hours',400);

INSERT INTO flight_details VALUES ('9/7/20',102,'250$',30);
INSERT INTO flight_details VALUES ('5/3/20',101,'300$',20);
INSERT INTO flight_details VALUES ('6/3/20',103,'200$',30);
INSERT INTO flight_details VALUES ('4/3/20',104,'300$',25);
INSERT INTO flight_details VALUES ('8/3/20',105,'250$',35);

INSERT INTO passenger_profile VALUES (2124,'Sharif','DHAKA','sharifk064@gmail.com',2);
INSERT INTO passenger_profile VALUES (2194,'Nahid','DHAKA','nahid64@gmail.com',3);
INSERT INTO passenger_profile VALUES (2114,'Zim','Nepal','zim2114@gmail.com',5);
INSERT INTO passenger_profile VALUES (2109,'Topu','DHAKA','topu09@gmail.com',2);
INSERT INTO passenger_profile VALUES (2121,'Priyo','DHAKA','priyo2121@gmail.com',3);

INSERT INTO ticket_info VALUES (1000,2124,102,'9/7/20');
INSERT INTO ticket_info VALUES (1010,2194,101,'5/7/20');
INSERT INTO ticket_info VALUES (1020,2114,103,'6/7/20');
INSERT INTO ticket_info VALUES (1030,2109,104,'4/7/20');
INSERT INTO ticket_info VALUES (1040,2121,105,'10/7/20');

INSERT INTO credit_card_details VALUES (2124,012556284,'DBBL','December','2040');
INSERT INTO credit_card_details VALUES (2194,013556280,'DBBL','December','2037');
INSERT INTO credit_card_details VALUES (2114,013567834,'VISA','July','2040');
INSERT INTO credit_card_details VALUES (2109,01556294,'EBBL','June','2035');
INSERT INTO credit_card_details VALUES (2121,014556274,'EBBL','December','2040');





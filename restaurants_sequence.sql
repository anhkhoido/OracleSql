/*
    Script's name: restaurants_sequence.sql
    Author: Anh Khoi Do
    Version: 1.0
    Creation: 2016/10/04 15:30:00
*/


/* Creation of a table named Restaurants.
 This table is meant to contain the restaurants
 and bars of Toronto, the biggest city of Canada. */
CREATE TABLE Restaurants 
(
    Id int CONSTRAINT restaurant_id_pk PRIMARY KEY,
    Name VARCHAR2(30) NOT NULL,
    Address VARCHAR2(40) NOT NULL,
    CITY VARCHAR2(20) NOT NULL
);


/* 
    Because Oracle SQL does not have the auto_increment
    keyword embedded into the CREATE TABLE statement,
    one must create a sequence that has the job to increment
    the column allocated for a restaurant's id whenever the
    INSERT INTO statement is used.
    
    1. START WITH: This means that the very first restaurant
    to be created in my table named Restaurants will have
    1 as its id.
    
    2. INCREMENT BY: 1. This means the Id is incremented by
    one everytime you add a restaurant to the table named
    Restaurants.
*/
CREATE SEQUENCE seq_restaurants
    NOMAXVALUE
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE
    ORDER;

INSERT INTO Restaurants(Id, Name, Address, CITY)
VALUES(seq_restaurants.nextval, 'Pho Tien Thanh', '57 Ossington Avenue', 'Toronto');

INSERT INTO Restaurants(Id, Name, Address, CITY)
VALUES(seq_restaurants.nextval, 'Bar Hop', '137 Peter Street', 'Toronto');

INSERT INTO Restaurants(Id, Name, Address, CITY)
VALUES(seq_restaurants.nextval, 'Bellwoods Brewery', '124 Ossington Avenue', 'Toronto');

INSERT INTO Restaurants(Id, Name, Address, CITY)
VALUES(seq_restaurants.nextval, 'Jangwon Korean Restaurant', '708 Bloor Street West', 'Toronto');

INSERT INTO Restaurants(Id, Name, Address, CITY)
VALUES(seq_restaurants.nextval, 'Ramen Isshin', '421 College Street', 'Toronto');

SELECT Id, Name FROM Restaurants;

SELECT SYSDATE;

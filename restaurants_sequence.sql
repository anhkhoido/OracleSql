CREATE TABLE Restaurants 
(
    Id int CONSTRAINT restaurant_id_pk PRIMARY KEY,
    Name VARCHAR2(30) NOT NULL,
    Address VARCHAR2(40) NOT NULL,
    CITY VARCHAR2(20) NOT NULL
);

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
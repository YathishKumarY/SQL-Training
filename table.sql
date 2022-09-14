CREATE TABLE customer(
CustomerID int primary key autoincrement,
CustomerName varchar(255),
Email varchar(255),
PhoneNumber int
);

CREATE TABLE ticket(
TicketID int primary key auto_increment,
ArrivalTime DATETIME,
DepartTime DATETIME,
SeatNumber varchar(255),
ClassType varchar(255),
BoardingTime DATETIME,
Status varchar(255)
);

CREATE TABLE flight(
FlightID int primary key,
Source varchar(255),
Destination varchar(255),
TotalSeats int,
FlightTime DATETIME,
FlightDate date
);

alter table customer add constraint pk_customer primary key (CustomerID);

alter table ticket add constraint pk_ticket primary key (TicketID);

alter table flight add constraint pk_flight primary key (FlightID);

alter table ticket add constraint fk_customer foreign key (TicketID) references customer (CustomerID);

alter table ticket add constraint fk_flight foreign key (TicketID) references customer (FlightID);


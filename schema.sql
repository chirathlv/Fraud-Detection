---- Card Holder Table ----
create table card_holder
(
	id int primary key,
	name VARCHAR(50)
);

---- Credit Card Table ----
create table credit_card
(
	card VARCHAR(20) primary key,
	cardholder_id int,
	foreign key(cardholder_id) references card_holder(id)
);

---- Merchant Category Table ----
create table merchant_category
(
	id int primary key,
	name VARCHAR(50)
);

---- Merchant Table ----
create table merchant
(
	id int primary key,
	name VARCHAR(50),
	id_merchant_category int,
	foreign key(id_merchant_category) references merchant_category(id)
);

---- Transaction Table ----
create table transaction
(
	id int primary key,
	date TIMESTAMP,
	amount float,
	card VARCHAR(20),
	id_merchant int,
	foreign key(card) references credit_card(card),
	foreign key(id_merchant) references merchant(id)
);

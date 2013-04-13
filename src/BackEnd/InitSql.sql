create table items (
	id smallint not null,
	item_type varchar(10), /* 'Album', 'Audiobook', or 'Film' */
	item_name varchar(10),
	year_of_release smallint,
	duration smallint,
	genre varchar(10),
	preview varchar(10),
	number_sold smallint,
	price float,
	hidden boolean,
	cumulative_ratings smallint,
	num_ratings smallint,
	creator varchar(10),

	constraint pk_items primary key (id)
);
create table users (
	username varchar(15),
	password varchar(10),
	billing_name varchar(10),
	address varchar(10),
	credit float,
	administrator boolean,
	purchase_history varchar(10),
	ratings varchar(10),
	constraint pk_users primary key (username)
);

insert into users
(username, password, billing_name, address, credit, administrator, purchase_history, ratings) values
('administrator', 'admin', '', '', 0.00, true, '', '');

/*insert into items (id, item_type, item_name, year_of_release, duration, genre, preview, number_sold, price, hidden, cumulative_ratings, num_ratings, creator)
	values (1, 'Album', 'Test Album', 2000, 5000, 'Genre', '', 0, 10.50, false, 0, 0, 'Artist');*/


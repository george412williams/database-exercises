use codeup_test_db;
use employees;

drop table if exists pets;

create table pets (
    id int unsigned,
    pet_name varchar(30) not null,
    owner_name varchar(30),
    age integer
);
describe pets;

#why use these indexes as keys?

# add primary key manually; on projs need update things, note is that
# even tho complex, knowing how to manually update things is a huge benefit

#add primary key manually:
alter table pets
modify column id int unsigned primary key auto_increment;

    #redefining from scratch, its manual

# dropping prim key
alter table pets
modify column id int;

alter table pets
drop primary key;

#loaded codeup into sequel pro to pets structure
    #so removing the definition before the key, key remains up on removala

show create table pets;

# define the primary key on the creation table statement

drop table pets;
create table pets (
id int unsigned auto_increment primary key,
pet_name varchar(30) not null,
owner_name varchar(30),
age integer
);
describe pets;

#creating a pKey for mult columns; special consideration;

drop table pets;
create table pets (
                      id int unsigned auto_increment,
                      pet_name varchar(30) not null,
                      owner_name varchar(30),
                      age integer,
                      primary key (id, age)
);
describe pets;

    # there are reasons but not covered here

    #still in this table

    #add name index

alter table pets add index `pet_name_key` (pet_name);


alter table pets
drop index pet_name_key;

    #no longer have petname key, can view in sequel pro

show index from pets;

    # me playing:

#alter table pets drop

# ran original script, then ran added petname key script, sequel id'd it as a mult key
    # diff than prim key, w index its diff bc it can be mult things (kind of like a class)
    #later wil join author table with quote table and will use it there

    # https://dev.mysql.com/doc/refman/5.7/en/multiple-column-indexes.html

# using unique index w two diff values,  make one with a pet and an owner,
    # that situation needs to be unique;
    # like user name and an email or phone number is where you would use
    # this mult column

drop table if exists pets;

create table pets (
    id int unsigned auto_increment,
    pet_name varchar(30) not null,
    owner_name varchar(30),
    age int,
    primary key (id),
    unique unique_pn_on (pet_name, owner_name)
);
describe pets;

insert into pets (pet_name, owner_name, age)
values ('rocky', 'bill', 22);
#can never have the situation where...upon an insert that doubles a unique key it blocks
    #can help reduce errors for unexpected beh, code dep on finding a name and some pet object,
        # wo a check, consequences downstream

    # aside for content
    insert into pets (pet_name, owner_name, age)
    values ('rocky', 'bill', 22);

drop table if exists owners;
create table owners (
    id int unsigned auto_increment primary key,
    name varchar(30) not null,
    address varchar(255) default 'undisclosed'
);
#truncate owners;
insert into owners (name, address) values ('bill', 'the death star');
insert into owners (name, address) values ('jim', 'the real star');
insert into owners (name, address) values ('guy', 'dwarf star');

select * from owners;

drop table if exists pets;
create table pets (
                      id int unsigned auto_increment,
                      pet_name varchar(30) not null,
                      owner_id int unsigned,
                      age int,
                      primary key (id),
                      foreign key (owner_id) references owners(id)
);
insert into pets (pet_name, owner_id, age)
values ('rocky', 1, 4);
insert into pets (pet_name, owner_id, age)
values ('snuffles', null, 2);
insert into pets (pet_name, owner_id, age)
values ('snu', 3, 2);
describe pets;
select * from pets;

select * from owners;

describe titles;

show index from owners;

#alter table owners drop index owner_id;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist VARCHAR(128) DEFAULT 'UNKNOWN',
name VARCHAR(128) NOT NULL,
release_date SMALLINT UNSIGNED,
genre VARCHAR(128),
sales FLOAT,
PRIMARY KEY (id),
UNIQUE unique_artist_album (artist, name)
);
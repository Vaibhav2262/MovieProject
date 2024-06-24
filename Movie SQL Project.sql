create database moviesdb;
use moviesdb;

/* Table Movie  */

create table movie(
mov_id int primary key,
mov_title varchar(50),
mov_year int,
mov_time int,
mov_lang varchar(50),
mov_dt_rel date,
mov_rel_country varchar(5)
);

insert into movie values
(1, 'Shershaah', 2021, 156, 'Hindi', '2021-08-12', 'India'),
(2, 'Gehraiyaan', 2022, 128, 'Hindi', '2022-02-11', 'India'),
(3, 'Sooryavanshi', 2021, 157, 'Hindi', '2021-04-30', 'India'),
(4, '83', 2021, 165, 'Hindi', '2021-12-24', 'India'),
(5, 'Chandigarh Kare Aashiqui', 2021, 139, 'Hindi', '2021-12-10', 'India'),
(6, 'Badhaai Do', 2022, 131, 'Hindi', '2022-02-11', 'India'),
(7, 'Sardar Udham Singh', 2022, 147, 'Hindi', '2022-10-16', 'India'),
(8, 'Pushpa: The Rise – Part 1', 2021, 207, 'Telugu', '2021-12-17', 'India'),
(9, 'Mimi', 2021, 131, 'Hindi', '2021-07-30', 'India'),
(10, 'Rocketry: The Nambi Effect', 2022, 125, 'Hindi', '2022-07-01','India'),
(11, 'Interstellar', 2014, 169, 'English', '2014-11-7', 'USA');

select * from movie;

/* Director  */

create table director(
dir_id int primary key,
dir_fname varchar(20),
dir_lname varchar(20)
);

insert into director values
(102, 'Vishnu', 'Vardhan'),
(221, 'Shakun', 'Batra'),
(336, 'Rohit', 'Shetty'),
(441, 'Kabir', 'Khan'),
(554, 'Abhishek', 'Kapoor'),
(678, 'Harshwardhan', 'Kulkarni'),
(527, 'Shoojit', 'Sircar'),
(618, 'Bandreddi', 'Sukumar'),
(209, 'Laxman', 'Utekar'),
(310, 'R', 'Madhavan'),
(511, 'Christopher', 'Nolan');

select * from director;


/* Genres Table */


create table genres(
gen_id int primary key,
gen_title varchar(20)
);

insert into genres values
(114, 'War/Action'),
(224, 'Romance/Thriller'),
(346, 'Action/Crime'),
(441, 'Sports/Drama'),
(554, 'Romance/Drama'),
(663, 'Comedy/Romance'),
(748, 'Crime/Drama'),
(846, 'Action/Crime'),
(948, 'Comedy/Drama'),
(101, 'Drama/Sci-fi'),
(112, 'Sci-fi'),
(549, 'Comedy/Action');

select * from genres;


/* Actor Table */


create table actor(
act_id int primary key,
act_fname varchar(20),
act_lname varchar(20),
act_gender varchar(1)
);

select * from actor;

insert into actor values
(11, 'Sidharth', 'Malhotra', 'M'),
(22, 'Kiara', 'Advani', 'F'),
(33, 'Siddhant', 'Chaturvedi', 'M'),
(44, 'Deepika', 'Padukone', 'F'),
(55, 'Akshay', 'Kumar', 'M'),
(66, 'Katrina', 'Kaif', 'F'),
(77, 'Ranveer', 'Singh', 'M'),
(88, 'Deepika', 'Padukone', 'F'),
(99, 'Ayushmann', 'Khurrana', 'M'),
(10, 'Vaani', 'Kapoor', 'F'),
(21, 'Rajkummar', 'Rao', 'M'),
(32, 'Bhumi', 'Pednekar', 'F'),
(43, 'Vicky', 'Kaushal', 'M'),
(54, 'Banita', 'Sandhu', 'F'),
(65, 'Allu', 'Arjun', 'M'),
(76, 'Rashmika', 'Mandanna', 'F'),
(87, 'Pankaj', 'Tripathi', 'M'),
(98, 'Kriti', 'Sanon', 'F'),
(19, 'R.', 'Madhavan', 'M'),
(20, 'Simran', 'Madhavan', 'F'),
(79, 'Matthew','McConaughey', 'M'),
(49, 'Anne', 'Hathaway', 'F');

select * from actor;

/* Reviewer Table */


create table reviewer(
rev_id int primary key,
rev_name varchar(30)
);

select * from reviewer;


/* movie_cast table */


create table movie_cast(
act_id int,
mov_id int,
role varchar(30),
foreign key(act_id) references actor(act_id),
foreign key(mov_id) references movie(mov_id)
);

insert into movie_cast values
(11, 1, 'Vikram Batra'),
(22, 1, 'Dimpal Cheema'),
(33, 2, 'Zain Oberoi'),
(44, 2, 'Alisha'),
(55, 3, 'Veer Sooryavashi'),
(66, 3, 'Ria Sooryavashi'),
(77, 4, 'Kapil Dev'),
(88, 4, 'Romi Bhatia'),
(99, 5, 'Manu'),
(10, 5, 'Maanvi'),
(21, 6, 'Shardul Thakur'),
(32, 6, 'Sumi Singh'),
(43, 7, 'Uddham Singh'),
(54, 7, 'Shrushti Tiwari'),
(65, 8, 'Pushpa Raj'),
(76, 8, 'Srivalli'),
(87, 9, 'Bhanu Pratap'),
(98, 9, 'Mimi Rathore'),
(19, 10, 'Nambi Narayanan'),
(20, 10, 'Meena Nambi'),
(79, 11, 'Cooper'),
(49, 11, 'Brand');

select * from movie_cast;


/* Movie Direction Table */


create table movie_direction(
dir_id int,
mov_id int,
foreign key(dir_id) references director(dir_id),
foreign key(mov_id) references movie(mov_id)
);

insert into movie_direction values
(102, 1),

(221, 2),
(336, 3),
(441, 4),
(554, 5),
(678, 6),
(527, 7),
(618, 8),
(209, 9),
(310, 10),
(511, 11);

select * from movie_direction;

/* Movie Genres Table */


create table movie_genres(
mov_id int,
gen_id int,
foreign key(mov_id) references movie(mov_id),
foreign key(gen_id) references genres(gen_id)
);

insert into movie_genres values
(1, 114),
(2, 224),
(3, 346),
(4, 441),

(5, 554),
(6, 663),
(7, 748),
(8, 846),
(9, 948),
(10, 101),
(11, 112);

select * from movie_genres;


/* Rating Table */


create table rating(
mov_id int,
rev_id int,
rev_stars int,
num_o_ratings int,
foreign key(mov_id) references movie(mov_id),
foreign key(rev_id) references reviewer(rev_id)
);

insert into rating values
(1, 101, 4, 654),
(2, 202, 3, 214),
(3, 303, 3, 144),
(4, 404, 5, 464),
(5, 505, 2, 365),

(6, 606, 4, 312),
(7, 707, 4, 456),
(8, 808, 5, 798),
(9, 909, 3, 489),
(10, 110, 5, 956),
(11, 211, 5, 1001);

select * from rating;



/* 1. Write a query to display the actor name and movie name together */

select a.act_fname, a.act_lname, m.mov_title 
from actor a join movie_cast mc on a.act_id = mc.act_id join movie m on
m.mov_id = mc.mov_id; 


/* 2. Write a query to display the total review of the movie */

select m.mov_id, m.mov_title, count(r.rev_id) as 'Total Reviews'
from movie m left join rating r on m.mov_id = r.mov_id
group by m.mov_id, m.mov_title;




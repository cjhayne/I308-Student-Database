BUILDING 
CREATE TABLE building (
	building_code INT NOT NULL,
	addr_street VARCHAR(50) NOT NULL,
	addr_city VARCHAR(50) NOT NULL,
	addr_state VARCHAR(50) NOT NULL,
	addr_zip VARCHAR(5) NOT NULL,
	PRIMARY KEY(building_code)
);
insert into building (building_code, addr_street, addr_city, addr_state, addr_zip) values (1042, '3613 Monterey Avenue', 'Monticello', 'MN', '55565');
insert into building (building_code, addr_street, addr_city, addr_state, addr_zip) values (64, '6 Blackbird Pass', 'Bloomington', 'IL', '61709');
insert into building (building_code, addr_street, addr_city, addr_state, addr_zip) values (5717, '0 Prentice Center', 'Des Moines', 'IA', '50305');

CLASSROOM
create table classroom (
	classroom_id INT AUTO_INCREMENT,
	capacity INT NOT NULL,
	feature VARCHAR(12),
	PRIMARY KEY(classroom_id)
);
insert into classroom (classroom_id, capacity, feature) values (1, 75, 'Auditorium');
insert into classroom (classroom_id, capacity, feature) values (2, 82, 'Auditorium');
insert into classroom (classroom_id, capacity, feature) values (3, 18, 'Lecture Hall');
insert into classroom (classroom_id, capacity, feature) values (4, 28, 'Library');
insert into classroom (classroom_id, capacity, feature) values (5, 77, 'Computer Lab');
insert into classroom (classroom_id, capacity, feature) values (6, 44, 'Library');
insert into classroom (classroom_id, capacity, feature) values (7, 51, 'Computer Lab');
insert into classroom (classroom_id, capacity, feature) values (8, 59, 'Library');
insert into classroom (classroom_id, capacity, feature) values (9, 35, 'Computer Lab');
insert into classroom (classroom_id, capacity, feature) values (10, 24, 'Design Lab');
insert into classroom (classroom_id, capacity, feature) values (11, 72, 'Library');
insert into classroom (classroom_id, capacity, feature) values (12, 39, 'SRSC');
insert into classroom (classroom_id, capacity, feature) values (13, 31, 'Library');
insert into classroom (classroom_id, capacity, feature) values (14, 44, 'Lecture Hall');
insert into classroom (classroom_id, capacity, feature) values (15, 73, 'SRSC');
insert into classroom (classroom_id, capacity, feature) values (16, 98, 'Lecture Hall');

BUILDING_CLASSROOM
create table building_classroom (
	building_code INT NOT NULL,
	classroom_id INT NOT NULL,
	FOREIGN KEY(building_code) REFERENCES building(building_code),
	FOREIGN KEY(classroom_id) REFERENCES classroom(classroom_id)
);

insert into building_classroom (building_code, classroom_id) values (5717, 12);
insert into building_classroom (building_code, classroom_id) values (5717, 3);
insert into building_classroom (building_code, classroom_id) values (1042, 1);
insert into building_classroom (building_code, classroom_id) values (64, 12);
insert into building_classroom (building_code, classroom_id) values (1042, 5);
insert into building_classroom (building_code, classroom_id) values (5717, 10);
insert into building_classroom (building_code, classroom_id) values (64, 7);
insert into building_classroom (building_code, classroom_id) values (64, 13);
insert into building_classroom (building_code, classroom_id) values (1042, 16);
insert into building_classroom (building_code, classroom_id) values (64, 5);
insert into building_classroom (building_code, classroom_id) values (1042, 9);
insert into building_classroom (building_code, classroom_id) values (64, 15);
insert into building_classroom (building_code, classroom_id) values (5717, 6);
insert into building_classroom (building_code, classroom_id) values (1042, 2);
insert into building_classroom (building_code, classroom_id) values (1042, 6);
insert into building_classroom (building_code, classroom_id) values (1042, 2);



STUDENTS
create table students (
	id INT AUTO_INCREMENT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	addr_street VARCHAR(50),
	addr_state VARCHAR(50),
	addr_city VARCHAR(50),
	addr_zip VARCHAR(50),
gpa DECIMAL(3,2),
	PRIMARY KEY(id)
);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (1, 'Elyse', 'Dolder', '63068 Valley Edge Circle', 'Texas', 'San Antonio', '78255', 2.11);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (2, 'Dahlia', 'Bendin', '12195 Butterfield Center', 'Nevada', 'Las Vegas', '89166', 3.42);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (3, 'Rickard', 'Iwanowski', '2964 Charing Cross Pass', 'North Carolina', 'Charlotte', '28289', 1.93);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (4, 'Zonda', 'Yeiles', '85 1st Court', 'Missouri', 'Kansas City', '64142', 2.75);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (5, 'Veronica', 'Trunby', '71 Ryan Alley', 'Texas', 'Abilene', '79699', 3.47);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (6, 'Kayle', 'Worden', '288 Tennyson Place', 'New York', 'Brooklyn', '11247', 2.55);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (7, 'Cammi', 'Zuker', '6 Main Terrace', 'Pennsylvania', 'Scranton', '18514',3.34);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (8, 'Jobie', 'Hrinchenko', '9 Londonderry Court', 'Texas', 'Fort Worth', '76192', 3.22);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (9, 'Waring', 'Fitzsimmons', '89139 Clarendon Hill', 'Pennsylvania', 'Erie', '16550' 3.91);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (10, 'Roselia', 'Shepperd', '58458 Vidon Street', 'New York', 'Albany', '12247', 2.91);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (11, 'Mina', 'Giorgio', '3 Dapin Place', 'Washington', 'Vancouver', '98664', 1.97);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (12, 'Winthrop', 'Verbeek', '6 Aberg Parkway', 'Oregon', 'Portland', '97211', 2.70);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (13, 'Aurelea', 'Jouhandeau', '9306 Melody Way', 'California', 'Fresno', '93773', 2.84);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (14, 'Rafaelia', 'Aishford', '4 Sundown Street', 'California', 'Escondido', '92030', 4.00);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (15, 'Bekki', 'Harrigan', '91 Leroy Avenue', 'Tennessee', 'Jackson', '38308', 3.43);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (16, 'Lem', 'Gateley', '173 Hayes Crossing', 'California', 'Irvine', '92619', 2.63);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (17, 'Tully', 'Franschini', '046 Buhler Point', 'Pennsylvania', 'Johnstown', '15906', 2.50);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (18, 'Liva', 'Iacopo', '44022 Stang Street', 'Louisiana', 'Baton Rouge', '70820', 4.00);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (19, 'Lindi', 'Seckom', '8 Thompson Terrace', 'Alabama', 'Montgomery', '36177', 1.21);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (20, 'Mordy', 'MacKessock', '18710 Kim Alley', 'California', 'Sacramento', '94237'. 3.84);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (21, 'Millard', 'Rathe', '7 Waxwing Street', 'District of Columbia', 'Washington', '20260'. 3.46);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (22, 'Joyan', 'Gent', '3 Haas Alley', 'Michigan', 'Midland', '48670', 3.14);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (23, 'Amber', 'Kidwell', '21000 Basil Avenue', 'California', 'Santa Rosa', '95405', 4.00);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (24, 'Gerry', 'Godwyn', '2757 Sutherland Way', 'California', 'Fresno', '93778', 2.50);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (25, 'Sabra', 'Baynom', '72 Katie Trail', 'Texas', 'Fort Worth', '76129', 3.93);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (26, 'Eyde', 'Piatkow', '58 Linden Point', 'Florida', 'Naples', '34108', 3.32);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (27, 'Gene', 'Ferrettini', '0716 North Street', 'Indiana', 'Fort Wayne', '46805', 2.34);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (28, 'Nelli', 'Kingham', '5834 Old Shore Circle', 'South Dakota', 'Sioux Falls', '57110', 1.44);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (29, 'Morgana', 'Thickett', '5 Spenser Hill', 'California', 'Sacramento', '95894', 2.73);
insert into students (id, first_name, last_name, addr_street, addr_state, addr_city, addr_zip, gpa) values (30, 'Kirstin', 'Dowzell', '1883 Memorial Way', 'Louisiana', 'Shreveport', '71166', 3.56);




STUDENT_PHN
create table student_phn (
	student_id INT,
	phone VARCHAR(50),
	type VARCHAR(4),
	FOREIGN KEY(student_id) REFERENCES students(id)
);
insert into student_phn (student_id, phone, type) values (1, '916-823-4349', 'work');
insert into student_phn (student_id, phone, type) values (2, '165-466-1974', 'home');
insert into student_phn (student_id, phone, type) values (3, '592-222-8520', 'work');
insert into student_phn (student_id, phone, type) values (4, '197-694-9263', 'home');
insert into student_phn (student_id, phone, type) values (5, '882-961-4033', 'home');
insert into student_phn (student_id, phone, type) values (6, '758-258-4006', 'home');
insert into student_phn (student_id, phone, type) values (7, '146-511-6688', 'home');
insert into student_phn (student_id, phone, type) values (8, '225-909-0664', 'home');
insert into student_phn (student_id, phone, type) values (9, '762-844-5132', 'cell');
insert into student_phn (student_id, phone, type) values (10, '219-496-7179', 'home');
insert into student_phn (student_id, phone, type) values (11, '631-606-5081', 'home');
insert into student_phn (student_id, phone, type) values (12, '475-908-4242', 'work');
insert into student_phn (student_id, phone, type) values (13, '569-811-8974', 'cell');
insert into student_phn (student_id, phone, type) values (14, '489-996-5254', 'cell');
insert into student_phn (student_id, phone, type) values (15, '410-841-5415', 'home');
insert into student_phn (student_id, phone, type) values (16, '102-745-0171', 'home');
insert into student_phn (student_id, phone, type) values (17, '516-832-7663', 'work');
insert into student_phn (student_id, phone, type) values (18, '718-183-1306', 'cell');
insert into student_phn (student_id, phone, type) values (19, '677-227-3012', 'work');
insert into student_phn (student_id, phone, type) values (20, '521-377-2065', 'cell');
insert into student_phn (student_id, phone, type) values (21, '808-467-9892', 'cell');
insert into student_phn (student_id, phone, type) values (22, '964-409-6793', 'home');
insert into student_phn (student_id, phone, type) values (23, '194-609-6795', 'cell');
insert into student_phn (student_id, phone, type) values (24, '149-464-9302', 'cell');
insert into student_phn (student_id, phone, type) values (25, '715-475-6256', 'cell');
insert into student_phn (student_id, phone, type) values (26, '138-513-7095', 'cell');
insert into student_phn (student_id, phone, type) values (27, '209-841-1853', 'home');
insert into student_phn (student_id, phone, type) values (28, '970-763-2445', 'work');
insert into student_phn (student_id, phone, type) values (29, '215-194-5974', 'home');
insert into student_phn (student_id, phone, type) values (30, '326-195-0610', 'work');



STUDENT_EMAIL
create table student_email (
	student_id INT,
	email VARCHAR(50),
	type VARCHAR(8),
	FOREIGN KEY(student_id) REFERENCES students(id)
);
insert into student_email (student_id, email, type) values (1, 'hchaddock0@bloglines.com', 'work');
insert into student_email (student_id, email, type) values (2, 'kmolder1@abc.net.au', 'personal');
insert into student_email (student_id, email, type) values (3, 'lpowter2@wsj.com', 'work');
insert into student_email (student_id, email, type) values (4, 'htwallin3@freewebs.com', 'personal');
insert into student_email (student_id, email, type) values (5, 'gfaichnie4@usa.gov', 'personal');
insert into student_email (student_id, email, type) values (6, 'omacmearty5@biglobe.ne.jp', 'personal');
insert into student_email (student_id, email, type) values (7, 'lfarish6@microsoft.com', 'work');
insert into student_email (student_id, email, type) values (8, 'jbardill7@weibo.com', 'personal');
insert into student_email (student_id, email, type) values (9, 'cyitzowitz8@apple.com', 'school');
insert into student_email (student_id, email, type) values (10, 'agetcliffe9@mashable.com', 'school');
insert into student_email (student_id, email, type) values (11, 'brenea@phpbb.com', 'work');
insert into student_email (student_id, email, type) values (12, 'ltappingtonb@toplist.cz', 'work');
insert into student_email (student_id, email, type) values (13, 'lpiollic@yellowpages.com', 'school');
insert into student_email (student_id, email, type) values (14, 'ytarbardd@opensource.org', 'personal');
insert into student_email (student_id, email, type) values (15, 'mwinspearee@dyndns.org', 'work');
insert into student_email (student_id, email, type) values (16, 'nmackinf@ucsd.edu', 'school');
insert into student_email (student_id, email, type) values (17, 'ojewissg@cnn.com', 'work');
insert into student_email (student_id, email, type) values (18, 'gtinceyh@facebook.com', 'personal');
insert into student_email (student_id, email, type) values (19, 'jbeardsdalei@odnoklassniki.ru', 'school');
insert into student_email (student_id, email, type) values (20, 'ndemezaj@homestead.com', 'work');
insert into student_email (student_id, email, type) values (21, 'rmack@linkedin.com', 'work');
insert into student_email (student_id, email, type) values (22, 'ftackesl@whitehouse.gov', 'work');
insert into student_email (student_id, email, type) values (23, 'ngallifontm@webnode.com', 'school');
insert into student_email (student_id, email, type) values (24, 'ffilippovn@printfriendly.com', 'personal');
insert into student_email (student_id, email, type) values (25, 'ftregieno@springer.com', 'school');
insert into student_email (student_id, email, type) values (26, 'chardiep@techcrunch.com', 'personal');
insert into student_email (student_id, email, type) values (27, 'mbownasq@comcast.net', 'work');
insert into student_email (student_id, email, type) values (28, 'hdarguer@guardian.co.uk', 'school');
insert into student_email (student_id, email, type) values (29, 'vwarkes@japanpost.jp', 'work');
insert into student_email (student_id, email, type) values (30, 'ocapront@about.me', 'personal');


DEPARTMENT
CREATE TABLE department (
	dept_id INT AUTO_INCREMENT,
	course_subject VARCHAR(4),
	dept_chair VARCHAR(50),
	PRIMARY KEY(dept_id)
);
insert into department (course_subject,dept_chair) values ('INFO', “Johnathan Shultz”);
insert into department (course_subject, dept_chair) values ('CS',”Bobby Bushey”);
insert into department (course_subject,dept_chair) values ('MATH', “Adam Sandler”);



SEMESTER
create table semester (
	Semester_id INT AUTO_INCREMENT,
	semester VARCHAR(11),
	start_date VARCHAR(10),
	end_date VARCHAR(10),
	PRIMARY KEY(semester_id)
);
insert into semester (semester, start_date, end_date) values ('Fall_2020', '2020-08-16', '2020-12-16');
insert into semester (semester, start_date, end_date) values ('Spring_2021', '2021-01-01', '2021-05-01');
insert into semester (semester, start_date, end_date) values ('Fall_2021', '2021-08-16', '2021-12-16');
insert into semester (semester, start_date, end_date) values ('Spring_2022', '2022-01-01', '2022-05-01');


FACULTY
create table faculty (
	faculty_id INT,
	fname VARCHAR(50),
	lname VARCHAR(50),
	hire_date DATE,
	office_num INT,
	phone VARCHAR(50),
	dept_id INT,
	PRIMARY KEY(faculty_id),
	FOREIGN KEY(dept_id) REFERENCES department(dept_id)
);
insert into faculty (faculty_id, fname, lname, hire_date, office_num, phone, dept_id) values (1, 'Vasily', 'Wallhead', '1981-02-20', 199, '894-882-5716', 1);
insert into faculty (faculty_id, fname, lname, hire_date, office_num, phone, dept_id) values (2, 'Victor', 'Hamlyn', '2003-06-10', 98, '226-869-5725',1);
insert into faculty (faculty_id, fname, lname, hire_date, office_num, phone, dept_id) values (3, 'Inglis', 'Matussevich', '2008-04-04', 137, '465-486-1934',2);
insert into faculty (faculty_id, fname, lname, hire_date, office_num, phone, dept_id) values (4, 'Nyssa', 'Henkmann', '1990-06-28', 20, '203-626-0295', NULL);
insert into faculty (faculty_id, fname, lname, hire_date, office_num, phone, dept_id) values (5, 'Lillian', 'Bastian', '2007-01-25', 137, '787-697-4605', 1);
insert into faculty (faculty_id, fname, lname, hire_date, office_num, phone, dept_id) values (6, 'Beverley', 'Di Batista', '2015-06-01', 26, '589-307-0824',3);
insert into faculty (faculty_id, fname, lname, hire_date, office_num, phone, dept_id) values (7, 'Libbey', 'Euesden', '2000-09-27', 9, '828-577-4049', 1);
insert into faculty (faculty_id, fname, lname, hire_date, office_num, phone, dept_id) values (8, 'Tedd', 'Westcarr', '2017-02-04', 150, '710-878-6758', 2);
insert into faculty (faculty_id, fname, lname, hire_date, office_num, phone, dept_id) values (9, 'Ashlie', 'Ferrettini', '2000-10-19', 74, '368-653-0667', 2);
insert into faculty (faculty_id, fname, lname, hire_date, office_num, phone, dept_id) values (10, 'Francklyn', 'Kertess', '2003-02-21', 141, '161-186-2057', 3);


FACULTY EMAIL

Create table faculty_email (
	faculty_id INT,
	email VARCHAR(40),
	type VARCHAR(10),
	FOREIGN KEY(faculty_id) REFERENCES faculty(faculty_id)
);

insert into faculty_email(faculty_id,email,type) values (1, "vasillywall@iu.edu","work");
insert into faculty_email(faculty_id,email,type) values (1, "vassycassy@gmail.com","personal");
insert into faculty_email(faculty_id,email,type) values (2, "victorham@iu.edu","work");
insert into faculty_email(faculty_id,email,type) values (2, "thehamman@yahoo.com","personal");
insert into faculty_email(faculty_id,email,type) values (3, "inglismat@iu.edu","work");
insert into faculty_email(faculty_id,email,type) values (3, "yaboiinglis@yahoo.com","personal");
insert into faculty_email(faculty_id,email,type) values (4, "nyssahen@iu.edu","work");
insert into faculty_email(faculty_id,email,type) values (4, "hennagirl12@gmail.com","personal");
insert into faculty_email(faculty_id,email,type) values (5, "lillianbas@iu.edu","work");
insert into faculty_email(faculty_id,email,type) values (5, "bastionmain@gmail.com","personal");
insert into faculty_email(faculty_id,email,type) values (6, "beverlybat@iu.edu","work");
insert into faculty_email(faculty_id,email,type) values (6, "thebeverily3@yahoo.com","personal");
insert into faculty_email(faculty_id,email,type) values (7, "libbeyeue@iu.edu","work");
insert into faculty_email(faculty_id,email,type) values (7, "euelibbey@yahoo.com","personal");
insert into faculty_email(faculty_id,email,type) values (8, "teddwest@iu.edu","work");
insert into faculty_email(faculty_id,email,type) values (8, "headwestted@gmail.com","personal");
insert into faculty_email(faculty_id,email,type) values (9, "ashlieferr@iu.edu","work");
insert into faculty_email(faculty_id,email,type) values (9, "fairnash34@yahoo.com","personal");
insert into faculty_email(faculty_id,email,type) values (10, "frankert@iu.edu","work");
insert into faculty_email(faculty_id,email,type) values (10, "verykertess@gmail.com","personal");



MAJOR 
create table major (
	major_id  INT AUTO_INCREMENT,
	major_name VARCHAR(19),
	PRIMARY KEY(major_id)
);
insert into major (major_name) values (“Computer Science BS”);
insert into major (major_name) values (“Math BS”);
insert into major (major_name) values (“Math BA”);
insert into major (major_name) values (“Computer Science BA”);
insert into major (major_name) values (“Informatics BA”);
insert into major (major_name) values (“Informatics BS”);


STUDENT_MAJOR
create table student_major (
	student_id INT,
	major_id INT,
	hours_passed INT,
	FOREIGN KEY(student_id) REFERENCES students(id),
	FOREIGN KEY(major_id) REFERENCES major(major_id)
);
insert into student_major (student_id, major_id, hours_passed) values (1,6, 4);
insert into student_major (student_id, major_id, hours_passed) values (2, 1, 5);
insert into student_major (student_id, major_id, hours_passed) values (3, 1, 5);
insert into student_major (student_id, major_id, hours_passed) values (4,4, 6);
insert into student_major (student_id, major_id, hours_passed) values (5, 1, 4);
insert into student_major (student_id, major_id, hours_passed) values (6, 5, 5);
insert into student_major (student_id, major_id, hours_passed) values (7,6, 4);
insert into student_major (student_id, major_id, hours_passed) values (8, 4, 5);
insert into student_major (student_id, major_id, hours_passed) values (9, 3, 5);
insert into student_major (student_id, major_id, hours_passed) values (10,2, 6);
insert into student_major (student_id, major_id, hours_passed) values (11, 2, 6);
insert into student_major (student_id, major_id, hours_passed) values (12,1, 6);
insert into student_major (student_id, major_id, hours_passed) values (13, 5, 4);
insert into student_major (student_id, major_id, hours_passed) values (14, 5, 5);
insert into student_major (student_id, major_id, hours_passed) values (15, 5, 6);
insert into student_major (student_id, major_id, hours_passed) values (16, 1, 4);
insert into student_major (student_id, major_id, hours_passed) values (17, 6, 5);
insert into student_major (student_id, major_id, hours_passed) values (18, 6, 6);
insert into student_major (student_id, major_id, hours_passed) values (19, 6, 5);
insert into student_major (student_id, major_id, hours_passed) values (20, 5, 4);
insert into student_major (student_id, major_id, hours_passed) values (21,2, 5);
insert into student_major (student_id, major_id, hours_passed) values (22,6, 6);
insert into student_major (student_id, major_id, hours_passed) values (23, 2, 5);
insert into student_major (student_id, major_id, hours_passed) values (24,1, 5);
insert into student_major (student_id, major_id, hours_passed) values (25, 2, 4);
insert into student_major (student_id, major_id, hours_passed) values (26, 4, 4);
insert into student_major (student_id, major_id, hours_passed) values (27, 3, 5);
insert into student_major (student_id, major_id, hours_passed) values (28, 5, 5);
insert into student_major (student_id, major_id, hours_passed) values (29, 4, 6);
insert into student_major (student_id, major_id, hours_passed) values (30, 4, 6);

MAJOR_DEPARTMENT
create table major_department (
	Major_id INT,
	dept_id INT,
	FOREIGN KEY(major_id) REFERENCES major(major_id),
	FOREIGN KEY(dept_id) REFERENCES department(dept_id)
);
insert into major_department (major_id, dept_id) values (6, 1);
insert into major_department (major_id, dept_id) values (5, 1);
insert into major_department (major_id, dept_id) values (4, 2);
insert into major_department (major_id, dept_id) values (1, 2);
insert into major_department (major_id, dept_id) values (3, 3);
insert into major_department (major_id, dept_id) values (2, 3);

STUDENTS_PARENT_INFO
create table students_parent_info (
	parent_id INT AUTO_INCREMENT,
	student_id INT,
	fname VARCHAR(50),
	lname VARCHAR(50),
	phone VARCHAR(50),
	PRIMARY KEY(parent_id),
	FOREIGN KEY(student_id) REFERENCES students(id)
);
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (1, 1, 'Lotty', 'Champneys', '423-403-7009');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (2, 2, 'Zorah', 'Fewings', '522-884-0969');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (3, 3, 'Massimo', 'Heeks', '196-620-5169');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (4, 4, 'Aloysius', 'Nugent', '490-411-5217');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (5, 5, 'Esme', 'McKelvey', '469-948-9508');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (6, 6, 'Noella', 'Doorly', '850-778-8334');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (7, 7, 'Florance', 'Greetland', '380-335-3496');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (8, 8, 'Cassandry', 'Pyzer', '205-163-3731');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (9, 9, 'Lou', 'Farguhar', '812-122-2089');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (10, 10, 'Nell', 'Castello', '157-910-9947');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (11, 11, 'Shay', 'Dedon', '596-892-4252');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (12, 12, 'Darrelle', 'Spoole', '157-623-7406');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (13, 13, 'Reinald', 'Gooly', '945-408-0429');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (14, 14, 'Deane', 'Gobeau', '976-544-7860');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (15, 15, 'Nara', 'Rowbotham', '446-417-8195');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (16, 16, 'Costa', 'Denton', '654-372-5800');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (17, 17, 'Brittany', 'Moggach', '226-680-4050');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (18, 18, 'Emmerich', 'Swainson', '386-458-2084');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (19, 19, 'Gertrud', 'Van der Velden', '938-169-2985');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (20, 20, 'Sosanna', 'O''Meara', '479-754-7978');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (21, 21, 'Donia', 'Strutton', '181-962-1504');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (22, 22, 'Kenneth', 'Frankcom', '362-697-8046');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (23, 23, 'Drusilla', 'Dunsford', '232-531-4485');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (24, 24, 'Roman', 'Stanfield', '149-138-2970');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (25, 25, 'Carrie', 'Dewdeny', '269-247-3723');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (26, 26, 'Bridgette', 'Cardinal', '769-666-4488');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (27, 27, 'Ripley', 'Huffer', '912-829-5057');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (28, 28, 'Esme', 'Staresmeare', '339-820-1815');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (29, 29, 'Caria', 'Ivamy', '332-497-6962');
insert into students_parent_info (parent_id, student_id, fname, lname, phone) values (30, 30, 'Avie', 'Cejka', '702-888-4105');



COURSES 
create table courses (
	course_id INT AUTO_INCREMENT PRIMARY KEY,
	course_code VARCHAR(10) NOT NULL,
	title VARCHAR(41) NOT NULL,
	credit_hours INT NOT NULL,
	prereqisite_id INT,
	FOREIGN KEY(prereqisite_id) REFERENCES courses(course_id)
);
insert into courses (course_code, title, credit_hours) values (1,‘INFO-I I101’, ‘Introduction To Informatics’,2);
insert into courses (course_code, title, credit_hours) values (2,‘INFO-I 201’, 'Mathematical Foundations Of Informatics',3, 1);
insert into courses (course_code, title, credit_hours) values (3,‘MATH-M 27’, 'Precalculus With Trigonometry',1);
insert into courses (course_code, title, credit_hours) values (4,"CSCI-C 200", 'Introduction to Computers and Programming',3);
insert into courses (course_code, title, credit_hours) values (5,‘CSCI-B 351’, 'Introduction to Artificial Intelligence', 1, 4);
insert into courses (course_code, title, credit_hours) values (6,‘MATH-K 310’, 'Statistical Techniques',3, 3);
insert into courses (course_code, title, credit_hours) values (7,‘MATH-M 211’, 'Calculus 1',3, 3);
insert into courses (course_code, title, credit_hours) values (8,‘INFO-I 300’, 'Human-Computer Interaction And Design',3, 1);
insert into courses (course_code, title, credit_hours) values (9,‘INFO-I 202’, 'Social Informatics',3, 2);
insert into courses (course_code, title, credit_hours) values (10,'INFO-I 210', 'Information Infrastructures 1',3, 1);
insert into courses (course_code, title, credit_hours) values (11,‘INFO-I 123’, 'Data Fluency',2, 1);
insert into courses (course_code, title, credit_hours) values (12,‘INFO-I 211’, 'Information Infrastructure 2',4, 10);
insert into courses (course_code, title, credit_hours) values (13,‘INFO-I 308’, 'Information Representation',3, 2);
insert into courses (course_code, title, credit_hours) values (14,‘INFO-I 400’, 'Peer Teaching In Informatics',4, 2);
insert into courses (course_code, title, credit_hours) values (15,‘CSCI-A 290’, 'Tools For Computing (Javascript)',3, 4);
insert into courses (course_code, title, credit_hours) values (16,‘INFO-I 130’, 'Introduction To Cybersecurity',2, 1);
insert into courses (course_code, title, credit_hours) values (17,‘CSCI-A 201’, ‘Introduction to Programming 1’, 3);
insert into courses (course_code, title, credit_hours) values (18,‘CSCI-A 202’, ‘Introduction to Programming 2’,3, 17);
insert into courses (course_code, title, credit_hours) values (19,‘MATH-D 116’, ‘Introduction To Finite Math 1’, 3, 3);
insert into courses (course_code, title, credit_hours) values (20,‘MATH-D 117’, ‘Introduction To Finite Math 2’,3, 19);

SECTION
Create table section (
	section_id INT AUTO_INCREMENT,
	section_num INT NOT NULL,
	start_time TIME NOT NULL,
	end_time TIME NOT NULL,
	PRIMARY KEY(section_id)
);
insert into section (section_num,start_time, end_time) values ('1111','08:00:00','09:15:00');
insert into section (section_num,start_time, end_time) values ('2222','09:45:00','10:00:00');
insert into section (section_num,start_time, end_time) values ('3333','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('4444','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('5555','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('6666','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('7777','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('8888','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('9999','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('1222','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('1333','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('1444','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('1555','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('1666','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('1777','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('1888','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('1999','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('2111','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('2333','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('2444','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('2555','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('2666','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('2777','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('2888','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('2999','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('3111','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('3222','15:00:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('3444','11:00:00','12:15:00');
insert into section (section_num,start_time, end_time) values ('3555','13:15:00','14:30:00');
insert into section (section_num,start_time, end_time) values ('3666','16:00:00','17:15:00');
insert into section (section_num,start_time, end_time) values ('3777','18:00:00','19:15:00');
insert into section (section_num,start_time, end_time) values ('3888','19:00:00','20:15:00');
insert into section (section_num,start_time, end_time) values ('3999','08:45:00','10:00:00');
insert into section (section_num,start_time, end_time) values ('4111','08:00:00','09:15:00');
insert into section (section_num,start_time, end_time) values ('4222','10:00:00','11:15:00');
insert into section (section_num,start_time, end_time) values ('4333','11:30:00','12:45:00');
insert into section (section_num,start_time, end_time) values ('4555','15:00:00','16:15:00');
insert into section (section_num,start_time, end_time) values ('4666','15:15:00','16:30:00');
insert into section (section_num,start_time, end_time) values ('4777','11:00:00','12:15:00');
insert into section (section_num,start_time, end_time) values ('4888','09:15:00','10:30:00');


SECTION_SEMESTER
create table section_semester (
	section_id INT,
	semester_id INT,
	FOREIGN KEY(section_id) REFERENCES section(section_id),
	FOREIGN KEY(semester_id) REFERENCES semester(semester_id)
);
insert into section_semester (section_id, semester_id) values (1, 1);
insert into section_semester (section_id, semester_id) values (1,2);
insert into section_semester (section_id, semester_id) values (2,1);
insert into section_semester (section_id, semester_id) values (2, 2);
insert into section_semester (section_id, semester_id) values (3, 1);
insert into section_semester (section_id, semester_id) values (4, 1);
insert into section_semester (section_id, semester_id) values (5, 1);
insert into section_semester (section_id, semester_id) values (5, 3);
insert into section_semester (section_id, semester_id) values (6, 1);
insert into section_semester (section_id, semester_id) values (6, 3);
insert into section_semester (section_id, semester_id) values (7, 1);
insert into section_semester (section_id, semester_id) values (8, 1);
insert into section_semester (section_id, semester_id) values (9, 1);
insert into section_semester (section_id, semester_id) values (9, 2);
insert into section_semester (section_id, semester_id) values (10, 1);
insert into section_semester (section_id, semester_id) values (10, 2);
insert into section_semester (section_id, semester_id) values (11, 4);
insert into section_semester (section_id, semester_id) values (12, 4);
insert into section_semester (section_id, semester_id) values (13,3);
insert into section_semester (section_id, semester_id) values (14, 3);
insert into section_semester (section_id, semester_id) values (15, 1);
insert into section_semester (section_id, semester_id) values (16, 1);
insert into section_semester (section_id, semester_id) values (17, 2);
insert into section_semester (section_id, semester_id) values (17, 3);
insert into section_semester (section_id, semester_id) values (18, 2);
insert into section_semester (section_id, semester_id) values (18, 3);
insert into section_semester (section_id, semester_id) values (19, 1);
insert into section_semester (section_id, semester_id) values (19, 3);
insert into section_semester (section_id, semester_id) values (19, 4);
insert into section_semester (section_id, semester_id) values (20, 1);
insert into section_semester (section_id, semester_id) values (20, 3);
insert into section_semester (section_id, semester_id) values (20, 4);
insert into section_semester (section_id, semester_id) values (21, 1);
insert into section_semester (section_id, semester_id) values (21, 2);
insert into section_semester (section_id, semester_id) values (22, 1);
insert into section_semester (section_id, semester_id) values (22, 2);
insert into section_semester (section_id, semester_id) values (23, 3);
insert into section_semester (section_id, semester_id) values (24, 3);
insert into section_semester (section_id, semester_id) values (25, 4);
insert into section_semester (section_id, semester_id) values (26, 4);
insert into section_semester (section_id, semester_id) values (27,1);
insert into section_semester (section_id, semester_id) values (28,1);
insert into section_semester (section_id, semester_id) values (29, 2);
insert into section_semester (section_id, semester_id) values (30, 2);
insert into section_semester (section_id, semester_id) values (31, 2);
insert into section_semester (section_id, semester_id) values (31, 4);
insert into section_semester (section_id, semester_id) values (32, 2);
insert into section_semester (section_id, semester_id) values (32, 4);
insert into section_semester (section_id, semester_id) values (33, 1);
insert into section_semester (section_id, semester_id) values (34, 1);
insert into section_semester (section_id, semester_id) values (35, 2);
insert into section_semester (section_id, semester_id) values (36, 2);
insert into section_semester (section_id, semester_id) values (37, 2);
insert into section_semester (section_id, semester_id) values (37, 4);
insert into section_semester (section_id, semester_id) values (38, 2);
insert into section_semester (section_id, semester_id) values (38, 4);
insert into section_semester (section_id, semester_id) values (39, 1);
insert into section_semester (section_id, semester_id) values (39, 3);
insert into section_semester (section_id, semester_id) values (40, 1);
insert into section_semester (section_id, semester_id) values (40, 3);




create table section_faculty (
	section_id INT,
	faculty_id INT,
	FOREIGN KEY(section_id) REFERENCES section(section_id),
	FOREIGN KEY(faculty_id) REFERENCES faculty(faculty_id)
);
insert into section_faculty (section_id, faculty_id) values (1, 1);
insert into section_faculty (section_id, faculty_id) values (2, 2);
insert into section_faculty (section_id, faculty_id) values (3, 5);
insert into section_faculty (section_id, faculty_id) values (4, 7);
insert into section_faculty (section_id, faculty_id) values (5, 6);
insert into section_faculty (section_id, faculty_id) values (6, 10);
insert into section_faculty (section_id, faculty_id) values (7, 3);
insert into section_faculty (section_id, faculty_id) values (8, 8);
insert into section_faculty (section_id, faculty_id) values (9, 9);
insert into section_faculty (section_id, faculty_id) values (10, 3);
insert into section_faculty (section_id, faculty_id) values (11, 7);
insert into section_faculty (section_id, faculty_id) values (12, 10);
insert into section_faculty (section_id, faculty_id) values (13, 10);
insert into section_faculty (section_id, faculty_id) values (14, 6);
insert into section_faculty (section_id, faculty_id) values (15, 1);
insert into section_faculty (section_id, faculty_id) values (16, 2);
insert into section_faculty (section_id, faculty_id) values (17, 5);
insert into section_faculty (section_id, faculty_id) values (18, 7);
insert into section_faculty (section_id, faculty_id) values (19, 1);
insert into section_faculty (section_id, faculty_id) values (20, 2);
insert into section_faculty (section_id, faculty_id) values (21, 5);
insert into section_faculty (section_id, faculty_id) values (22, 7);
insert into section_faculty (section_id, faculty_id) values (23, 1);
insert into section_faculty (section_id, faculty_id) values (24, 2);
insert into section_faculty (section_id, faculty_id) values (25, 5);
insert into section_faculty (section_id, faculty_id) values (26, 7);
insert into section_faculty (section_id, faculty_id) values (27, 1);
insert into section_faculty (section_id, faculty_id) values (27, 2);
insert into section_faculty (section_id, faculty_id) values (28, 5);
insert into section_faculty (section_id, faculty_id) values (29, 7);
insert into section_faculty (section_id, faculty_id) values (30, 3);
insert into section_faculty (section_id, faculty_id) values (31, 1);
insert into section_faculty (section_id, faculty_id) values (32, 2);
insert into section_faculty (section_id, faculty_id) values (33, 3);
insert into section_faculty (section_id, faculty_id) values (34, 8);
insert into section_faculty (section_id, faculty_id) values (35, 9);
insert into section_faculty (section_id, faculty_id) values (36, 3);
insert into section_faculty (section_id, faculty_id) values (37, 6);
insert into section_faculty (section_id, faculty_id) values (38, 10);
insert into section_faculty (section_id, faculty_id) values (39, 6);
insert into section_faculty (section_id, faculty_id) values (40, 10);




SECTION_CLASSROOM
create table section_classroom (
	section_id INT,
	classroom_id INT,
	FOREIGN KEY(section_id) REFERENCES section(section_id),
	FOREIGN KEY(classroom_id) REFERENCES classroom(classroom_id)
);
insert into section_classroom (section_id, classroom_id) values (1, 14);
insert into section_classroom (section_id, classroom_id) values (2, 1);
insert into section_classroom (section_id, classroom_id) values (3, 9);
insert into section_classroom (section_id, classroom_id) values ('4, 4);
insert into section_classroom (section_id, classroom_id) values ('5, 11);
insert into section_classroom (section_id, classroom_id) values (6, 6);
insert into section_classroom (section_id, classroom_id) values (7, 4);
insert into section_classroom (section_id, classroom_id) values (8, 15);
insert into section_classroom (section_id, classroom_id) values (9, 11);
insert into section_classroom (section_id, classroom_id) values (10, 4);
insert into section_classroom (section_id, classroom_id) values (11, 2);
insert into section_classroom (section_id, classroom_id) values (12, 14);
insert into section_classroom (section_id, classroom_id) values (13, 16);
insert into section_classroom (section_id, classroom_id) values (14, 9);
insert into section_classroom (section_id, classroom_id) values (15, 2);
insert into section_classroom (section_id, classroom_id) values (16, 13);
insert into section_classroom (section_id, classroom_id) values (17, 2);
insert into section_classroom (section_id, classroom_id) values (18, 9);
insert into section_classroom (section_id, classroom_id) values (19, 16);
insert into section_classroom (section_id, classroom_id) values (20, 1);
insert into section_classroom (section_id, classroom_id) values (21, 2);
insert into section_classroom (section_id, classroom_id) values (22, 3);
insert into section_classroom (section_id, classroom_id) values (23, 4);
insert into section_classroom (section_id, classroom_id) values (24, 5);
insert into section_classroom (section_id, classroom_id) values (25, 6);
insert into section_classroom (section_id, classroom_id) values (26, 7);
insert into section_classroom (section_id, classroom_id) values (27, 8);
insert into section_classroom (section_id, classroom_id) values (28, 9);
insert into section_classroom (section_id, classroom_id) values (29, 10);
insert into section_classroom (section_id, classroom_id) values (30, 11);
insert into section_classroom (section_id, classroom_id) values (31, 12);
insert into section_classroom (section_id, classroom_id) values (32, 13);
insert into section_classroom (section_id, classroom_id) values (33, 14);
insert into section_classroom (section_id, classroom_id) values (34, 15);
insert into section_classroom (section_id, classroom_id) values (35, 16);
insert into section_classroom (section_id, classroom_id) values (36, 15);
insert into section_classroom (section_id, classroom_id) values (37, 14);
insert into section_classroom (section_id, classroom_id) values (38, 13);
insert into section_classroom (section_id, classroom_id) values (39, 12);
insert into section_classroom (section_id, classroom_id) values (40, 11);



COURSE_SECTION
Create table course_section (
course_id INT,
section_id INT,
FOREIGN KEY(course_id) REFERENCES courses(course_id),
FOREIGN KEY(section_id) REFERENCES section(section_id)
);
insert into course_section (section_id, course_id) values (1,1);
insert into course_section (section_id, course_id) values (2,1);
insert into course_section (section_id, course_id) values (3,2);
insert into course_section (section_id, course_id) values (4,2);
insert into course_section (section_id, course_id,) values (5,3);
insert into course_section (section_id, course_id) values (6,3);
insert into course_section (section_id, course_id) values (7,4);
insert into course_section (section_id, course_id) values (8,4);
insert into course_section (section_id, course_id) values (9,5);
insert into course_section (section_id, course_id) values (10,5);
insert into course_section (section_id, course_id) values (11,6);
insert into course_section (section_id, course_id) values (12,6);
insert into course_section (section_id, course_id) values (13,7);
insert into course_section (section_id, course_id) values (14,7);
insert into course_section (section_id, course_id) values (15,8);
insert into course_section (section_id, course_id) values (16,8);
insert into course_section (section_id, course_id) values (17,9);
insert into course_section (section_id, course_id) values (18,9);
insert into course_section (section_id, course_id) values (19,10);
insert into course_section (section_id, course_id) values (20,10);
insert into course_section (section_id, course_id) values (21,11);
insert into course_section (section_id, course_id) values (22,11);
insert into course_section (section_id, course_id) values (23,12);
insert into course_section (section_id, course_id) values (24,12);
insert into course_section (section_id, course_id) values (25,13);
insert into course_section (section_id, course_id) values (26,13);
insert into course_section (section_id, course_id) values (27,14);
insert into course_section (section_id, course_id) values (28,14);
insert into course_section (section_id, course_id) values (29,15);
insert into course_section (section_id, course_id) values (30,15);
insert into course_section (section_id, course_id) values (31,16);
insert into course_section (section_id, course_id) values (32,16);
insert into course_section (section_id, course_id) values (33,17);
insert into course_section (section_id, course_id) values (34,17);
insert into course_section (section_id, course_id) values (35,18);
insert into course_section (section_id, course_id) values (36,18);
insert into course_section (section_id, course_id) values (37,19);
insert into course_section (section_id, course_id) values (38,19);
insert into course_section (section_id, course_id) values (39,20);
insert into course_section (section_id, course_id) values (40,20);

GRADES
create table grades (
	course_id INT,
	student_id INT,
	letter_grade VARCHAR(2),
	FOREIGN KEY (course_id) REFERENCES courses(course_id),
	FOREIGN KEY (student_id) REFERENCES students(id)
);
insert into grades (course_id, student_id, letter_grade) values (1, 7, 'B-');
insert into grades (course_id, student_id, letter_grade) values (15, 24, 'C+');
insert into grades (course_id, student_id, letter_grade) values (13, 13, 'B-');
insert into grades (course_id, student_id, letter_grade) values (11, 11, 'A');
insert into grades (course_id, student_id, letter_grade) values (14, 18, 'A');
insert into grades (course_id, student_id, letter_grade) values (9, 26, 'B-');
insert into grades (course_id, student_id, letter_grade) values (3, 18, 'B-');
insert into grades (course_id, student_id, letter_grade) values (16, 28, 'C');
insert into grades (course_id, student_id, letter_grade) values (12, 22, 'D-');
insert into grades (course_id, student_id, letter_grade) values (8, 12, 'D-');
insert into grades (course_id, student_id, letter_grade) values (7, 10, 'B+');
insert into grades (course_id, student_id, letter_grade) values (4, 3, 'A');
insert into grades (course_id, student_id, letter_grade) values (1, 18, 'A-');
insert into grades (course_id, student_id, letter_grade) values (1, 6, 'D-');
insert into grades (course_id, student_id, letter_grade) values (8, 1, 'B');
insert into grades (course_id, student_id, letter_grade) values (9, 12, 'B+');
insert into grades (course_id, student_id, letter_grade) values (2, 26, 'D+');
insert into grades (course_id, student_id, letter_grade) values (18, 29, 'F');
insert into grades (course_id, student_id, letter_grade) values (10, 3, 'B');
insert into grades (course_id, student_id, letter_grade) values (10, 1, 'A-');
insert into grades (course_id, student_id, letter_grade) values (9, 5, 'C+');
insert into grades (course_id, student_id, letter_grade) values (3, 1, 'D+');
insert into grades (course_id, student_id, letter_grade) values (17, 1, 'D+');
insert into grades (course_id, student_id, letter_grade) values (7, 24, 'F');
insert into grades (course_id, student_id, letter_grade) values (19, 8, 'A');
insert into grades (course_id, student_id, letter_grade) values (1, 27, 'C-');
insert into grades (course_id, student_id, letter_grade) values (9, 8, 'F');
insert into grades (course_id, student_id, letter_grade) values (16, 5, 'A');
insert into grades (course_id, student_id, letter_grade) values (2, 2, 'D');
insert into grades (course_id, student_id, letter_grade) values (15, 27, 'C+');
insert into grades (course_id, student_id, letter_grade) values (3, 4, 'C');
insert into grades (course_id, student_id, letter_grade) values (15, 23, 'C-');
insert into grades (course_id, student_id, letter_grade) values (8, 25, 'D');
insert into grades (course_id, student_id, letter_grade) values (10, 1, 'C+');
insert into grades (course_id, student_id, letter_grade) values (19, 15, 'B-');
insert into grades (course_id, student_id, letter_grade) values (5, 17, 'D');
insert into grades (course_id, student_id, letter_grade) values (13, 28, 'C-');
insert into grades (course_id, student_id, letter_grade) values (11, 8, 'D');
insert into grades (course_id, student_id, letter_grade) values (16, 10, 'A-');
insert into grades (course_id, student_id, letter_grade) values (12, 24, 'D+');
insert into grades (course_id, student_id, letter_grade) values (16, 28, 'C-');
insert into grades (course_id, student_id, letter_grade) values (20, 27, 'C+');
insert into grades (course_id, student_id, letter_grade) values (19, 24, 'A+');
insert into grades (course_id, student_id, letter_grade) values (13, 13, 'B-');
insert into grades (course_id, student_id, letter_grade) values (1, 14, 'D-');
insert into grades (course_id, student_id, letter_grade) values (1, 23, 'F');
insert into grades (course_id, student_id, letter_grade) values (3, 22, 'C');
insert into grades (course_id, student_id, letter_grade) values (18, 3, 'A');
insert into grades (course_id, student_id, letter_grade) values (13, 14, 'B');
insert into grades (course_id, student_id, letter_grade) values (5, 15, 'D');
insert into grades (course_id, student_id, letter_grade) values (8, 27, 'B-');
insert into grades (course_id, student_id, letter_grade) values (5, 19, 'D');
insert into grades (course_id, student_id, letter_grade) values (6, 27, 'A+');
insert into grades (course_id, student_id, letter_grade) values (5, 23, 'A-');
insert into grades (course_id, student_id, letter_grade) values (6, 25, 'D');
insert into grades (course_id, student_id, letter_grade) values (3, 24, 'F');
insert into grades (course_id, student_id, letter_grade) values (15, 12, 'D');
insert into grades (course_id, student_id, letter_grade) values (4, 5, 'B-');
insert into grades (course_id, student_id, letter_grade) values (7, 7, 'D-');
insert into grades (course_id, student_id, letter_grade) values (5, 8, 'A');
insert into grades (course_id, student_id, letter_grade) values (14, 24, 'D-');
insert into grades (course_id, student_id, letter_grade) values (2, 10, 'D+');
insert into grades (course_id, student_id, letter_grade) values (19, 23, 'D+');
insert into grades (course_id, student_id, letter_grade) values (10, 12, 'D');
insert into grades (course_id, student_id, letter_grade) values (4, 27, 'A-');
insert into grades (course_id, student_id, letter_grade) values (17, 12, 'B-');
insert into grades (course_id, student_id, letter_grade) values (14, 1, 'B');
insert into grades (course_id, student_id, letter_grade) values (12, 15, 'A+');
insert into grades (course_id, student_id, letter_grade) values (18, 17, 'B+');
insert into grades (course_id, student_id, letter_grade) values (10, 27, 'A+');
insert into grades (course_id, student_id, letter_grade) values (12, 23, 'B+');
insert into grades (course_id, student_id, letter_grade) values (7, 12, 'A');
insert into grades (course_id, student_id, letter_grade) values (15, 12, 'C+');
insert into grades (course_id, student_id, letter_grade) values (3, 16, 'F');
insert into grades (course_id, student_id, letter_grade) values (3, 12, 'C');
insert into grades (course_id, student_id, letter_grade) values (9, 13, 'C-');
insert into grades (course_id, student_id, letter_grade) values (2, 1, 'A-');
insert into grades (course_id, student_id, letter_grade) values (14, 25, 'B');
insert into grades (course_id, student_id, letter_grade) values (14, 8, 'A-');
insert into grades (course_id, student_id, letter_grade) values (2, 22, 'C+');
insert into grades (course_id, student_id, letter_grade) values (7, 25, 'B-');
insert into grades (course_id, student_id, letter_grade) values (14, 10, 'F');
insert into grades (course_id, student_id, letter_grade) values (16, 25, 'C+');
insert into grades (course_id, student_id, letter_grade) values (8, 11, 'C-');
insert into grades (course_id, student_id, letter_grade) values (2, 12, 'B+');
insert into grades (course_id, student_id, letter_grade) values (9, 5, 'D');
insert into grades (course_id, student_id, letter_grade) values (4, 2, 'D-');
insert into grades (course_id, student_id, letter_grade) values (14, 16, 'F');
insert into grades (course_id, student_id, letter_grade) values (7, 8, 'F');
insert into grades (course_id, student_id, letter_grade) values (15, 12, 'C+');
insert into grades (course_id, student_id, letter_grade) values (7, 6, 'C-');
insert into grades (course_id, student_id, letter_grade) values (15, 15, 'C');
insert into grades (course_id, student_id, letter_grade) values (17, 22, 'B');
insert into grades (course_id, student_id, letter_grade) values (7, 14, 'C-');
insert into grades (course_id, student_id, letter_grade) values (6, 13, 'F');
insert into grades (course_id, student_id, letter_grade) values (13, 10, 'A-');
insert into grades (course_id, student_id, letter_grade) values (5, 22, 'A+');
insert into grades (course_id, student_id, letter_grade) values (12, 19, 'B');
insert into grades (course_id, student_id, letter_grade) values (19, 30, 'D-');
insert into grades (course_id, student_id, letter_grade) values (11, 26, 'F');



4C: 15pts
SELECT s.first_name, s.last_name, sem.semester, c.title, c.course_code, g.letter_grade
FROM students AS s
JOIN grades AS g ON g.student_id=s.id
JOIN courses AS c ON c.course_id= g.course_id
JOIN course_section AS cs ON cs.course_id=c.course_id
JOIN section AS sec ON cs.section_id=sec.section_id
JOIN section_semester AS ss ON ss.section_id=sec.section_id
JOIN semester AS sem ON ss.semester_id=sem.semester_id
WHERE s.id NOT IN(
	SELECT c.course_id
	FROM courses as c
	WHERE c.prereqisite_id IS NOT NULL
	)
GROUP BY s.id;




7A: 5pts
SELECT b.building_code,sum(c.capacity)
FROM building AS b
JOIN building_classroom AS bc ON bc.building_code=b.building_code
JOIN classroom AS c on c.classroom_id=bc.classroom_id
GROUP BY b.building_code
HAVING sum(c.capacity)
ORDER BY sum(c.capacity) DESC
LIMIT 1;


1A: 5pts
SELECT  s.first_name, s.last_name, sc.section_num
FROM students AS s
JOIN grades AS g ON g.student_id=s.id
JOIN courses AS c ON c.course_id=g.course_id
JOIN course_section AS cs ON cs.course_id=c.course_id
JOIN section AS sc ON sc.section_id=cs.section_id
WHERE sc.section_num = 1111;



3A: 5pts
SELECT f.fname, f.lname, c.title, count(c.course_id) AS times_taught
FROM faculty AS f
JOIN section_faculty AS sf ON sf.faculty_id=f.faculty_id
JOIN course_section AS cs ON cs.section_id=sf.section_id
JOIN courses AS c ON c.course_id=cs.course_id
GROUP BY c.title;



5A: 5pts
SELECT s.first_name,s.last_name, c.title, g.letter_grade
FROM students AS s
JOIN grades AS g ON g.student_id=s.id
JOIN courses AS c ON g.course_id=c.course_id
GROUP BY s.id, c.course_id;



6C: 15pts
SELECT s.first_name, s.last_name, f.fname, f.lname, bc.building_code
FROM students AS s
JOIN grades AS g ON g.student_id=s.id
JOIN courses AS c ON c.course_id=g.course_id
JOIN course_section AS cs ON cs.course_id=g.course_id
JOIN section_classroom AS sc ON cs.section_id=sc.section_id
JOIN building_classroom AS bc ON bc.classroom_id=sc.clasroom_id
GROUP BY bc.building_code;

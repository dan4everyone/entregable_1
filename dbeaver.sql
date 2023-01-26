-- Users
insert into users (
	id,
	name,
	email,
	"password",
	age,
	id_roles
) values (
		'c2fd668c-d2f6-4ae7-81d6-617f7c035fe4', 'Daniel', 'daniel@outlook.com', 'root321', 22, 1
	), (
		'558a594b-33b3-40ab-b7d1-08430f2b9a1a', 'Juan', 'juan@gmail.com', 'root123', 25, 1
	);
	
-- Users courses
insert into users_courses (
	id,
	user_id,
	course_id
) values (
		'6a12452c-116f-4f0a-804c-75c31645762d', 'd68206c5-9e0b-4e88-bacc-d19ae226b17f', 'ef4c9a80-66fe-4e73-ab85-10cc67b31ea9'
	), (
		'7a439c7d-f4ab-4c07-8df3-ac49cf1544fa', '1728cc9c-0577-4813-a0ae-3af10418108a', '1fec5eb7-9314-4a2d-868c-f6722db6f385'
	);

-- Cousers
insert into courses (
	id,
	title,
	description,
	level,
	teacher,
	courses_videos_id,
	courses_level
) values (
		'bd9ff4fa-ed62-466e-ab92-b5b60045f298', 'Front-end development', 'Front-end apps', 1, 'Pedro Romano', 1, 1
	), (
		'138f36c7-9a20-4cd8-87f7-999cf6160d7a', 'Back-end development', 'Back-end systems', 2, 'Juan Montes', 2, 2
	);
	
-- Levels
insert into levels (
	id,
	name
) values (
		321, 1
	), (
		123, 2
	);
	
-- Courses videos
insert into courses_videos (
	id,
	title,
	ulr,
	courses_id
) values (
		'5e961a6b-d316-4122-8ada-293d9d57067d', 'First video', 'video1.com', '0915dad7-4d5b-4124-9e9c-1362df211b21'
	), (
		'47a0ca67-23e3-468a-9a2f-5255e4f7633c', 'Second video', 'video2.com', '05f679c4-7132-43f3-abe2-f20de8692b93'
	);
	
-- Categories
insert into categories (
	id,
	name
) values (
		456, 'Front-end'
	), (
		654, 'Back-end'
	);
	
-- Courses categories
insert into courses_categorias (
	id,
	courses_id,
	categories
) values (
		'b65ac677-601b-4c27-bf6e-6aef74af1207', '7a61aefb-ac51-4e43-b741-022ffd2ac655', 123456
	), (
		'2e631c82-abf4-44ae-b062-d69106403299', '1d9c0688-c2a8-4dfa-86e0-05f2014d6c2b', 654321
	);
	
-- Roles
insert into roles (
	id,
	name
) values (
		753159, 'Software development'
	), (
		159357, 'Marketing'
	);
CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int8,
  "id_roles" int
); 

CREATE TABLE "users_courses" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid,
  "course_id" uuid
); 

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "level" int,
  "teacher" varchar,
  "courses_videos_id" int,
  "courses_level" int
);

CREATE TABLE "levels" (
  "id" SERIAL PRIMARY KEY,
  "name" int
);

CREATE TABLE "courses_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "ulr" varchar,
  "courses_id" uuid
);

CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "courses_categorias" (
  "id" uuid PRIMARY KEY,
  "courses_id" uuid,
  "categories" int
);

CREATE TABLE "roles" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "users_courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("courses_level") REFERENCES "levels" ("id");

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("id_roles") REFERENCES "roles" ("id");

ALTER TABLE "courses_categorias" ADD FOREIGN KEY ("categories") REFERENCES "categories" ("id");

ALTER TABLE "courses_categorias" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");
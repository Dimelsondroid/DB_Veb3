create table if not exists DepartmentsBosses (
		id serial primary key,
		dept_name varchar(80) not null,
		boss_name varchar(80) not null
		);

create table if not exists Employees (
		id serial primary key,
		emp_name varchar(80) not null,
		dept_boss_id integer references DepartmentsBosses (id)
		);
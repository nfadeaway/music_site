-- Первый сотрудник в организации по умолчанию будет начальником, который не может быть начальником самому себе 

CREATE TABLE IF NOT EXISTS employee (
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	department VARCHAR(100) NOT NULL,
	chief_id INTEGER REFERENCES employee(employee_id),
	CHECK (employee_id <> chief_id)
);
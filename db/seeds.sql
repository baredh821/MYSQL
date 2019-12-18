USE employees; 

INSERT INTO department (name)
VALUES ("R&D"),
("Regulatory"),
("Clinical"),
("Reliability"),
("Corporate");

INSERT INTO role (title,salary,department_id)
VALUES ("Released Product Engineer",150.000,1), 
("Regulatory Affairs Specialist", 120.000, 2),
("Clinical Research Specialist", 80.000, 3),
("Reliability Engineer", 110.000, 4),
("CEO", 4.000000, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kevin", "Ishrak", 2, 2), 
("Taylor", "Ryla", 3, 2),
("Liam", "Karrington", 4, 3),
("Mehn", "Dorian", 5, 2),
("Omar", "Callahan", 5, NULL);


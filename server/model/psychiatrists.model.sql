CREATE TABLE psychiatrists (
    psychiatrists_id INT PRIMARY KEY AUTO_INCREMENT,
    psychiatrists_name VARCHAR(100) NOT NULL,
    hospital_id INT,
    FOREIGN KEY (hospital_id) REFERENCES hospitals(hospital_id)
);


INSERT INTO psychiatrists (psychiatrists_name, hospital_id) VALUES
('Psychiatrist 1', 1),
('Psychiatrist 2', 2),
('Psychiatrist 3', 1),
('Psychiatrist 4', 3),
('Psychiatrist 5', 2),
('Psychiatrist 6', 4),
('Psychiatrist 7', 3),
('Psychiatrist 8', 1),
('Psychiatrist 9', 4),
('Psychiatrist 10', 2);
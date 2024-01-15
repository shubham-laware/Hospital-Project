
CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL ,
    phone_number VARCHAR(20) NOT NULL,
    password VARCHAR(15) NOT NULL ,
    patient_photo VARCHAR(255) NOT NULL,
    psychiatrists_id INT,
    FOREIGN KEY ( psychiatrists_id) REFERENCES psychiatrists( psychiatrists_id)

);



-- CREATE TABLE patients (
--     patient_id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(255) NOT NULL,
--     address VARCHAR(255) NOT NULL CHECK (LENGTH(address) >= 10),
--     email VARCHAR(255) NOT NULL CHECK (email REGEXP '^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}$'),
--     phone_number VARCHAR(20) NOT NULL,
--     password VARCHAR(15) NOT NULL CHECK (password REGEXP '^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,15}$'),
--     patient_photo VARCHAR(255) NOT NULL,
--     psychiatrists_id INT,
--     FOREIGN KEY ( psychiatrists_id) REFERENCES psychiatrists( psychiatrists_id)
-- );


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

INSERT INTO patients (name, address, email, phone_number, password, patient_photo, psychiatrists_id) VALUES
('John Doe', '123 Main St, City1', 'john.doe@example.com', '1234567890', 'Passw0rd1', 'john_photo.jpg'),
('Jane Smith', '456 Oak St, City2', 'jane.smith@example.com', '2345678901', 'Passw0rd2', 'jane_photo.jpg'),
('Bob Johnson', '789 Pine St, City3', 'bob.johnson@example.com', '3456789012', 'Passw0rd3', 'bob_photo.jpg'),
('Alice Brown', '101 Elm St, City4', 'alice.brown@example.com', '4567890123', 'Passw0rd4', 'alice_photo.jpg'),
('Charlie Davis', '202 Maple St, City5', 'charlie.davis@example.com', '5678901234', 'Passw0rd5', 'charlie_photo.jpg'),
('Emily Wilson', '303 Cedar St, City1', 'emily.wilson@example.com', '6789012345', 'Passw0rd6', 'emily_photo.jpg'),
('David Miller', '404 Birch St, City2', 'david.miller@example.com', '7890123456', 'Passw0rd7', 'david_photo.jpg'),
('Grace Turner', '505 Pine St, City3', 'grace.turner@example.com', '8901234567', 'Passw0rd8', 'grace_photo.jpg'),
('Henry Clark', '606 Elm St, City4', 'henry.clark@example.com', '9012345678', 'Passw0rd9', 'henry_photo.jpg'),
('Olivia White', '707 Oak St, City5', 'olivia.white@example.com', '0123456789', 'Passw0rd10', 'olivia_photo.jpg'),
('Liam Hall', '808 Cedar St, City1', 'liam.hall@example.com', '1234567890', 'Passw0rd11', 'liam_photo.jpg'),
('Ava Adams', '909 Birch St, City2', 'ava.adams@example.com', '2345678901', 'Passw0rd12', 'ava_photo.jpg'),
('Noah Bennett', '111 Maple St, City3', 'noah.bennett@example.com', '3456789012', 'Passw0rd13', 'noah_photo.jpg'),
('Emma Carter', '222 Cedar St, City4', 'emma.carter@example.com', '4567890123', 'Passw0rd14', 'emma_photo.jpg'),
('Sophia Foster', '333 Pine St, City5', 'sophia.foster@example.com', '5678901234', 'Passw0rd15', 'sophia_photo.jpg'),
('Jackson Hayes', '444 Elm St, City1', 'jackson.hayes@example.com', '6789012345', 'Passw0rd16', 'jackson_photo.jpg', 6),
('Mia Jenkins', '555 Oak St, City2', 'mia.jenkins@example.com', '7890123456', 'Passw0rd17', 'mia_photo.jpg', 7),
('Logan King', '666 Birch St, City3', 'logan.king@example.com', '8901234567', 'Passw0rd18', 'logan_photo.jpg', 8),
('Ella Lee', '777 Maple St, City4', 'ella.lee@example.com', '9012345678', 'Passw0rd19', 'ella_photo.jpg', 9),
('Carter Moore', '888 Cedar St, City5', 'carter.moore@example.com', '0123456789', 'Passw0rd20', 'carter_photo.jpg', 10);


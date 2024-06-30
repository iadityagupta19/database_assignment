USE AppointmentSystem;

-- Insert data into Users table
INSERT INTO Users (name, date_of_birth, email) VALUES
('John Doe', '1985-07-02', 'john.doe@example.com'),
('Jane Smith', '1990-06-30', 'jane.smith@example.com'),
('Michael Brown', '1975-07-05', 'michael.brown@example.com'),
('Emily Davis', '2000-06-29', 'emily.davis@example.com');

-- Insert data into Clinics table
INSERT INTO Clinics (name, address) VALUES
('Downtown Clinic', '123 Main St'),
('Uptown Clinic', '456 Elm St'),
('Suburb Clinic', '789 Pine St');

-- Insert data into Doctors table
INSERT INTO Doctors (name, specialization) VALUES
('Dr. Alice Green', 'Pediatrics'),
('Dr. Bob White', 'Dermatology'),
('Dr. Carol Black', 'Cardiology');

-- Insert data into ClinicDoctors table
INSERT INTO ClinicDoctors (clinic_id, doctor_id) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 3);

-- Insert data into Appointments table
INSERT INTO Appointments (user_id, doctor_id, clinic_id, appointment_time, created_at, status) VALUES
(1, 1, 1, '2024-06-29 18:00:00', '2024-06-29 10:00:00', 'Scheduled'), -- Scheduled within next 5 hours, booked in last 2 days
(2, 1, 1, '2024-06-30 18:30:00', '2024-06-30 10:00:00', 'Scheduled'), -- Scheduled within next 5 hours, booked in last 2 days
(3, 1, 1, '2024-06-30 19:00:00', '2024-06-30 12:00:00', 'Scheduled'), -- Scheduled within next 5 hours, booked in last 2 days
(4, 1, 1, '2024-06-30 20:00:00', '2024-06-30 14:00:00', 'Scheduled'), -- Scheduled within next 5 hours, booked in last 2 days
(5, 1, 1, '2024-06-30 21:00:00', '2024-06-30 16:00:00', 'Scheduled'), -- Scheduled within next 5 hours, booked in last 2 days
(6, 2, 2, '2024-06-25 10:00:00', '2024-06-24 09:00:00', 'Completed'), -- Older appointment
(7, 3, 3, '2024-06-26 11:00:00', '2024-06-25 10:00:00', 'Cancelled'), -- Older appointment
(8, 4, 3, '2024-06-28 12:00:00', '2024-06-27 11:00:00', 'Scheduled'), -- Older appointment
(9, 1, 2, '2024-06-30 17:30:00', '2024-06-30 10:00:00', 'Scheduled'), -- Scheduled within next 5 hours, booked in last 2 days
(10, 2, 2, '2024-07-01 16:00:00', '2024-06-30 13:00:00', 'Scheduled'); -- Future appointment


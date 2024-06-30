-- Drop existing tables if they exist
DROP TABLE IF EXISTS ClinicDoctors;
DROP TABLE IF EXISTS Appointments;
DROP TABLE IF EXISTS Doctors;
DROP TABLE IF EXISTS Clinics;
DROP TABLE IF EXISTS Users;

-- Create the database
CREATE DATABASE IF NOT EXISTS AppointmentSystem;
USE AppointmentSystem;

-- Create the Users table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the Clinics table
CREATE TABLE Clinics (
    clinic_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255)
);

-- Create the Doctors table
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100)
);

-- Create the ClinicDoctors table
CREATE TABLE ClinicDoctors (
    clinic_doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    clinic_id INT,
    doctor_id INT,
    FOREIGN KEY (clinic_id) REFERENCES Clinics(clinic_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Create the Appointments table
CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    doctor_id INT,
    clinic_id INT,
    appointment_time TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'Scheduled'
);


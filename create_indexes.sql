USE AppointmentSystem;

-- Create indexes for optimization
CREATE INDEX idx_appointments_doctor_id ON Appointments(doctor_id);
CREATE INDEX idx_appointments_user_id ON Appointments(user_id);
CREATE INDEX idx_appointments_created_at ON Appointments(created_at);
CREATE INDEX idx_appointments_appointment_time ON Appointments(appointment_time);
CREATE INDEX idx_appointments_status ON Appointments(status);
CREATE INDEX idx_users_date_of_birth ON Users(date_of_birth);


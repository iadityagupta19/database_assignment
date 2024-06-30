USE AppointmentSystem;

-- Query 1: All appointments booked in the last 7 days for a doctor
SELECT * 
FROM Appointments 
WHERE doctor_id = 1 
  AND created_at >= NOW() - INTERVAL 7 DAY;

-- Query 2: All appointments booked in the last 2 days and scheduled within the next 5 hours for a doctor
SELECT * 
FROM Appointments 
WHERE doctor_id = 1 
  AND created_at >= NOW() - INTERVAL 2 DAY 
  AND appointment_time <= NOW() + INTERVAL 5 HOUR;

-- Query 3: Users who have at least 1 appointment and have their birthday coming in the next 5 days
SELECT DISTINCT u.user_id, u.name, u.date_of_birth, u.email 
FROM Users u
JOIN Appointments a ON u.user_id = a.user_id
WHERE DATE_FORMAT(u.date_of_birth, '%m-%d') BETWEEN DATE_FORMAT(NOW(), '%m-%d') 
                                                 AND DATE_FORMAT(NOW() + INTERVAL 5 DAY, '%m-%d');

-- Query 4: Appointments for a particular patient in the last 7 days
SELECT * 
FROM Appointments 
WHERE user_id = 1 
  AND appointment_time >= NOW() - INTERVAL 7 DAY;

-- Query 5: Appointment cancellation percentage for a doctor by clinic
SELECT c.clinic_id, c.name,
       COUNT(a.appointment_id) AS total_appointments,
       SUM(CASE WHEN a.status = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled_appointments,
       (SUM(CASE WHEN a.status = 'Cancelled' THEN 1 ELSE 0 END) / COUNT(a.appointment_id)) * 100 AS cancellation_percentage
FROM Appointments a
JOIN Clinics c ON a.clinic_id = c.clinic_id
WHERE a.doctor_id = 1
GROUP BY c.clinic_id, c.name;


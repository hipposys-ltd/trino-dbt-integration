-- Create the `customers` table
CREATE TABLE db.customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    join_date DATE DEFAULT CURRENT_DATE
);

-- Insert sample rows into the `customers` table
INSERT INTO db.customers (first_name, last_name, email, phone_number, join_date)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '123-456-7890', '2023-01-15'),
    ('Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '2023-02-20'),
    ('Alice', 'Johnson', 'alice.johnson@example.com', '345-678-9012', '2023-03-10'),
    ('Bob', 'Brown', 'bob.brown@example.com', '456-789-0123', '2023-04-05'),
    ('Charlie', 'Davis', 'charlie.davis@example.com', '567-890-1234', '2023-05-22'),
    ('Emily', 'Wilson', 'emily.wilson@example.com', '678-901-2345', '2023-06-10'),
    ('David', 'Moore', 'david.moore@example.com', '789-012-3456', '2023-07-01'),
    ('Sophia', 'Taylor', 'sophia.taylor@example.com', '890-123-4567', '2023-08-18'),
    ('Lucas', 'Martinez', 'lucas.martinez@example.com', '901-234-5678', '2023-09-14'),
    ('Mia', 'Anderson', 'mia.anderson@example.com', '012-345-6789', '2023-10-05'),
    ('James', 'Thomas', 'james.thomas@example.com', '123-456-7891', '2023-11-11'),
    ('Olivia', 'Jackson', 'olivia.jackson@example.com', '234-567-8902', '2023-12-01'),
    ('Ethan', 'White', 'ethan.white@example.com', '345-678-9013', '2023-01-25'),
    ('Amelia', 'Harris', 'amelia.harris@example.com', '456-789-0124', '2023-02-14');

-- Query to view the inserted data
SELECT * FROM db.customers;
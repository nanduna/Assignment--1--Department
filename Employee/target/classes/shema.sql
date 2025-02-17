CREATE TABLE IF NOT EXISTS `department` (
                                            `department_id` INT AUTO_INCREMENT PRIMARY KEY,
                                            `name` VARCHAR(100) NOT NULL,
    `code` VARCHAR(50) NOT NULL UNIQUE,
    `created_at` DATE NOT NULL,
    `created_by` VARCHAR(20) NOT NULL,
    `updated_at` DATE DEFAULT NULL,
    `updated_by` VARCHAR(20) DEFAULT NULL
    );
CREATE TABLE IF NOT EXISTS `employee` (
                                          `employee_id` INT AUTO_INCREMENT PRIMARY KEY,
                                          `first_name` VARCHAR(100) NOT NULL,
    `last_name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL UNIQUE,
    `mobile_number` VARCHAR(20) NOT NULL,
    `salary` DECIMAL(10,2) NOT NULL,
    `department_id` INT NOT NULL,
    `created_at` DATE NOT NULL,
    `created_by` VARCHAR(20) NOT NULL,
    `updated_at` DATE DEFAULT NULL,
    `updated_by` VARCHAR(20) DEFAULT NULL,
    CONSTRAINT `fk_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE
    );
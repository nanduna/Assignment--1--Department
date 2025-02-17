CREATE TABLE IF NOT EXISTS `department` (
                                            `department_id` INT AUTO_INCREMENT PRIMARY KEY,
                                            `name` VARCHAR(100) NOT NULL,
    `code` VARCHAR(50) NOT NULL UNIQUE,
    `created_at` DATE NOT NULL,
    `created_by` VARCHAR(20) NOT NULL,
    `updated_at` DATE DEFAULT NULL,
    `updated_by` VARCHAR(20) DEFAULT NULL
    );

CREATE TABLE legislators (

    id INT AUTO_INCREMENT PRIMARY KEY,

    bioguide_id VARCHAR(20) UNIQUE,

    first_name VARCHAR(100),
    middle_name VARCHAR(100),
    last_name VARCHAR(100),

    birthday DATE,
    gender VARCHAR(20)
);

CREATE TABLE service_terms (

    id INT AUTO_INCREMENT PRIMARY KEY,

    legislator_id INT,

    chamber VARCHAR(20),

    state CHAR(2),

    district VARCHAR(10),

    party VARCHAR(50),

    congress_number INT,

    start_date DATE,
    end_date DATE,

    FOREIGN KEY (legislator_id)
        REFERENCES legislators(id)
);

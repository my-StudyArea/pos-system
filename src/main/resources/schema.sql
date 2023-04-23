CREATE TABLE IF NOT EXISTS users
(
    username  VARCHAR(100) PRIMARY KEY,
    full_name VARCHAR(100)          NOT NULL,
    type      ENUM ('USER','ADMIN') NOT NULL,
    password  VARCHAR(100)          NOT NULL
);

CREATE TABLE IF NOT EXISTS Main_category
(
    item_code INT PRIMARY KEY,
    main_item VARCHAR(100)

);

CREATE TABLE IF NOT EXISTS Sub_category
(
    item_code INT PRIMARY KEY ,
    main_item VARCHAR(100),
    CONSTRAINT foreign_key FOREIGN KEY (item_code) REFERENCES  Main_category(item_code)

)

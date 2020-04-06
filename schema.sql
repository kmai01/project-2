ROP DATABASE IF EXISTS userdb;
CREATE DATABASE userdb;

USE userdb;



CREATE TABLE user (
     user_id INT UNIQUE NOT NULL AUTO_INCREMENT,
     username VARCHAR(30) NOT NULL,
     password VARCHAR(30) NOT NULL,
     PRIMARY KEY(user_id)
    
    
    );



CREATE TABLE user_location (
     id INT UNIQUE NOT NULL AUTO_INCREMENT,
     city VARCHAR(30) NOT NULL,
     zipcode INT NOT NULL,
     lat DECIMAL(10,8) NOT NULL,
     lng DECIMAL(11,8) NOT NULL,

     user_id INT,
     FOREIGN KEY(user_id) REFERENCES account (user_id),
     PRIMARY KEY(id)

)

CREATE TABLE user_profile(
    id INT UNIQUE NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    birthday DATE,
    sex VARCHAR(10),
    interests VARCHAR(50),
    marital_status VARCHAR(30) NOT NULL,
    height VARCHAR (30),
    had_kid BOOLEAN,
    wanted_children BOOLEAN,
    education VARCHAR(30)
    smoker BOOLEAN,
    drink BOOLEAN,
    ethnicity VARCHAR(30),
    religion VARCHAR(30),
    body_type VARCHAR(30),
    occupation VARCHAR(30)
    annual_income INTEGER,
    about_me VARCHAR(150),
    

    user_id INT,
    FOREIGN KEY(user_id) REFERENCES account (user_id),
    PRIMARY KEY(id)

)

CREATE TABLE ImageAsVarBinary (

    id INT IDENTITY(1,1),
    imageName VARCHAR(50),
    varBinaryData varBinary(Max),
    user_id INT,
    FOREIGN KEY(user_id) REFERENCES account (user_id),
    PRIMARY KEY(id)



)



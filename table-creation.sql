CREATE TABLE organization ( 
    name varchar(100) ,
    o_id int PRIMARY KEY AUTO_INCREMENT 
) ;

CREATE TABLE organization_info (
    c_id INT ,
    o_id INT ,
    FOREIGN KEY(o_id) REFERENCES organization(o_id) ,
    FOREIGN KEY(c_id) REFERENCES channel(c_id)
)

CREATE TABLE channel (
    name varchar( 100 ) ,
    c_id int PRIMARY KEY AUTO_INCREMENT  
);

CREATE TABLE channel_info (
    user_id INT,
    c_id int ,
    FOREIGN KEY(user_id) REFERENCES user(user_id) ,
    FOREIGN KEY(c_id) REFERENCES channel(c_id) 
);

CREATE TABLE user (
    name varchar(100) ,
    user_id int PRIMARY KEY AUTO_INCREMENT
);  

CREATE TABLE message (
    post_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    content TEXT ,
    c_id int ,
    user_id int ,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (c_id) REFERENCES channel( c_id ) 
)


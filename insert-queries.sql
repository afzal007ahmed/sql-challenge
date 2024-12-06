INSERT INTO organization (name) VALUES ('Lamda School') ;

INSERT INTO user (name) VALUES ('Alice') , ('Bob') , ('Chris') ;

INSERT INTO channel (name) VALUES ('#general') , ('#random') ;

INSERT INTO organization_info (c_id , o_id) VALUES ( 1 , 1 ) ;

INSERT INTO organization_info (c_id , o_id) VALUES ( 2 , 1) ;

INSERT INTO channel_info ( user_id , c_id  ) VALUES (1 , 1 ) , ( 1 , 2 ) , ( 2 , 1 ) , ( 3 , 2 ) ;

INSERT INTO message (content , user_id , c_id) VALUES ( 'hi' , 1 , 1 ) ,
('hello' , 2 , 1 ) ,
('abc' , 3 , 2) ,
('abc2' , 1 , 2 ) ,
('abc3' , 2 , 1 ) ,
('abc4' , 3 , 2) ,
('abc5' , 1 , 1 ) ,
('abc6' , 2 , 1 ) ,
('abc7' , 3 , 2) ,
('abc8' , 1 , 1 ) ;


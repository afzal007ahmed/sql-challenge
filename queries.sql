SELECT name from organization ;

SELECT name from channel ;

select d.name , e.name from (SELECT a.name , b.o_id from channel as a join organization_info as b on a.c_id = b.c_id ) as d join organization as e on d.o_id = e.o_id ;  

 SELECT d.content , c.name , d.post_time from (SELECT a.content , b.c_id , a.post_time from message as a join channel_info as b on a.user_id = b.user_id) as d join channel as c ORDER BY d.post_time;

SELECT name from channel WHERE c_id in (SELECT c_id from channel_info WHERE user_id = ( SELECT user_id from user where name = "Alice" ) ) ;

SELECT name from user where user_id in (SELECT user_id from channel_info where c_id = (SELECT c_id from channel WHERE name = "#general") ) ; 


SELECT content from message where user_id = (SELECT user_id from user where name = 'Alice' ) ;


SELECT content from message WHERE user_id = ( SELECT user_id from user where name = 'Bob') and c_id = ( SELECT c_id  from channel WHERE name = "#random" ) ;


SELECT a.name as 'User Name' , b.Message_count from (select user_id , count( content ) as Message_count from message GROUP BY user_id ) as b join user as a on a.user_id = b.user_id ;



SELECT d.User , c.name as Channel , d.Message_count from (SELECT a.name as User  , b.Message_count , b.c_id from  (SELECT count(content) as Message_count , user_id , c_id from message GROUP BY user_id , c_id) as b join user as a on a.user_id = b.user_id )  as d join channel as c on d.c_id = c.c_id ;



-- use on delete cascade to delete all links automatically -- 

use ig_clone;
show tables;
# Query 2: we want to reward the users who has been around the longest. Find the 5 oldest users.#
select * from tags;
select * from users order by created_at desc limit 5;

#Query 3: to understand when to run the ad campaign, figure out the day of week most users register on#
select * from users;
select max(Dayname(created_at)) as max_users_register_day from users;

#Query 4: to tatrget inactive users in an email ad campaign, find the users who have never posted a photo#
select * from users;
SELECT * FROM photos;
select id, username from users where id not in (select user_id from photos);

#Query 5: suppose you are running a contest to find out who got the most likes on a photo. Find out who won?
select * from likes;
select * from photos;
SELECT users.username, photo_id, COUNT(*) AS most_liked FROM likes
    INNER JOIN users ON users.id=likes.user_id GROUP BY photo_id ORDER BY most_liked DESC LIMIT 1;
    
#Query 6: the investor want to know how many times does the average user posts#
select * from users;
select * from photos;
select users.username, users.id, count(*) as no_of_times_user_post from users 
inner join photos on users.id=photos.user_id 
group by id order by id;

#Query 7: a brand wants to know which hastag to use on a post, and find the top 5 most used hastags#
select * from tags;
select * from photo_tags;
select tags.id, count(*), tags.tag_name from tags inner join photo_tags on tags.id=photo_tags.tag_id 
group by tag_name order by count(*) desc limit 5;

#Query8: to find out if there are bots, find users who have liked every single photo on the site#
select * from users;
select * from likes;
select * from photos;
select users.id, users.username from users
inner join likes on users.id=likes.user_id
inner join photos on photos.user_id=likes.user_id group by likes.user_id order by users.id desc;

#Query9: to know who the celebrities are, find the users who have never commented on a photo#
select * from users;
select * from comments;
select username from users where username not in
(select users.username from users inner join comments on users.id=comments.user_id);

#Query10: find the users who have never commented on any photo or have commented on every photo#
select * from users;
select * from comments;
select users.username from users inner join comments on users.id=comments.user_id group by username
union
select username from users where username not in
(select users.username from users inner join comments on users.id=comments.user_id group by username);




































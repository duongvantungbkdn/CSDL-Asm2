/*
Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard!
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge.
Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
*/
select hk.hacker_id, hk.name 
-- chọn id và tên của hacker để hiển thị
from Hackers hk
join Submissions sm on sm.hacker_id = hk.hacker_id
join Challenges cl on cl.challenge_id = sm.challenge_id
join Difficulty df on df.difficulty_level = cl.difficulty_level
where sm.score = df.score  
-- tìm những hacker đạt điểm tuyệt đối ở các challenge

group by hk.hacker_id, hk.name 
-- nhóm lại theo id và tên

having count(hk.hacker_id) > 1 
-- chỉ những hacker có ít nhất 1 lần đạt điểm tuyệt đối mới đc xét

order by count(hk.hacker_id) desc, hk.hacker_id asc; 
-- sắp xếp từ hacker có số lần đạt điểm tuyệt đối nhiều nhất
-- nếu 2 các hacker có thành tích ngang nhau thì sắp xếp tăng dần theo id

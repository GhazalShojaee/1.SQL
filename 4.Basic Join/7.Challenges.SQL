SELECT h.hacker_id, h.name, count(c.hacker_id) as cnt 
FROM hackers h 
JOIN challenges c 
on (h.hacker_id=c.hacker_id) group by h.hacker_id, h.name, c.hacker_id having count(c.challenge_id) not in ( SELECT max(total) FROM (SELECT c.hacker_id, count(c.challenge_id) TOTAL FROM challenges c GROUP BY c.hacker_id) c where c.total <> (SELECT count(c.challenge_id) TOT FROM challenges GROUP BY c.hacker_id ) 
GROUP BY c.total having count(c.total) > 1 ) order by count(c.hacker_id) desc , h.hacker_id
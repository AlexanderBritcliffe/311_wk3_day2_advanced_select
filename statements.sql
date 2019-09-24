SELECT 
   count(user_id) as total,
   state
FROM
    userAddress
GROUP BY
    state

SELECT
    SUBSTR(phone1, 1, 3) as areacode,
    count(phone1) as areaCodeCount
 FROM
    usersContact
 GROUP BY
    SUBSTR(phone1, 1, 3)
 ORDER BY 
    areaCodeCount DESC
    limit 1

 SELECT
    MIN(users.first_name) as userName,
    userAddress.county as userCounty,
    count(userAddress.county) as userCount

 FROM
    users

 JOIN
    userAddress

 WHERE
    users.id = usersAddress.user_id

 GROUP BY
    userCounty

 HAVING
    userCount > 10                                 
-- This is how I found the murderer to solve the game
SELECT person.id, person.name, 
get_fit_now_member.membership_status, 
get_fit_now_member.id,
drivers_license.plate_number,
get_fit_now_check_in.check_in_date

FROM person
JOIN get_fit_now_member
ON person.id = get_fit_now_member.person_id

JOIN drivers_license
ON person.license_id = drivers_license.id

JOIN get_fit_now_check_in
ON get_fit_now_check_in.membership_id = get_fit_now_member.id

WHERE get_fit_now_member.id LIKE '%48Z%'
AND get_fit_now_member.membership_status LIKE 'Gold'
AND drivers_license.plate_number LIKE '%H42W%'
AND get_fit_now_check_in.check_in_date = 20180109

SELECT person.id, person.name, 
drivers_license.height,
drivers_license.hair_color,
drivers_license.car_make,
drivers_license.car_model,
facebook_event_checkin.event_id

FROM person
JOIN drivers_license
ON person.license_id = drivers_license.id

JOIN facebook_event_checkin
ON person.id = facebook_event_checkin.person_id

WHERE drivers_license.height BETWEEN 65 AND 67
AND drivers_license.hair_color LIKE 'Red'
AND facebook_event_checkin.event_name LIKE 'SQL Symphony Concert'
AND facebook_event_checkin.date BETWEEN 20171201 AND 20171231
AND drivers_license.car_make LIKE 'TESLA'
AND drivers_license.car_model LIKE 'Model S'

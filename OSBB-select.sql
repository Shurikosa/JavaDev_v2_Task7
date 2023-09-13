SELECT
	m.first_name,
    m.second_name,
    m.email,
    b.building_adress,
    f.flat_number,
    f.area_m2
FROM 
	OSBB_members m
JOIN
	Residents r ON m.member_id = r.member_id
JOIN
	Flats f ON r.flat_id = f.flat_id
JOIN 
	Buildings b ON f.building_id = b.building_id
WHERE 
	r.car_access = FALSE;
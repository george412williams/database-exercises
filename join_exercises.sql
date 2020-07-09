use codeup_test_db;

#join inner
    # only rows completely matching

select pets.pet_name, owners.address from pets
inner join owners on pets.owner_id = owners.id;

#left
    # pets plus owner matches

select pets.pet_name, owners.address from pets
left join owners on pets.owner_id = owners.id;

#right
    # owners plus pet matches

select pets.pet_name, owners.address from pets
left join owners on pets.owner_id = owners.id;


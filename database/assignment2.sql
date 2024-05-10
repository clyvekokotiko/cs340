--Insert the following new record to the account table
INSERT INTO account (account_firstname, account_lastname, account_email, account_password)
	VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');


-- Modify the Tony Stark record to change the account_type to "Admin".
UPDATE account
	SET account_type = 'Admin'
	WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';


-- Delete the Tony Stark record from the database.
DELETE FROM account
	WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';


-- Modify the "GM Hummer" 
UPDATE inventory
	SET inv_description = REPLACE('Do you have 6 kids and like to go offroading? The Hummer gives you the small interiors with an engine to get you out of any muddy or rocky situation.', 'the small interiors', 'a huge interior')
	WHERE inv_make = 'GM';

-- INNER JOIN inventory table and classification table for make and model fields
SELECT inv_make, inv_model 
	FROM inventory i
	JOIN classification c
		ON i.classification_id = c.classification_id
	WHERE classification_name = 'Sport';


-- Update all records in the inventory table
UPDATE inventory 
	SET 
		inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    	inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/')
	WHERE inv_image LIKE '/images/%.jpg'
  	AND inv_thumbnail LIKE '/images/%-tn.jpg';
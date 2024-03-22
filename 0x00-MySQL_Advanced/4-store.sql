-- CREATING A TRIGGER
-- THAT DECREASES THE ITEM'S  AS NEW ITEM IS ORDERED
CREATE TRIGGER order_decrease BEFORE INSERT ON orders
FOR EACH ROW UPDATE items
SET quantity = quantity - NEW.number
WHERE name = NEW.item_name;
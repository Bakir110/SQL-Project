USE it_vedant;

CREATE TABLE suppliers(
id INT PRIMARY KEY,
supplier VARCHAR(250)
);

CREATE TABLE products(
id INT PRIMARY KEY,
product_name VARCHAR(100),
part_number VARCHAR(100),
product_label VARCHAR(100),
starting_inventory INT,
inventory_received INT,
inventory_shipped INT,
inventory_on_hand INT,
minimum_required INT
);

CREATE TABLE orders(
id INT PRIMARY KEY,
title VARCHAR(50),
first_name VARCHAR(50),
middle_name VARCHAR(50),
last_name VARCHAR(50),
product_id INT,
number_shipped INT,
order_date DATE,
FOREIGN KEY(product_id) REFERENCES products(id)
);

CREATE TABLE purchases(
id INT PRIMARY KEY,
supplier_id INT,
product_id INT,
number_received INT,
purchase_date DATE,
FOREIGN KEY(product_id) REFERENCES products(id),
FOREIGN KEY(supplier_id) REFERENCES suppliers(id)
);

INSERT INTO suppliers VALUES
(1,'ShockWave TECH'),
(2,'CDW'),
(3,'Acme Tech'),
(4,'CloudTail'),
(5,'Alpha Seller')
;

SELECT * FROM suppliers;

INSERT INTO products VALUES
(1, 'Widget A', 'WP001', 'Standard', 100, 20, 10, 110, 50),
(2, 'Gizmo X', 'GX002', 'Advanced', 200, 35, 60, 40, 27),
(3, 'Gadget Z', 'GZ003', 'Basic', 450, 78, 50, 350, 34),
(4, 'Thingamajig', 'TA004', 'Premium', 230, 39, 40, 107, 48),
(5, 'Doohickey Beta', 'DB005', 'Standard', 50, 20, 40, 10, 5),
(6, 'Contraption Gamma', 'CG006', 'Advanced', 432, 98, 56, 123, 120),
(7, 'Delta', 'GD007', 'Basic', 100, 20, 10, 110, 50),
(8, 'Widgetatron', 'WT008', 'Premium', 229, 34, 146, 167, 23),
(9, 'Gizmomatic', 'GM009', 'Standard', 1100, 868, 745, 767, 123),
(10, 'Pro', 'TP010', 'Advanced', 100, 20, 10, 110, 50),
(11, 'Super', 'SG011', 'Basic', 10, 3, 5, 2, 8),
(12, 'Widget', 'WM012', 'Premium', 647, 543, 213, 654, 508),
(13, 'Gizmo', 'GS013', 'Standard', 230, 43, 21, 110, 54),
(14, 'Gadget Prodigy', 'GP014', 'Advanced', 200, 67, 56, 87, 32),
(15, 'Quantum', 'QT015', 'Basic', 100, 20, 10, 110, 50),
(16, 'Megatron Widget', 'MW016', 'Premium', 10, 3, 5, 2, 8),
(17, 'Giga Gizmo', 'GG017', 'Standard', 389, 20, 10, 11, 70),
(18, 'Nano Gadget', 'NG018', 'Advanced', 200, 20, 10, 130, 88),
(19, 'Widgetnova Ultra', 'WU019', 'Basic', 3400, 320, 130, 130, 540),
(20, 'GizmoFusion', 'GF020', 'Premium', 100, 20, 10, 110, 50),
(21, 'Quantum Matter Transformer', 'QMT021', 'Standard', 100, 20, 10, 110, 60),
(22, 'Flux Capacitor Widget', 'FCW022', 'Advanced', 100, 20, 10, 110, 40),
(23, 'Infinity Gizmo', 'IG023', 'Basic', 100, 20, 10, 110, 213),
(24, 'Hyperdrive Gadget', 'HG024', 'Premium', 100, 20, 10, 110, 230),
(25, 'Nebula Nexus Widget', 'NNW025', 'Standard', 100, 20, 10, 110, 50),
(26, 'Warp Speed Gizmo', 'WSG026', 'Advanced', 100, 20, 10, 110, 67),
(27, 'Stellar Gadget', 'SG027', 'Basic', 100, 20, 10, 110, 32),
(28, 'Cosmic Widget', 'CW028', 'Premium', 100, 20, 10, 110, 50),
(29, 'Interstellar Gizmo', 'ISG029', 'Standard', 100, 20, 10, 110, 31),
(30, 'Astral Gadget', 'AG030', 'Advanced', 100, 20, 10, 110, 50),
(31, 'Nebula Voyager Widget', 'NVW031', 'Basic', 100, 20, 10, 110, 57),
(32, 'Galaxy Traveler Gizmo', 'GTG032', 'Premium', 100, 20, 10, 110, 50),
(33, 'Starlight Cruiser Gadget', 'SCG033', 'Standard', 20, 24, 10, 110, 50),
(34, 'Celestial Explorer Widget', 'CEW034', 'Advanced', 30, 20, 10, 110, 50),
(35, 'Moonbeam Navigator Gizmo', 'MNG035', 'Basic', 6700, 520, 101, 110, 450),
(36, 'Solar Flare Scout Gadget', 'SFSG036', 'Premium', 2100, 201, 101, 1102, 520),
(37, 'Comet Voyager Widget', 'CVW037', 'Standard', 100, 20, 10, 110, 50),
(38, 'Aurora Adventurer Gizmo', 'AAG038', 'Advanced', 100, 20, 10, 110, 50),
(39, 'Orion Explorer Gadget', 'OEG039', 'Basic', 100, 20, 10, 110, 50),
(40, 'Eclipse Traveler Widget', 'ETW040', 'Premium', 100, 20, 10, 110, 50),
(41, 'Alpha Centauri Gizmo', 'ACG041', 'Standard', 100, 20, 10, 110, 50),
(42, 'Solar System Voyager Gadget', 'SSVG042', 'Advanced', 100, 20, 10, 110, 50),
(43, 'Milky Way Explorer Widget', 'MWEW043', 'Basic', 100, 20, 10, 110, 50),
(44, 'Andromeda Adventurer Gizmo', 'AAG044', 'Premium', 100, 20, 10, 110, 50),
(45, 'Intergalactic Traveler Gadget', 'ITG045', 'Standard', 100, 20, 10, 110, 50),
(46, 'Cosmic Navigator Widget', 'CNW046', 'Advanced', 100, 20, 10, 110, 50),
(47, 'Nebula Scout Gizmo', 'NSG047', 'Basic', 100, 20, 10, 110, 50),
(48, 'Stellar Adventurer Gadget', 'SAG048', 'Premium', 100, 20, 10, 110, 50),
(49, 'Galaxy Voyager Widget', 'GVW049', 'Standard', 100, 20, 10, 130, 50),
(50, 'Supernova Explorer Gizmo', 'SEG050', 'Advanced', 100, 20, 10, 110, 50),
(51, 'Nebula Navigator Gadget', 'NNG051', 'Basic', 1010, 201, 10, 110, 54),
(52, 'Celestial Scout Widget', 'CSW052', 'Premium', 1100, 20, 10, 110, 78),
(53, 'Starlight Adventurer Gizmo', 'SAG053', 'Standard', 140, 22, 104, 110, 54),
(54, 'Moonbeam Voyager Gadget', 'MVG054', 'Advanced', 1004, 20, 10, 110, 50),
(55, 'Solar Flare Explorer Widget', 'SFEW055', 'Basic', 100, 20, 10, 110, 52),
(56, 'Comet Scout Gizmo', 'CSG056', 'Premium', 100, 20, 10, 110, 50),
(57, 'Aurora Adventurer Gadget', 'AAG057', 'Standard', 500, 204, 10, 110, 50),
(58, 'Orion Voyager Widget', 'OVW058', 'Advanced', 320, 210, 14, 60, 20),
(59, 'Eclipse Explorer Gizmo', 'EEG059', 'Basic', 100, 20, 10, 110, 50),
(60, 'Alpha Scout Gadget', 'ACSG060', 'Premium', 140, 27, 17, 15, 50),
(61, 'Solar System', 'SAW061', 'Standard', 100, 20, 10, 110, 50),
(62, 'Milky', 'MWVG062', 'Advanced', 450, 20, 10, 150, 50),
(63, 'Andromeda', 'AEG063', 'Basic', 140, 120, 10, 110, 50),
(64, 'Adventurer', 'IAW064', 'Premium', 100, 20, 134, 110, 50),
(65, 'Cosmic', 'CVG065', 'Standard', 146, 20, 15, 110, 50),
(66, 'Explorer Gadget', 'NEG066', 'Advanced', 344, 20, 45, 110, 50),
(67, 'Stellar Widget', 'SVW067', 'Basic', 100, 20, 10, 110, 50),
(68, 'Nebula Explorer', 'NEG066', 'Advanced', 130, 45, 15, 134, 50),
(69, 'Stellar', 'SVW067', 'Basic', 600, 23, 100, 110, 65),
(70, 'Nebula', 'NVG070', 'Advanced', 150, 24, 56, 11, 5);

SELECT * FROM products;


insert into orders values 
(1, 'SXR', 'Conant', 'cnewarte', 'Newarte', 20, 11, '2023-02-11'),
(2, 'CEV', 'Herc', 'hbarday', 'Barday', 15, 45, '2023-09-20'),
(3, 'KIZ', 'Redd', 'rplumbridge', 'Plumbridge', 19, 67, '2023-04-07'),
(4, 'SJY', 'Franzen', 'friep', 'Riep', 17, 424, '2023-05-14'),
(5, 'KTW', 'Cullin', 'cfulleylove', 'Fulleylove', 18, 510, '2023-05-14'),
(6, 'KIS', 'Merv', 'mwroe', 'Wroe', 16, 78, '2023-05-13'),
(7, 'GXQ', 'Lilah', 'ljozaitis', 'Jozaitis', 5, 66, '2023-08-21'),
(8, 'UTU', 'Sylvester', 'stupp', 'Tupp', 3, 812, '2023-09-28'),
(9, 'BIB', 'Bernhard', 'blemmer', 'Lemmer', 1, 93, '2022-12-26'),
(10, 'WGP', 'Nat', 'nattewill', 'Attewill', 2, 130, '2023-09-12'),
(11, 'XIN', 'Rochette', 'rgrishkova', 'Grishkov', 4, 11, '2022-11-12'),
(12, 'AMV', 'Goldie', 'gsineb', 'Sine', 10, 120, '2023-10-05'),
(13, 'LRE', 'Garner', 'gbrometc', 'Bromet', 11, 113, '2023-06-28'),
(14, 'EAU', 'Igor', 'imccried', 'McCrie', 12, 124, '2023-07-19'),
(15, 'BNY', 'Junette', 'jdengatee', 'Dengate', 14, 125, '2023-09-15'),
(16, 'XTL', 'Benny', 'bvequaudf', 'Vequaud', 13, 163, '2023-04-18'),
(17, 'KBP', 'Mellisent', 'mpargiterg', 'Pargiter', 6, 176, '2023-08-13'),
(18, 'GSQ', 'Noak', 'nstrothersh', 'Strothers', 9, 186, '2023-10-20'),
(19, 'EMS', 'Zia', 'zelsyi', 'Elsy', 8, 1129, '2023-02-12'),
(20, 'MOJ', 'Malorie', 'mvandermarkj', 'Van der Mark', 7, 2650, '2023-04-29'),
(21, 'POI', 'Denys', 'dtilerk', 'Tiler', 70, 2641, '2023-09-04'),
(22, 'TUG', 'Darsey', 'ddenziloel', 'Denziloe', 69, 262, '2023-04-17'),
(23, 'SAA', 'Moishe', 'mbanisterm', 'Banister', 68, 903, '2022-12-02'),
(24, 'ADY', 'Ricki', 'rcambridgen', 'Cambridge', 67, 998, '2023-06-23'),
(25, 'HYC', 'Hannis', 'hanthono', 'Anthon', 66, 225, '2023-02-05'),
(26, 'GYG', 'Rochella', 'rsiburnp', 'Siburn', 65, 246, '2023-07-22'),
(27, 'DOP', 'Mack', 'mrooksbyq', 'Rooksby', 64, 37, '2022-12-15'),
(28, '0', 'Wakefield', 'wtrenbeyr', 'Trenbey', 63, 286, '2023-08-06'),
(29, 'CBH', 'Marven', 'morbells', 'Orbell', 62, 269, '2023-01-30'),
(30, 'JBQ', 'Delores', 'dpaulinot', 'Paulino', 61, 530, '2023-10-23'),
(31, 'NJA', 'Lelia', 'ldowgillu', 'Dowgill', 60, 371, '2023-04-26'),
(32, 'PBU', 'Maddie', 'mdevenniev', 'Devennie', 21, 322, '2023-02-21'),
(33, 'CZO', 'Margette', 'mlaskeyw', 'Laskey', 22, 33, '2023-06-08'),
(34, 'TES', 'Alvis', 'alaurencotx', 'Laurencot', 23, 234, '2023-06-28'),
(35, 'IHO', 'Moise', 'mjacky', 'Jack', 24, 435, '2023-06-08'),
(36, 'RNP', 'Rochell', 'rscarrattz', 'Scarratt', 25, 366, '2023-03-08'),
(37, 'OIA', 'Bevvy', 'bslyde', 'Slyde', 26, 337, '2023-04-22'),
(38, 'FCS', 'Justino', 'jhundall', 'Hundall', 30, 38, '2022-11-22'),
(39, 'ESW', 'Corena', 'cchiplen', 'Chiplen', 27, 739, '2023-09-23'),
(40, 'BCM', 'Alexio', 'agoodhew', 'Goodhew', 29, 2404, '2023-10-09'),
(41, 'HLV', 'Gregg', 'gmcelmurray', 'McElmurray', 28, 4451, '2022-11-11'),
(42, 'SDE', 'Erda', 'enowakowski', 'Nowakowski', 42, 242, '2023-09-01'),
(43, 'YKE', 'Aline', 'agirardez', 'Girardez', 43, 434, '2023-04-12'),
(44, 'TEX', 'Rolfe', 'rduffan', 'Duffan', 44, 44, '2022-11-01'),
(45, 'KIV', 'Verge', 'vbaalham', 'Baalham', 45, 45, '2023-06-22'),
(46, 'STD', 'Curcio', 'cmalitrott', 'Malitrott', 46, 464, '2022-11-02'),
(47, 'SLX', 'Christoph', 'ctregona1a', 'Tregona', 47, 473, '2023-07-06'),
(48, 'USS', 'Gwenneth', 'gmorillas1b', 'Morillas', 48, 448, '2023-10-28'),
(49, 'CNU', 'Pauli', 'pmccoole1c', 'McCoole', 49, 492, '2023-09-18'),
(50, 'EBB', 'Austina', 'ablumire1d', 'Blumire', 41, 250, '2023-06-24'),
(51, 'TAO', 'Gus', 'grayburn1e', 'Rayburn', 61, 514, '2023-04-11'),
(52, 'BMD', 'Lew', 'ltilley1f', 'Tilley', 62, 69, '2023-01-17'),
(53, 'PBP', 'Berkly', 'bgaytor1g', 'Gaytor', 63, 43, '2022-11-08'),
(54, 'YLV', 'Hill', 'himpleton1h', 'Impleton', 64, 64, '2023-04-15'),
(55, 'SOA', 'Niels', 'ncoytes1i', 'Coytes', 65, 552, '2023-07-08'),
(56, 'DRK', 'Heinrick', 'hcalbreath1j', 'Calbreath', 66, 356, '2023-06-18'),
(57, 'BWT', 'Gnni', 'ggronow1k', 'Gronow', 67, 57, '2023-07-26'),
(58, 'MCM', 'Bale', 'brockwill1l', 'Rockwill',68, 38, '2023-09-20'),
(59, 'TEC', 'Nils', 'neddoes1m', 'Eddoes', 69, 129, '2023-07-24'),
(60, 'MWY', 'Felisha', 'fohickee1n', 'O''Hickee', 70, 620, '2022-12-28'),
(61, 'LUT', 'Angelique', 'awarrilow1o', 'Warrilow', 39, 611, '2023-06-18'),
(62, 'AUI', 'Rochester', 'rgostall1p', 'Gostall', 38, 362, '2023-10-26'),
(63, 'KTA', 'Bevin', 'bcurtain1q', 'Curtain', 37, 63, '2023-10-29'),
(64, 'PRU', 'Herman', 'hgartshore1r', 'Gartshore', 36, 464, '2023-06-30'),
(65, 'YQI', 'Paquito', 'port1s', 'Ort', 35, 65, '2023-05-11'),
(66, 'BEU', 'Averill', 'ahousam1t', 'Housam', 34, 366, '2023-07-26'),
(67, 'LRB', 'Lester', 'ljanu1u', 'Janu', 33, 67, '2022-11-07'),
(68, 'YNY', 'Tessy', 'tdunne1v', 'Dunne', 32, 683, '2023-06-23'),
(69, 'MLZ', 'Malina', 'mauletta1w', 'Auletta', 39, 69, '2023-01-13'),
(70, 'NYE', 'Christy', 'croglieri1x', 'Roglieri', 70, 23, '2023-08-17');

select * from orders;

INSERT INTO purchases VALUES
(1, 1, 65, 80, '2023-08-12'),
(2, 5, 24, 121, '2023-03-26'),
(3, 5, 21, 88, '2023-02-07'),
(4, 1, 45, 78, '2023-04-22'),
(5, 2, 65, 43, '2022-11-21'),
(6, 1, 44, 98, '2023-02-25'),
(7, 1, 69, 343, '2023-06-27'),
(8, 3, 65, 75, '2023-06-11'),
(9, 5, 39, 999, '2023-06-19'),
(10, 3, 54, 510, '2023-04-06'),
(11, 3, 45, 111, '2023-01-13'),
(12, 2, 43, 12, '2023-09-16'),
(13, 1, 13, 23, '2023-01-05'),
(14, 3, 16, 134, '2023-10-26'),
(15, 4, 56, 145, '2023-09-25'),
(16, 2, 64, 416, '2023-05-09'),
(17, 2, 46, 147, '2023-05-09'),
(19, 3, 19, 149, '2023-06-07'),
(20, 4, 66, 20, '2023-04-21'),
(21, 1, 25, 21, '2023-02-25'),
(22, 4, 42, 224, '2022-11-25'),
(23, 4, 56, 23, '2023-07-20'),
(24, 3, 67, 245, '2023-07-13'),
(25, 4, 45, 65, '2022-11-17'),
(26, 3, 67, 66, '2023-05-30'),
(27, 5, 27, 267, '2022-12-26'),
(28, 1, 28, 268, '2023-03-15'),
(29, 2, 29, 69, '2023-01-12'),
(30, 3, 30, 30, '2023-06-10'),
(31, 5, 31, 31, '2023-06-23'),
(32, 2, 32, 32, '2023-03-11'),
(33, 3, 33, 33, '2023-01-08'),
(34, 4, 34, 334, '2023-08-29'),
(35, 5, 35, 35, '2023-01-01'),
(36, 3, 33, 336, '2023-10-12'),
(37, 3, 34, 337, '2023-03-26'),
(38, 5, 38, 138, '2023-03-24'),
(39, 4, 45, 349, '2023-06-06'),
(40, 4, 40, 140, '2023-10-25'),
(41, 4, 41, 41, '2023-08-05'),
(42, 1, 42, 42, '2022-11-14'),
(43, 4, 53, 43, '2023-05-20'),
(44, 5, 46, 44, '2023-05-26'),
(45, 3, 6, 45, '2022-11-03'),
(46, 3, 35, 46, '2023-05-28'),
(47, 5, 45, 47, '2022-12-17'),
(48, 3, 58, 48, '2022-12-05'),
(49, 3, 59, 49, '2023-03-08'),
(50, 5, 50, 50, '2023-10-13'),
(51, 1, 51, 51, '2023-05-21'),
(52, 1, 32, 152, '2023-07-09'),
(53, 3, 33, 543, '2023-01-13'),
(54, 4, 54, 545, '2023-02-15'),
(55, 5, 63, 11, '2023-07-10'),
(56, 4, 54, 56, '2022-11-01'),
(57, 4, 47, 51, '2023-01-16'),
(58, 5, 48, 13, '2023-09-20'),
(59, 5, 4, 59, '2023-10-03'),
(60, 3, 10, 30, '2023-10-03'),
(61, 1, 31, 63, '2023-03-16'),
(62, 2, 63, 62, '2022-12-14'),
(63, 4, 56, 4, '2023-03-01'),
(64, 4, 65, 44, '2023-03-08'),
(65, 5, 65, 64, '2023-02-05'),
(66, 1, 66, 64, '2023-09-20'),
(67, 1, 12, 67, '2023-05-29'),
(68, 2, 68, 3, '2023-07-04'),
(69, 1, 70, 29, '2023-02-25'),
(70, 2, 54, 710, '2022-11-15')
;

SELECT * FROM purchases;

-- 1) WRITE A QUERY TO DISPLAY PRODUCT NAME AND SUPPLIER 

select product_name,supplier
from products
join purchases
on products.id = purchases.supplier_id
join suppliers
on purchases.supplier_id = suppliers.id; 


-- 2) WRITE A SQL QUERY FOR NAME OF TOP SELLING PRODUCT

SELECT product_name,SUM(number_shipped) AS TOTAL_SHIPPED 
FROM orders
JOIN products
ON orders.product_id = products.id
JOIN purchases
ON products.id = purchases.product_id
group by products.product_name
ORDER BY SUM(number_shipped) DESC; 


-- 3) WRITE A SQL QUERY FOR TOP SELLER SUPPLIER NAME

select supplier,sum(number_shipped) AS total_shipped 
from orders
join products 
On orders.product_id = products.id
join purchases
on purchases.product_id = products.id
join suppliers
on suppliers.id = purchases.supplier_id
group by suppliers.supplier
order by sum(number_shipped)desc;

-- 4) PRODUCT WISE SUM OF NUMPER SHIPPED
 
SELECT product_name,SUM(number_shipped)
FROM products
JOIN orders
ON products.id = orders.product_id
GROUP BY product_name
order by sum(number_shipped) desc;

-- 5) SUPPLIER PURCHASES INVENTORY RECEIVED 

SELECT supplier,SUM(number_received) 
FROM suppliers
JOIN purchases
ON suppliers.id = purchases.supplier_id
GROUP BY supplier
ORDER BY supplier;


-- 6) TOTAL INVENTORY RECEIVED FROM SUPPLIER

SELECT supplier,SUM(inventory_received) 
FROM products
JOIN purchases
ON products.id = purchases.product_id
JOIN suppliers
ON purchases.supplier_id = suppliers.id
GROUP BY supplier;


-- 7) PRODUCT WISE SUM OF NUMPER SHIPPED
 
SELECT product_name,sum(number_shipped)
FROM products
JOIN orders
ON products.id = orders.product_id
GROUP BY product_name
ORDER BY sum(number_shipped)desc;

-- 8) CROSS JOIN  

SELECT * FROM suppliers
CROSS JOIN purchases
ON purchases.supplier_id = suppliers.id;


-- 9) CUSTOMER FIRST NAME, LAST NAME , PRODUCT BUY FROM WHICH SUPPLIER

SELECT first_name,last_name,product_name,supplier
FROM orders
JOIN products 
ON orders.product_id = products.id
JOIN purchases
ON products.id = purchases.product_id
JOIN suppliers
ON purchases.supplier_id = suppliers.id;


-- 10) LAST 180 DAYS ORDER WITH PRODUCT NAME,FIRST_NAME,LAST_NAME

SELECT order_date,product_name,first_name,last_name
FROM orders
JOIN products
ON products.id = orders.product_id
WHERE DATE_SUB(curdate(),INTERVAL 6 MONTH)<= order_date
ORDER BY order_date desc;


-- 11) PRODUCT NAME RECEICED FROM SUPPLIER ,INVENTORY HOLD AND ORDER SHIPPED

SELECT product_name,SUM(INVENTORY_RECEIVED),SUM(NUMBER_RECEIVED),SUM(NUMBER_SHIPPED) 
FROM products
JOIN purchases
ON products.id = purchases.product_id
JOIN orders 
ON products.id = orders.product_id
GROUP BY product_name
ORDER BY product_name DESC;


-- 12) SUPLLIER SHIPPED ORDER 

SELECT supplier,SUM(NUMBER_SHIPPED)
FROM suppliers
JOIN purchases 
ON suppliers.id = purchases.supplier_id
JOIN products 
ON purchases.product_id = products.id 
JOIN orders 
ON products.id = orders.product_id
GROUP BY supplier;

-- 13) FIND STARTING INVENTORY AND NUMBER SHIPPED AS PER PRODUCT NAME

SELECT product_name,SUM(STARTING_INVENTORY),SUM(NUMBER_SHIPPED) 
FROM products
JOIN orders
ON products.id = orders.product_id
GROUP BY product_name;

-- 14) PRODUCT NAME,INVENTORY ON HAND SUPPLIER WHO HAS STELLAR GADGET IN STOCK

SELECT product_name, supplier, SUM(INVENTORY_ON_HAND)
FROM products
JOIN purchases
ON products.id = purchases.product_id
JOIN suppliers 
ON purchases.supplier_id = suppliers.id
WHERE PRODUCT_NAME = 'Stellar Gadget'
GROUP BY supplier;


-- 15) FIND HIGHEST PRODUCT SHIPPED TO CUSTOMER NAME = Benny

SELECT product_name,first_name,SUM(NUMBER_SHIPPED) 
FROM products
JOIN orders
ON products.id = orders.product_id
WHERE first_name= 'Benny'
GROUP BY product_name;

-- 16) NUMBER SHIPPED TO CUTOMER DETAILS YEAR AND MONTH WISE

SELECT YEAR(order_date) AS YEAR,MONTHNAME(order_date) AS MONTH,COUNT(number_shipped) AS TOTAL_ORDER
from orders
GROUP BY YEAR(order_date),MONTHNAME(order_date)
ORDER BY YEAR(order_date),MONTHNAME(order_date) ASC;

-- 17) LEFT JOIN ON 3 TABLES

SELECT product_name,supplier
FROM products
LEFT JOIN purchases
ON products.id = purchases.product_id
LEFT JOIN suppliers
ON purchases.supplier_id = suppliers.id;

-- 18) Sub-Query In Puchase Table Find Avg of Number_received and > than avg NUMBER REVEIVED

SELECT * FROM purchases
WHERE NUMBER_RECEIVED > (SELECT AVG(NUMBER_RECEIVED) FROM purchases);

-- 19) USING WHERE CONDITION

SELECT first_name,number_shipped
from orders
WHERE number_shipped > 20;

-- 20) JOIN THE PRODUCTS AND ORDERS TABLE USING CROSS JOIN QUERY

SELECT * FROM products
CROSS JOIN orders
ON products.id = orders.product_id;

-----------------------------------------------------


select first_name,product_name,purchase_date
from orders
join products 
on products.id = orders.product_id
join purchases
on orders.product_id = purchases.product_id
group by first_name,product_name,purchase_date
order by DATE(purchase_date);

select product_name,supplier
from suppliers
join purchases 
on suppliers.id = purchases.supplier_id
join products
on purchases.product_id = products.id
where product_name LIKE '%C'
;

select product_name,(inventory_received-number_shipped) as remaining_inventory
from products
join orders
on products.id = orders.product_id
;















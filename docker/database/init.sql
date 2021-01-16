CREATE TABLE `offer` (
  `offer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `image_url` varchar(256) NOT NULL,
  `cash_back` decimal(4,2) NOT NULL,
  `position` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB;

INSERT INTO `offer` (`offer_id`, `name`, `image_url`, `cash_back`, `position`) VALUES
(34393, 'Grimm''s Naturally Fermented Foods', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/6102/56393_1516639373.jpg', 1.00, 1),
(34655, 'Vector Meal Replacement', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/5987/56389_1516908117.jpg', 1.00, 2),
(34656, 'Vector Protein Bars', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/4130/38880_1496766889.jpg', 1.00, 3),
(35990, 'Manitoba Harvest Hemp Hearts', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/5857/54523_1513026815.jpg', 1.50, 4),
(36259, 'Casbah Products', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/6508/59925_1521222040.jpg', 1.00, 5),
(38426, 'Pure Via sweeteners', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/5741/53509_1511302596.jpg', 2.00, 6),
(38447, 'International Collection Oils', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/7105/63947_1528312196.jpg', 1.00, 7),
(38744, 'Dawn', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/1795/10751_1439567381', 0.50, 8),
(39271, 'Tide Liquid Detergent', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/4902/56910_1527084051.jpg', 1.00, 9),
(39287, 'Mackie''s of Scotland Potato Crisps', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/6923/62734_1526399532.jpg', 1.00, 10),
(39604, 'Sanissimo Oven-Baked Corn Crackers', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/7348/66109_1531420737.jpg', 1.00, 11),
(39939, 'Select Swanson Soup Products', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/5968/66691_1532455333.jpg', 0.75, 12),
(39992, 'Buy 3: Campbell''s Broth', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/7466/66793_1533061144.jpg', 2.00, 13),
(40200, 'Chosen Foods Avocado Oil Dressings', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/7527/67168_1533221549.jpg', 3.00, 14),
(40204, 'Chosen Foods Vegan Mayo', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/7527/67175_1533222675.jpg', 3.00, 15),
(40408, 'Buy 2: Select TRISCUIT Crackers', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/6840/67561_1535141624.jpg', 1.00, 16),
(40433, 'TRISCUIT Organic', 'https://checkout51-production.s3-us-west-2.amazonaws.com/1534361237_16814358_ADMIN_UPLOAD67606-list.jpg', 1.00, 17),
(40655, 'Tostitos Hint of Roasted Garlic', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/7600/67648_1534338838.jpg', 1.00, 18),
(40789, 'Stubb''s BBQ Sauce', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/7690/68293_1536024660.jpg', 1.00, 19),
(40809, 'Hellmann''s made with Avocado oil', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/7414/67754_1534444028.jpg', 1.00, 20),
(40854, 'Hellmann''s Extra Creamy', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/7414/68416_1536067855.jpg', 1.00, 21),
(41050, 'Dove Shower Foam or Dove Men+Care Foaming Body Wash', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/7754/68780_1536591544.jpg', 2.50, 22),
(41104, 'Pure Protein Chewy Oat Bars', 'https://d3bx4ud3idzsqf.cloudfront.net/public/production/6693/67452_1534514057.jpg', 1.00, 23);
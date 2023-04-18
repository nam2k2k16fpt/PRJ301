# PRJ301
# this is DATABASE OF ME. YOU CAN REFERENCE.


#.........................................................................................START

USE [Assgin_PRJ301]
GO
DROP TABLE Account;
DROP TABLE Users;
DROP TABLE [Order Detail];
DROP TABLE [Order];
DROP TABLE Category;
DROP TABLE Supplier;
DROP TABLE Customers;
DROP TABLE Product;

GO


CREATE TABLE Users(
   User_id INT IDENTITY PRIMARY KEY,
   Displayname varchar(100),
   FullName nvarchar(100),
   Username VARCHAR(50),
   Password VARCHAR(100),
   Status bit NOT NULL DEFAULT 0,
   Address varchar(100),
   Email varchar(100),
   Phone varchar(10),
   Role varchar(20) CONSTRAINT CK_Role CHECK(Role IN ('admin', 'staff')),
   Admin_userid int 
);

CREATE TABLE Product(
   Product_id varchar(20) NOT NULL,
   Product_name nvarchar(255) NOT NULL,
   Quantity INT, --so luong
   Unit nvarchar(10) NOT NULL,
   Status varchar(50) NOT NULL,
   Supplier_id varchar(40) NOT NULL,
   Describe nvarchar(1000),
   photo  varchar(500),
   Price FLOAT,
   Created_at DATE DEFAULT GETDATE(),
   Updated_at DATE DEFAULT GETDATE(),
   CategoryID int ,
   CONSTRAINT chk_status CHECK (Status IN ('stocking', 'out of stock')),
);

ALTER TABLE Product
ADD CONSTRAINT PK_product PRIMARY KEY (Product_id);

CREATE TABLE Category( -- phan loai san pham
    CategoryID int IDENTITY not null,
	CategoryName nvarchar(20),
	Descr nvarchar(1000)
);

ALTER TABLE Category
ADD CONSTRAINT PK_Category PRIMARY KEY (CategoryID);

CREATE TABLE Supplier(
  Supplier_id varchar(40),
  Supplier_name varchar(40),
  Address nvarchar(30),
  Phone varchar(10),
  City nvarchar(20)
);

ALTER TABLE Supplier
ADD CONSTRAINT PK_Supplier PRIMARY KEY (Supplier_id);




CREATE TABLE [Order detail]( --hang xuat ra
   id INT IDENTITY PRIMARY KEY,
   Order_id int not null,
   Product_id varchar(20) not null,
   Quantity int, --so luong san pham trong don hang,
   Price FLOAT, --gia san pham,
   Discount float,
   User_id int 

);

CREATE TABLE [Order](
   Order_id int Identity NOT NULL,
   Customer_id varchar(10),
   Orderdate date
);

ALTER TABLE [Order]
ADD CONSTRAINT PK_Order PRIMARY KEY (Order_id);

ALTER TABLE [Order] ADD Shipdate date;
ALTER TABLE [Order] ADD Address varchar(100);
ALTER TABLE [Order] ADD Shipcity varchar(40);


CREATE TABLE Customers(
   Customer_id varchar(10) NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
	Email VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    DateOfBirth DATE,
	Gender VARCHAR(10),
	Membership_id int --the thanh vien
);
ALTER TABLE Customers ADD Network varchar(100);


ALTER TABLE Customers
ADD CONSTRAINT PK_Customerr PRIMARY KEY (Customer_id);

CREATE TABLE MemberLevel(
   Membership_id int PRIMARY KEY NOT NULL,
   Membership_name Varchar(20) not null
);

--lien ket users và order_detail
--ALTER TABLE [Order detail] DROP CONSTRAINT foreign_key_User_order
 ALTER TABLE [Order detail] ADD CONSTRAINT   foreign_key_User_order
					  FOREIGN KEY(User_id) REFERENCES Users(User_id)
					  ON DELETE SET NULL --XÓA cho mồ côi , bơ vơ, null, từ từ tính
					  ON UPDATE CASCADE  --SỬA BỊ Ả/H dây chuyền 


-- lien ket product với order_detail
ALTER TABLE [Order detail]
ADD CONSTRAINT foreign_key_pro_ord
FOREIGN KEY (Product_id) REFERENCES Product(Product_id);

-- lien ket Product voi Supplier
ALTER TABLE Product
ADD CONSTRAINT foreign_key_pro_sup
FOREIGN KEY (Supplier_id) REFERENCES Supplier(Supplier_id);


-- lien ket Product voi category
ALTER TABLE Product
ADD CONSTRAINT foreign_key_Category_prd
FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID);


--lien ket order_detail voi order
ALTER TABLE [Order detail]
ADD CONSTRAINT foreign_key_ord_ord
FOREIGN KEY ( Order_id) REFERENCES [Order]( Order_id);

--lien ket order voi customers
ALTER TABLE [Order]
ADD CONSTRAINT foreign_key_Order_customer
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id);

--lien ket users voi chinh ban than
ALTER TABLE Users
ADD CONSTRAINT foreign_key_user_user
FOREIGN KEY (Admin_userid) REFERENCES Users(User_id);

--lien ket Customers và MemberLevel 
ALTER TABLE Customers
ADD CONSTRAINT foreign_key_memberlevel_cus 
FOREIGN KEY (Membership_id) REFERENCES MemberLevel(Membership_id);


--INSERT INTO - Account

  INSERT INTO Account VALUES ('Admin','686868','1',8)
  INSERT INTO Account VALUES ('1',10)
  INSERT INTO Account VALUES ('1',11)
  INSERT INTO Account VALUES (,'0',12)
  INSERT INTO Account VALUES (,'0',13)
  

--INSERT INTO - Users
SELECT * FROM Users

INSERT INTO Users(Displayname,FullName,Username,Password,Status,Address,Email,Phone,Role) VALUES ('Admin_ngu_si','NamNH','Admin','686868',1,'BN','admin@gmail.com','0327033756','admin')
INSERT INTO Users(Displayname,FullName,Username,Password,Status,Address,Email,Phone,Role,Admin_userid) VALUES ('St_anv','Nguyen Van A','NguyenA','123',1,'BN','nguyenA@gmail.com','0978901706','staff',1)
INSERT INTO Users(Displayname,FullName,Username,Password,Status,Address,Email,Phone,Role,Admin_userid) VALUES ('St_btq','Tran Quoc B','TranB','456',1,'HN','tranB@gmail.com','0982026529','staff',1)
INSERT INTO Users(Displayname,FullName,Username,Password,Status,Address,Email,Phone,Role,Admin_userid) VALUES ('St_cdc','Dinh Cong C','DinhC','789',0,'BG','dinhC@gmail.com','0129666888','staff',1)
INSERT INTO Users(Displayname,FullName,Username,Password,Status,Address,Email,Phone,Role,Admin_userid) VALUES ('St_dht','Hoang Thi D','HoangD','10JQ',0,'CB','hoangD@gmail.com','0948778888','staff',1)

-- INSERT INTO Supplier
INSERT INTO Supplier VALUES ('sup_hbx','Bui Xuan Hong','khu 2 Hoàng Thượng-Thanh Ba','0707420453','Ha Noi')
INSERT INTO Supplier VALUES ('sup_hnt'	,'Nguyen Trung Hanh',	'Chí Linh - Hải Dương',	'0839609833',	'Hai Duong')
INSERT INTO Supplier VALUES ('sup_tnv',	'Nguyen Van Tuyen','	Thôn 3 - Thạch Thất',	'0986628588',	'Ha Tay')
INSERT INTO Supplier VALUES ('sup_bvc',	'Vu Cong Bung',	'Trang Ha - Tu Son','0989582422',	'Tu Son')
INSERT INTO Supplier VALUES ('sup_htk', 'Tran Khanh Hoa','Trang Ha - Tu Son',	'0981181319','Tu Son')

SELECT * FROM Supplier

--INSERT INTO Category
INSERT INTO Category(CategoryName,Descr) VALUES('Kitchen equipment'	,'Pots, saucepans, pans, bowls, chopsticks, spoons, ladles, chopping boards, super speed jugs')
INSERT INTO Category(CategoryName,Descr) VALUES('Worship things'	,'incense bowl, tray, small water hyacinth, and cup')
INSERT INTO Category(CategoryName,Descr) VALUES('Other items'	,'shoe rack, dog cage, car seat, tree pole, bowl, bowl stand')

--DELETE FROM Category
--SELECT * FROM Category

--INSERT INTO - Product
--DELETE FROM Product 
--SELECT * FROM Product

UPDATE Product Set photo = 'C:/Users/Admin/Documents/Assginment_PRJ/PRJ301/Project_PRJ301/web/img_product/chen-com-su-hao-canh-hc01-trang-202009162121057193.jpg'
WHERE Product_id = 'HC01'

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES ('SHG2020','Bo Noi INOX 304 Đa Lop',255,'set','stocking','sup_hbx','Material: 3 layers: stainless steel 304 - aluminum - stainless steel 430, Number of pots :3
Size: Pot diameter: 18 - 22 - 26 cm , Pot body height: 10.5 - 13 - 16 cm , Pot wall thickness 0.2 cm
Brand : SUNHOUSE MAMA
Made in Viet Nam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\1(58).png',7.92,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES ('DE26M','Chao INOX Nguyen Khoi',255,'(s)','stocking','sup_hbx','Material: Pure aluminum Type: 20cm - 26cm Weight: 1.16kg Details: Non-stick 2 layers Whitford (USA) Brand: SUNHOUSE Origin: Vietnam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\de20m-01-439db3e7-523a-4a46-b77e-95a0bc7da693.webp',22.32,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('SHG112026MGC','Cap Chao Chong Dinh Đay ',200,'set','stocking','sup_hbx','Material: A3003 . aluminum alloy
Type : 14cm - Orange
Details: Powder coated, Anti-Stick
Brand : SUNHOUSE
Made in Viet Nam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\1(295).jpg',19.16,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('SHG-MP14O','Noi Quay Bot',200,'(s)','stocking','sup_hbx','Material: A3003 . aluminum alloy
Type : 14cm - Orange
Details: Powder coated, Anti-Stick
Brand : SUNHOUSE
Made in Viet Nam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\sunhouse-shg-mp14o.jpg',6.28,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('KS-WR45250H','Mang boc thuc pham',200,'box','stocking','sup_hbx','Material: high quality PVC
Details: chemical resistant and safe for health
Brand : SUNHOUSE
Made in Viet Nam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\1(144).png',15.04,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('KS-CH3522B','Thot Tre Tu Nhien ',100,'(s)','stocking','sup_hbx','Material: Natural bamboo cutting board
Type: Natural Bamboo
Dimensions: 35x22 cm
Brand : SUNHOUSE
Made in Viet Nam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\Artboard 2 copy 5(17).jpg',3.88,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('DUAHG-A7','Đua go kham',100,'bin','stocking','sup_hbx','Material: Natural wooden chopsticks
Type: Natural Bamboo
Details: 1 carton of 180 blisters
Brand: Mr. Apple
Made in Viet Nam','"C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\d198c4aaf6c5454e81f60ea89eccc7b4.webp',1.26,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('T01','Khay com 6 ngan ',300,'(s)','stocking','sup_hbx','Material: stainless steel
Dimensions: 34 x 27 x 3cm
Details: Office stainless steel rice tray, high-grade durable and beautiful
From China','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\R.jpg',5.48,3)

    
INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('MOE_HK1','Muong',300,'(s)',	'stocking',	'sup_hnt','Material: Stainless steel-thick
Dimensions: 17.5x5.5cm 62g Brand : OEM Origin: Hong Kong','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\2f2ecce00b0a0c49163d8b4030193a6e.jpg',2.95,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('T02_HK2','Khay com',20,'bin','stocking','sup_hnt','Material Stainless steel
Dimensions: 26x21.5x6
Details: 1 carton of 30 pieces
Brand : OEM
Origin: Hong Kong','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\10eb6e6bb3b927dbe5d8c47f23481253.jpg',6.28,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('T03_HK3','Khay lau',20	,'bag','stocking','sup_hnt','Material Stainless steel
Diameter: 47x31cm.
Depth: 6cm
Details: 1 bag of 100 pieces
Origin : Vietnam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\1-6252edc7-e7cc-4314-bd1d-46d6056d1b39.webp',3.79,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('HTD1055','Am Sieu Toc (1.5L)',	20	,'bin','stocking','sup_hnt','Material Stainless steel
Capacity: 1.5 l
Power: 15000w
Weight: 0.74kg
Details: 1 bag of 100 pieces
Brand : SUNHOUSE
Origin: China','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\OIP.jpg',5.01,1)


INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('INOX_CB','Chan Bat 2 Tang Dung',30	,'(s)',	'stocking'	,'sup_hnt','Material: 304 stainless steel, safe and durable with time
Dimensions: - Length 58cm Width 28cm Height 48cm
Details: 2-tier design, one layer for plates and one for convenient bowls
Brand : OEM
Origin : Vietnam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\e30b13763cc4d7ead6c63392ed8421b9.jpg',10.53,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('KG_01','Ke Goc Dan Tuong', 30, '(s)','stocking'	,'sup_hnt','Material: High quality art iron
Details: 01 shelf and 2 stickers as shown in the picture, a necessary and convenient product for every family in optimizing the space of the kitchen as well as the bathroom to tidy up.
Brand : OEM
Origin: China','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\312c61a7702008cf45f2be06a1fa53b5.jpg',2.19,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('XL_01',' Xeng Lat Thuc Pham	',200,'(s)','stocking'	,'sup_hnt','Material: stainless steel
Dimensions: 26 x 7.5 x 10.5 cm
Color: 120g
Material: With smart design, specialized tongs for fried foods such as fried fish, grilled meat, steak, without worrying about heat or burning hands
Brand : OEM
Origin : Vietnam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\f58903eb2b0ea47e6e61cfbc24d96d9c.jpg',1.90,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('KDMT3','Ke dung đua muong dao', 3,'bag','stocking','sup_hnt','Material: stainless steel
Color : Silver
Material: 304 stainless steel cutlery and chopsticks shelf with ceramic tile wall with high-quality water tray - with stickers and glue
Brand : HOBBY
Origin : Vietnam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\3af7ad89be13b87f293222ec44b109ec.jpg',13.44,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('KDL_3T','Ke Da Nang 3 Tang ', 	20,'(s)',	'stocking','sup_hnt','Material: stainless steel
Size: 3 floors: 60x 34x34 - 5 kg
Color: black
Material: Multi-storey design, neat, with 360* wheels to move easily to keep your home space cool and clean.
Brand : OEM
Origin : Vietnam','"C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\78ee64ce13bdd4af98f65b96788c90e0.jpg"',19.04,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('GIAYTQ','Thung Giay An Gau Truc Sipiao',30,'bin','stocking','sup_hnt','Paper made entirely from virgin bamboo pulp, unbleached, so it only has the ivory whiteness like the bamboo body, not as white as ordinary paper. Has natural toughness, water absorption does not tear, sling, mothers absorb water to use instead of wet towels for babies. It''s very safe. A 3-layer sheet-moisture-proof-tear-resistant-high pressure resistant.','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\9c6d5026d54ed0cd6121eae191fb75c3.jpg',6.11,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('ND_L2','Noi Dat 2l ',	10,'bin','stocking','sup_tnv','2 liter capacity
Dimensions: 25x20x13
  Convenient glass lid, easy to see the food inside, making it easier for you to cook
  Clean black color, easy to clean after use with luxurious design, make your kitchen more modern and comfortable.','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\8bc4071a96baddee27a3ff8ceae04b77.jpg',4.63,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('CL_L1.4','Cap Long Giu Nhiet 3 Ngan 1.4L',	5,'bin','stocking',	'sup_tnv','Material: high quality 304 stainless steel, thick and safe., good heat retention.
- Capacity: 1.3L
- Simple but delicate, eye-catching design, making it easy to carry food when going to work, picnic, business, preparing rice for your baby to school, making porridge for your baby when going out,
- Sealed lid, sturdy and convenient stainless steel handle.
- Durable stainless steel material, safe for user''s health and high side, long-term use.','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\cap-long-com-giu-nhiet-elmich-1500ml-el7284-t1.jpg',5.52,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('BGN_L0.45','Binh Giu Nhiet 450ml ',	10	,'bin'	,'stocking','sup_tnv','Material: Safe 304 stainless steel core
Capacity: 500ml
Weight: 230 grams
Size: 15cm high x 9cm diameter
Structure: The outermost layer is stainless steel coated with electrostatic paint, which is sure not to fade
Details: 8h thermos bottle, beautiful design, durable, anti-spill tea coffee
Brand : OEM
Origin: China','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\binh-giu-nhiet-diller-450ml-2-lop-inox-304-green.jpg',3.79,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('NL_N2','Noi Lau 2 Ngan Inox Size 30cm',	30	,'(s)'	,'stocking','sup_tnv','Material: Safe 304 stainless steel core
Size: diameter 30cm, height 7.5cm.
Details: Multi-function, convenient pot, 1 pot has 2 separate compartments so you can eat 2 hot pot dishes at once such as Thai hot pot, seafood hot pot...
Brand : OEM
Origin: Japan','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\8eddd9d1317f59f05f86e34fbda4a3cd.jpg',6.28,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('HNDTP','Hop Nhua Đung Thuc Pham', 	5	,'box'	,'stocking',	'sup_tnv','Material: high quality virgin plastic, odorless, good heat resistance, safe for health
- Size :
+ Small: 8000ML, 18.8 x 11.2 x 8.1 cm
+ Medium: 2000ML, 22.1 x 14.6 x 9.9 cm
+ Large: 3500ML, 25.5 x 18.0 x 11.7 cm
Color: transparent body green border
The set of food containers has 3 sizes: small, medium, large
Details: containers for cooked food, raw food, rice containers, food storage boxes in the refrigerator, dry food containers...
Brand : SmartChoice
Origin: China','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\e1d14ee6c0551b950afcf9aa268642d4.jpg',8.21,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('LC4','Long Nuoi Cho Meo Bang Inox Size 4',	15,'(s)','stocking','sup_tnv','Stainless steel dog cages are trusted by many people because of the following advantages:
No rust, sturdy, suitable for home decoration.
Not only a place to keep your dog, a dog house also helps you in training, controlling and protecting your pet.
- High durability, not rust like iron.
- High corrosion resistance so it is not affected by dog urine.
- High bearing capacity, stainless steel barn will be more durable than iron barn.
– Lighter weight but better durability, easy to move.
- Satisfying aesthetics, making luxurious interior decorations in the house.
Dimensions of the dog/cat cage (Width x Height x Depth):
Size 4: R45xC50xS35: Suitable for dogs under 4kg','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\3b3fae3d5412160ae9d5d3e27f969370.jpg',10.74,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('MTQA','Moc Treo Quan Ao ',	20	,'(s)'	,'stocking','sup_tnv','Material: 304 . stainless steel
- Dimensions: 44 x 3 (cm)
Details: Wall mounted clothes hangers are indispensable accessories in the daily life of families. Not only limited to hanging clothes, you can use hooks to hang towels, hats, bags or other items very conveniently.
Brand: KHANH HOA
Origin : Vietnam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\f098bf22c9e25c10425b54da270e3f29.jpg',4.63,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('CCCV','Gian Sao Chan Vuong',20,	'(s)','stocking','sup_tnv','Super strong, durable for long-term use, can be stretched to hang more things - height 1m5 length 1m2 can be stretched more _ Handy, ending the worry of having no place to dry clothes.','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\dda07b34b96305e18987bde9ff42f7a0.jpg',15.96,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('KC3','Ky Cong 3 Chen Men', 	6	,'(s)'	,'stocking','sup_tnv','Material: ceramic
Set : 3 cups
- Pattern: DRAGON
  Personality: ROAD
Details: Plain white glaze is the oldest type of enamel in Bat Trang craft village, since the 14th century it has been widely used in kilns in the craft village. Workers use blue glaze to cover the outside of ceramics and use brushes as tools to draw on ceramics to create beautiful and aesthetically pleasing products.
Brand : Phung Gia Ceramics
Origin : Vietnam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\ky-3-chen-2.jpg',6.32,2)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('ACDN','Am Chen Dat Nung  ',3,'bin'	,'stocking','sup_tnv','Material: high quality ceramic
Set: 1 teapot, 6 cups and 1 tea tray
Details: Bat Trang teapot set with terracotta teapot (brown, brick brown, black brown) hand-painted pattern engraved on the kettle. The cup is glazed with turquoise in the heart, the color is bright, clean and helps to keep the taste and taste of the tea delicious and beautiful. Rectangular tea tray can drip water, beautiful and luxurious brown wood grain color, matching the antique color of the terracotta teapot, bringing a sense of harmony and antiquity.
Brand : Bat Trang
Origin : Vietnam','"C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\z2653186309087_f3c43c5c3fda060cc86612fcfd5dfa15-2048x2048.jpg',5.27,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('HC01','Chen com Su HC01 Trang',20,'	bin	','stocking','sup_bvc','Material: ceramic
Dimensions: Diameter 10.5cm x height 5cm x bottom diameter 4.5cm
Details: Plain white, simple and traditional
Brand: Hao Canh
Origin : Vietnam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\chen-com-su-hao-canh-hc01-page-202009162121057193.jpg',12.64,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('BCCN','Bat To Su Co Ngan 15cm', 30	,'bin'	,'stocking','sup_bvc','Material: ceramic
Dimensions: 16.5cm wide - 6.7cm high - 510g nặng weight
Details: The product is thick, hard to chip, high-grade enamel is durable, colorfast, and odorless
Brand : HC
Origin : Vietnam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\Sd24833c03735463c89c23a6da4ccbcacP.jpg',10.53,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('A3322','Dia Xoai 14 inch Bang Su', 	10	,'bin'	,'stocking','sup_bvc','Material: ceramic
Dimensions: 34.9*24.8*2.8 cm
Details: High thermal shock resistance because it is fired in a tunnel kiln with a temperature of 1380 degrees Celsius
Brand : LONG PHUONG
Origin : Vietnam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\diaxoailongphuongsutrangcaocap.jpg',6.02,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('BNR_L2','Binh Ngam Ruou 3 Lit',	5	,'bin'	,'stocking','sup_bvc','Material: glass
Size : Body diameter 16cm Height 24cm Mouth diameter 11cm
Details: The inner layer of flexible plastic hugs the bottle to add privacy to the contents inside, The outer layer of the glass jar lid can be completely sealed without fear of alcohol evaporation.
Origin: China','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\1aa0f4f63766d0e8c318922a207b765f.jpg',1.68,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('BNR_L5','Binh Ngam Ruou 5 Lit',	5	,'bin'	,'stocking','sup_bvc','Material: glass
Size : Body diameter 18cm height 30cm Mouth diameter 11cm
Details: The inner layer of flexible plastic hugs the bottle to add privacy to the contents inside, The outer layer of the glass jar lid can be completely sealed without fear of alcohol evaporation.
Origin: China','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\7b5d3dc658c673f7cd6e1eb65fc03d5c.jpg',2.53,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('BNR_L10','Binh Ngam Ruou 10 Lit',5	,'bin',	'stocking'	,'sup_bvc','"Material: glass
Size Body diameter 22cm height 35cm mouth diameter 11cm
Details: The inner layer of flexible plastic hugs the bottle to add privacy to the contents inside, The outer layer of the glass jar lid can be completely sealed without fear of alcohol evaporation.
Origin: China','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\10-768x768.jpg',3.79,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('BNR_L16','Binh Ngam Ruou 16 Lit',5	,'bin'	,'stocking','sup_bvc','Material: glass
Size: body diameter 25cm height 41cm mouth diameter 13.5cm
Details: The inner layer of flexible plastic hugs the bottle to add privacy to the contents inside, The outer layer of the glass jar lid can be completely sealed without fear of alcohol evaporation.
Origin: China','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\binh-thy-tinh-ngam-ruou.png',0.51,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('BNR_L12','Binh Ngam Ruou 12 Lit',5,'bin' ,'stocking','sup_bvc','Material: glass
Size: body diameter 23cm height 39cm mouth diameter 13.5cm
Details: The inner layer of flexible plastic hugs the bottle to add privacy to the contents inside, The outer layer of the glass jar lid can be completely sealed without fear of alcohol evaporation.
Origin: China','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\7b5d3dc658c673f7cd6e1eb65fc03d5c.jpg',4.21,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('BNR_L20','Binh Ngam Ruou 20 Lit',5,'bin','stocking','sup_bvc','Material: glass
Size: body diameter 26cm height 41cm mouth diameter 13.5cm
Details: The inner layer of flexible plastic hugs the bottle to add privacy to the contents inside, The outer layer of the glass jar lid can be completely sealed without fear of alcohol evaporation.
Origin: China','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\binh-thy-tinh-ngam-ruou.png',9.69,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('CBT_L10','Chum Bat Trang 10L Trang Men',5,'(s)'	,'stocking','sup_bvc','The wine soaked in the crock pot is the best.”
• Jars bearing the famous Bat Trang brand
• Jars have a standard thickness of 1.3 (make sure the crockery is always of high thickness)
• Terracotta material has good elasticity, durability, heat resistance, great pressure resistance, smooth inner layer, not rough
• Diverse models, variety of designs, sizes, small and large, crockery jars soaked in wine 10 liters, 20 liters, 30 liters, 50 liters, 100 liters,…150 liters.
• The mouth of the crockery and wine jars fits snugly with the lid to make sure it doesn''t warp when it''s closed
• No harmful impurities when heated, safe to use (reducing aldehydes in alcohol)','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\chum-battrang-768x763.jpg',8.42,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('CBT_L20','Chum Bat Trang 20L Trang Men',5,'(s)'	,'stocking'	,'sup_htk','The wine soaked in the crock pot is the best.”
• Jars bearing the famous Bat Trang brand
• Jars have a standard thickness of 1.3 (make sure the crockery is always of high thickness)
• Terracotta material has good elasticity, durability, heat resistance, great pressure resistance, smooth inner layer, not rough
• Diverse models, variety of designs, sizes, small and large, crockery jars soaked in wine 10 liters, 20 liters, 30 liters, 50 liters, 100 liters,…150 liters.
• The mouth of the crockery and wine jars fits snugly with the lid to make sure it doesn''t warp when it''s closed
• No harmful impurities when heated, safe to use (reducing aldehydes in alcohol)','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\chum-battrang-768x763.jpg',15.16,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('CBT_L40','Chum Bat Trang 40L Trang Men',5,'(s)'	,'stocking','sup_htk','The wine soaked in the crock pot is the best.”
• Jars bearing the famous Bat Trang brand
• Jars have a standard thickness of 1.3 (make sure the crockery is always of high thickness)
• Terracotta material has good elasticity, durability, heat resistance, great pressure resistance, smooth inner layer, not rough
• Diverse models, variety of designs, sizes, small and large, crockery jars soaked in wine 10 liters, 20 liters, 30 liters, 50 liters, 100 liters,…150 liters.
• The mouth of the crockery and wine jars fits snugly with the lid to make sure it doesn''t warp when it''s closed
• No harmful impurities when heated, safe to use (reducing aldehydes in alcohol)','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\chum-battrang-768x763.jpg',26.54,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('CKHO','Con Kho' ,20,'bin'	,'stocking'	,'sup_htk','Material: Alcohol
Carton: 1 carton has 30 pieces
Details: Used as fuel for alcohol stoves in family cooking, hot pot cooking in eateries, restaurants, outdoor picnics.
Brand: Thach Phat
Origin: Vietnam','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\con-store-gia-phat.png',4.21,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('DLL','Dau Luu Ly 2 Lit',15,'bin','stocking','sup_htk','Borage oil auspicious:
smokeless
odourless
Non-toxic, no impurities
especially environmentally friendly
Origin: Taiwan','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\0fa5234de4956f9d2917b5336e398394.jpg',13.90,2)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('BHTT','Binh Hoa Thuy Tinh'	,5	,'bin',	'stocking','sup_htk','Luxury glass flower vase to welcome Tet
- Height: 25cm
- Width of bottle mouth: 10cm
- The thickness of the glass vase is more than 5li, the design is uniform, the quality of the glass is high, the decoration is sharp.
- Many styles of vase mouth suitable for many types of flowers.
- Suitable size to decorate the living room, bedroom, kitchen','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\307893-binh-hoa-thuy-tinh-body (15).jpg',2.32,3)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('MTCX','Muoi Thung Can Xanh',300,'(s)','stocking','sup_htk','Material: stainless steel
Size: Length 31.5cm
🔸 Origin: Vietnam
🔸 Punch ladle and soup ladle with compact and handy size
🔸 Shiny appearance, easy to clean and sterilize
🔸 Has a convenient hanger','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\b2c8c04b2b44f42d3834905e799a6d43.jpg',0.63,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('XL_02','Xeng Inox Chien Xao',200,'(s)','stocking','sup_htk','Material: Shiny stainless steel, durable, not rust
- Dimensions: Length 28.5cm
- Uses: Used to fry, stir-fry food
- Utilities: With hanging hole','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\20d7cadd4ef4b46ec1c2ced70fc27399.jpg',0.42,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('VL','Vot Lau',200,'(s)','stocking','sup_htk','Material: shiny stainless steel, stainless
Color: stainless steel silver
Size: handle length 20-22cm depending on size 12-16-18-20cm
The handle is also a hanger, effective anti-slip design, making it easy to manipulate during processing as well as when needing to be stored.
Safe with food and users'' health','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\a222d52f38c40b538f5680e84c969617.jpg',0.97,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('DTL','Dao Thai Lan' ,	20	,'box'	,'stocking','sup_htk','Handy Thai knives make your housework more quick and convenient. The solid stainless steel blade, sharp, helps you easily cut and slice food, ensuring hygiene and health safety for loved ones during meals.
- Multi-purpose blade design, so it can be used to store, peel, trim ... all.
- For those who cook, knives are always one of the essential and multi-functional tools.
- Good knives, will help the food preparation process quickly, beautifully and cooking becomes easier. Depending on the intended use of the family, you will decide which knife to choose.','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\dao-thai-lan-ee.jpg',2.11,1)

INSERT INTO Product(Product_id,Product_name,Quantity,Unit,Status,Supplier_id,Describe,photo,Price,CategoryID) 
VALUES('DTN','Dao Thai Nhat',0	,'box'	,'out of stock','sup_htk','Super durable: The blade is made of the best Molybdenum-Vanadium stainless steel, so it is very hard and will not corrode. Carton: 1 carton has 30 pieces
Dimensions: blade length 17.5cm, handle length: 12cm, blade width 4.5
Ensure hygiene: The blade and handle are molded in one piece, so food can''t stick to it, easy to clean.
Distributor : Trung Hanh','C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\284534-dao-thai-thit-ca-harima-fc-gyutou-240mm-tieu-chuan-nhat.jpg',1.10,1)

--_________________________________________________________________________________________________

--_________________________________________________________________________________________________

-- insert MemberLevel
SELECT * FROM MemberLevel

INSERT INTO MemberLevel VALUES(1,'Basic')
INSERT INTO MemberLevel VALUES(2,'Standard')
INSERT INTO MemberLevel VALUES(3,'Premium')

-- insert Customers

SELECT * FROM Customers


INSERT INTO  [dbo].[Customers]
           ([Customer_id]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[PhoneNumber]
           ,[Address]
           ,[DateOfBirth]
           ,[Gender]
           ,[Membership_id],Network) VALUES('cus_PU','Phuong','Uyen','phuonguyenhourseware@gmail.com','0986654331','Tu Son','1978-01-10','female',1,'facebook')

INSERT INTO  [dbo].[Customers]
           ([Customer_id]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[PhoneNumber]
           ,[Address]
           ,[DateOfBirth]
           ,[Gender]
           ,[Membership_id],Network) VALUES('cus_HT','Hoa','Thuc','hoathuchourseware@gmail.com','0946589705','Tu Son' ,'1970-02-10','female',2,'twitter')

INSERT INTO  [dbo].[Customers]
           ([Customer_id]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[PhoneNumber]
           ,[Address]
           ,[DateOfBirth]
           ,[Gender]
           ,[Membership_id]) VALUES('cus_TD','Thuy','Den','thuydenhourseware@gmail.com','0919384758','Tu Son','1980-03-10','female',2)

INSERT INTO  [dbo].[Customers]
           ([Customer_id]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[PhoneNumber]
           ,[Address]
           ,[DateOfBirth]
           ,[Gender]
           ,[Membership_id]) VALUES('cus_GL','Uncle','Giang Lieu','gianglieuhourseware@gamil.com','0937562931','Bac Ninh','1969-04-10','male',2)

INSERT INTO  [dbo].[Customers]
           ([Customer_id]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[PhoneNumber]
           ,[Address]
           ,[DateOfBirth]
           ,[Gender]
           ,[Membership_id]) VALUES ('cus_HH','Hoa','Huong','hoahuonghourseware@gmail.com','0962401578','Yen Phong','1977-05-10','female',1)

INSERT INTO  [dbo].[Customers]
           ([Customer_id]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[PhoneNumber]
           ,[Address]
           ,[DateOfBirth]
           ,[Gender]
           ,[Membership_id]) VALUES ('cus_LC','Lien','Cho','lienchohourseware@gmail.com','0948930462','Yen Phong','1982-06-10','female',2)


INSERT INTO  [dbo].[Customers]
           ([Customer_id]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[PhoneNumber]
           ,[Address]
           ,[DateOfBirth]
           ,[Gender]
           ,[Membership_id]) VALUES ('cus_BN','Ba','Ngoc','ngoctuson@gmail.com','0985612345','Tu Son','1968-07-10','female',3)

INSERT INTO  [dbo].[Customers]
           ([Customer_id]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[PhoneNumber]
           ,[Address]
           ,[DateOfBirth]
           ,[Gender]
           ,[Membership_id]) VALUES ('cus_CT','Cuong','Thuan','cuonghourseware@gmail.com','0965863201','Ha Noi','1975-08-10','male',3)

INSERT INTO  [dbo].[Customers]
           ([Customer_id]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[PhoneNumber]
           ,[Address]
           ,[DateOfBirth]
           ,[Gender]
           ,[Membership_id]) VALUES ('cus_HN','Ha','Nghiem','hangnghiem1989@gmail.com','0916719845','Tu Son','1989-09-10','male',2)

INSERT INTO  [dbo].[Customers]
           ([Customer_id]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[PhoneNumber]
           ,[Address]
           ,[DateOfBirth]
           ,[Gender]
           ,[Membership_id]) VALUES ('cus_HBG','Hue','BG','Huexinhgai@gmail.com','0973156820','Bac Giang','1990-10-10','female',3)
-- insert Order

SELECT * FROM [Order]

INSERT INTO  [dbo].[Order]
           ([Customer_id]
           ,[Orderdate]
           ,[Shipdate]
           ,[Address]
           ,[Shipcity]) VALUEs ('cus_BN','2023-03-8','2023-03-9','Tu Son','Tu Son')

INSERT INTO  [dbo].[Order]
           ([Customer_id]
           ,[Orderdate]
           ,[Shipdate]
           ,[Address]
           ,[Shipcity]) VALUEs ('cus_CT','2023-03-9','2023-03-9','Linh Nam-Ha Noi','Ha Noi')

INSERT INTO  [dbo].[Order]
           ([Customer_id]
           ,[Orderdate]
           ,[Shipdate]
           ,[Address]
           ,[Shipcity]) VALUEs ('cus_GL','2023-03-9','2023-03-10','Lim_Bac Ninh','Bac Ninh')

INSERT INTO  [dbo].[Order]
           ([Customer_id]
           ,[Orderdate]
           ,[Shipdate]
           ,[Address]
           ,[Shipcity]) VALUEs ('cus_HBG','2023-03-10','2023-03-10','Tien Phong-Bac Giang','Bac Giang')

INSERT INTO  [dbo].[Order]
           ([Customer_id]
           ,[Orderdate]
           ,[Shipdate]
           ,[Address]
           ,[Shipcity]) VALUEs ('cus_HH','2023-03-10','2023-03-11','Cho-Yen Phong','Yen Phong')

INSERT INTO  [dbo].[Order]
           ([Customer_id]
           ,[Orderdate]
           ,[Shipdate]
           ,[Address]
           ,[Shipcity]) VALUEs ('cus_HN','2023-03-11','2023-03-11','Cho Giau-Tu Son','Tu Son')

INSERT INTO  [dbo].[Order]
           ([Customer_id]
           ,[Orderdate]
           ,[Shipdate]
           ,[Address]
           ,[Shipcity]) VALUEs ('cus_TD','2023-03-11','2023-03-11','Cho Gao-Tu Son','Tu Son')

INSERT INTO  [dbo].[Order]
           ([Customer_id]
           ,[Orderdate]
           ,[Shipdate]
           ,[Address]
           ,[Shipcity]) VALUEs ('cus_HT','2023-03-11','2023-03-12','Cho Gao-Tu Son','Tu Son')

INSERT INTO  [dbo].[Order]
           ([Customer_id]
           ,[Orderdate]
           ,[Shipdate]
           ,[Address]
           ,[Shipcity]) VALUEs ('cus_LC','2023-03-12','2023-03-12','Cho-Yen Phong','Yen Phong')

INSERT INTO  [dbo].[Order]
           ([Customer_id]
           ,[Orderdate]
           ,[Shipdate]
           ,[Address]
           ,[Shipcity]) VALUEs ('cus_PU','2023-03-12','2023-03-12','Cho Gao-Tu Son','Tu Son')

-- insert Order detail

--cus_BN DE26M(20) DTL(10) INOX_CB(5) KG_01(5) user_id 10
INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (1,'DE26M',20,446.4,0,10)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (1,'INOX_CB',5,52.65,0,10)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (1,'DTL',10,11,0,10)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (1,'KG_01',5,10.95,0,10)

--cus_CT HC01(15) KS-WR45250H(20) T01(50) SHG2020(5) user_id 10

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (2,'HC01',15,189.6,0,10)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (2,'KS-WR45250H',20,300.8,0,10)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (2,'T01',50,274,0,10)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (2,'SHG2020',5,39.6,0,10)

-- cus_GL HNDTP(5)  KDL_3T(5) CBT_L20(1) CBT_L40(1) user_id 10

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (3,'HNDTP',5,41.05,0,10)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (3,'KDL_3T',5,95.2,0,10)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (3,'CBT_L20',1,15.16,0,10)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (3,'CBT_L40',1,26.54,0,10)
 
-- cus_HBG BNR_L10(2) BNR_L12(3) BGN_L0.45(2)  user_id 11
INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (4,'BNR_L10',2,7.58,0,11)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (4,'BNR_L12',3,12.63,0,11)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (4,'BGN_L0.45',2,7.58,0,11)

-- cus_HH CKHO(5) DLL(10) XL_02(100)  user_id 11
INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (5,'CKHO',5,21.05,0,11)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (5,'DLL',10,139,0,11)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (5,'XL_02',100,42,0,11)



--cus_HN LC4(5) ACDN(1)  user_id 11
INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (6,'LC4',5,53.7,0,11)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (6,'ACDN',1,5.27,0,11)

--cus_HT BHTT(2)  user_id 12
INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (8,'BHTT',2,4.64,0,12)

--cus_LC BCCN(5) BNR_L20(5) BNR_L5(5) user_id 12

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (9,'BCCN',5,52.65,0,12)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (9,'BNR_L20',5,48.45,0,12)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (9,'BNR_L5',5,12.65,0,12)



-- cus_PU MOE_HK1(100) MTCX(100) T02_HK2(20) user_id 12

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (10,'MOE_HK1',100,295,0,12)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (10,'MTCX',100,63,0,12)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (10,'T02_HK2',20,125.6,0,12)

--cus_TD DUAHG-A7(5) HTD1055(10) user_id 13

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (7,'DUAHG-A7',5,6.3,0,13)

INSERT INTO [Order Detail]([Order_id]
           ,[Product_id]
           ,[Quantity]
           ,[Price]
           ,[Discount]
           ,[User_id]) VALUES (7,'HTD1055',10,50.1,0,13)








--__________________________________________________________________________________________________
CREATE TRIGGER trg_PreventDuplicateUser
ON Users
FOR INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted i
               JOIN Users a ON i.Username = a.Username AND i.Password = a.Password
               WHERE i.User_id <> a.User_id)
    BEGIN
        RAISERROR('Username and password combination already exists', 16, 1)
        ROLLBACK TRANSACTION
        RETURN
    END
END

--tranh xoa role la admin
CREATE TRIGGER tr_prevent_admin_user_deletion
ON Users
FOR DELETE
AS
IF EXISTS(SELECT 1 FROM deleted WHERE Role = 'admin') -- kiểm tra nếu user bị xóa có role là 'Admin'
BEGIN
    PRINT 'You are not allowed to delete a user with role Admin.' -- thông báo lỗi
    ROLLBACK; -- hủy bỏ tác vụ xóa
END
GO



--gender trong customer chi có thể là male or female
CREATE TRIGGER trg_check_gender
ON Customers
FOR INSERT, UPDATE
AS
BEGIN
  IF EXISTS (SELECT * FROM inserted WHERE Gender NOT IN ('male', 'female'))
  BEGIN
    RAISERROR('Gender must be either male or female.', 16, 1)
    ROLLBACK TRANSACTION
  END
END;

CREATE TRIGGER check_duplicate_users
ON Users
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (SELECT * FROM Users u JOIN inserted i ON u.Email = i.Email)
    BEGIN
        RAISERROR ('Email already exists', 16, 1)
        ROLLBACK TRANSACTION
        RETURN
    END

    INSERT INTO Users (DisplayName, FullName,Username,Password,Status, Address, Phone, Email, Role,Admin_userid)
    SELECT DisplayName, FullName,Username,Password,Status, Address, Phone, Email, Role, Admin_userid FROM inserted
END;

--___________________________________________________________





#.........................................................................................END

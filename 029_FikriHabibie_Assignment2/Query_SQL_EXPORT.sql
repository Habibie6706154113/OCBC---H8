--NamaPeserta   : Fikri Habibie
--Kode Peserta  : FSDO001ONL029
--Tugas         : Assigment 2

CREATE database db_bank;

create table customers(
	Cust_Num int identity(101,1) primary key,
	Cust_Name varchar(50),
	CF_Name varchar(25),
	CL_Name varchar(25),
	Phone varchar(20),
	AddressLine1 varchar(50),
	AddressLine2 varchar(50),
	City varchar(15),
	State varchar(15),
	PostalCode varchar(10),
	Country varchar(15),
	SR_EmployeeNum varchar(50),
	Cred_Lim varchar(50)
)

CREATE table ProductLines(
	Prod_Line int identity(101,1) primary key,
	Text_Desc varchar(50),
	Html_Desc varchar(50),
	Img varchar(50)
)

CREATE table Products(
	Prod_Code int identity(101,1) primary key,
	Prod_Name varchar(20),
	Prod_Line int foreign key references ProductLines(Prod_Line),
	Prod_Scale varchar(50),
	Prod_Vendor varchar(40),
	Prod_Desc varchar(50),
	Quant_InStock int,
	Buy_Price int,
	MSRP varchar(50)
)

CREATE table Orders(
	Order_Num int identity(101,1) primary key,
	Order_Date date,
	Required_date date,
	Shipped_Date date,
	Status varchar(20),
	Comments varchar(50),
	Cust_Num int foreign key references Customers(Cust_Num)
)

Create table OrderDetails(
	Order_Num int foreign key references Orders(Order_Num),
	Prod_code int foreign key references Products(Prod_Code),
	Quant_Ordered int,
	Price_Each int,
	Order_LineNum int
)

create table Payments(
	Check_Num int identity(101,1) primary key,
	Cust_Num int foreign key references Customers(Cust_Num),
	Payment_Date date,
	Amount varchar(50)
)

create table Offices(
	Off_Code int identity(101,1) primary key,
	City varchar(15),
	Phone varchar(20),
	AddressLine1 varchar(50),
	AddressLine2 varchar(50),
	State varchar(15),
	Country varchar(15),
	PostCode varchar(10),
	Territory varchar(50)
)

create table Employees(
	Empl_Num int identity(101,1) primary key,
	First_Name varchar(25),
	Last_Name varchar(25),
	Extension varchar(70),
	Email varchar(25),
	Off_Code int foreign key references Offices(Off_Code),
	ReportsTo varchar(50),
	Job_Title varchar(20)
)

-- Soal 1
INSERT into Customers(
	Cust_Name, CF_Name, CL_Name, Phone, AddressLine1, AddressLine2, 
	City, State, PostalCode, Country, SR_EmployeeNum, Cred_Lim 
) values(
	'Fikri Habibie', 'Fikri', 'Habibie', '081528359215', 'Graha Indira', 'Citra Raya',
	'Tangerang', 'Banten', '15710', 'Indonesia', '23476234', '10000000'
);  
INSERT into customers(
	Cust_Name, CF_Name, CL_Name, Phone, AddressLine1, AddressLine2, 
	City, State, PostalCode, Country, SR_EmployeeNum, Cred_Lim 
) values(
	'Budi Sutejo', 'Budi', 'Sutejo', '08158237263', 'Jl. Sudirman', 'No. 45',
	'Kuningan', 'Jakarta Selatan', '17823', 'Indonesia', '723842', '15000000'
);
INSERT into customers(
	Cust_Name, CF_Name, CL_Name, Phone, AddressLine1, AddressLine2, 
	City, State, PostalCode, Country, SR_EmployeeNum, Cred_Lim 
) values(
	'Asep Bensin', 'Asep', 'Bensin', '08120148935', 'Jl. Patimura', 'No. 33',
	'Serang', 'Banten', '15341', 'Indonesia', '428233', '20000000'
);

-- Soal 3
INSERT into ProductLines(
	Text_Desc, Html_Desc, Img
) values(
	'afdsfs', 'asdfdgrge', 'fdgndfn'
);
INSERT into ProductLines(
	Text_Desc, Html_Desc, Img
) values(
	'asgdfh', 'asdffsa', 'dshrsdf'
);
INSERT into ProductLines(
	Text_Desc, Html_Desc, Img
) values(
	'dsfgsgf', 'sdhfytjn', 'sadfg'
);

-- Soal 2
INSERT into Products(
	Prod_Name, Prod_Line, Prod_Scale, Prod_Vendor, Prod_Desc, Quant_InStock, Buy_Price, MSRP
) values(
	'Ducati', '101', 'asdfs', 'jadsg', 'asfsadg', '142', '250000000', 'asdfasg'
);
INSERT into Products(
	Prod_Name, Prod_Line, Prod_Scale, Prod_Vendor, Prod_Desc, Quant_InStock, Buy_Price, MSRP
) values(
	'sadfsadf', '102', 'sadfas', 'sadffs', 'sadfas', '125', '175000000', 'sagdsgda'
);
INSERT into Products(
	Prod_Name, Prod_Line, Prod_Scale, Prod_Vendor, Prod_Desc, Quant_InStock, Buy_Price, MSRP
) values(
	'asdfads', '103', 'safdsa', 'sdfasa', 'sdafa', '98', '198000000', 'asdgasd'
);

-- Soal 4
INSERT into Orders(
	Order_Date, Required_date, Shipped_Date, Status, Comments, Cust_Num
) values(
	'2020-11-15', '2020-12-10', '2021-01-02', 'jadsg', 'asfsadg', '101'
);
INSERT into Orders(
	Order_Date, Required_date, Shipped_Date, Status, Comments, Cust_Num
) values(
	'2020-12-21', '2021-01-05', '2021-01-30', 'sagdsd', 'sadfsaf', '102'
);
INSERT into Orders(
	Order_Date, Required_date, Shipped_Date, Status, Comments, Cust_Num
) values(
	'2021-02-18', '2021-03-02', '2021-04-01', 'jadsg', 'sadfsadg', '103'
);

-- Soal 5
INSERT into OrderDetails(
	Order_Num, Prod_code, Quant_Ordered, Price_Each, Order_LineNum
) values(
	'101', '101', '121', '120000000', '132412'
);
INSERT into OrderDetails(
	Order_Num, Prod_code, Quant_Ordered, Price_Each, Order_LineNum
) values(
	'102', '102', '98', '98000000', '325232'
);
INSERT into OrderDetails(
	Order_Num, Prod_code, Quant_Ordered, Price_Each, Order_LineNum
) values(
	'103', '103', '137', '114000000', '453623'
);

-- Soal 6
INSERT into Payments(
	Cust_Num, Payment_Date, Amount
) values(
	'101', '2020-11-27', 'fhrhr'
);
INSERT into Payments(
	Cust_Num, Payment_Date, Amount
) values(
	'102', '2020-12-15', 'safd'
);
INSERT into Payments(
	Cust_Num, Payment_Date, Amount
) values(
	'103', '2020-02-28', 'sadga'
);

-- Soal 7
INSERT into Offices(
	City, Phone, AddressLine1, AddressLine2, State, Country, PostCode, Territory
) values(
	'sdsaf', '982358292', 'asdga', 'sadgsg', 
	'asdgsdg', 'asdffas', '15840', 'ahbsdjfg'
);
INSERT into Offices(
	City, Phone, AddressLine1, AddressLine2, State, Country, PostCode, Territory
) values(
	'sdagdsf', '324532534', 'asdfsa', 'sdfasdf', 
	'sadfsaf', 'sadfsa', '32421', 'asdfsa'
);
INSERT into Offices(
	City, Phone, AddressLine1, AddressLine2, State, Country, PostCode, Territory
) values(
	'asdgasg', '326474573', 'sadfasf', 'fgdhdf', 
	'cvbxdffg', 'gndjfj', '23521', 'sdahfdgjty'
);

-- Soal 8
INSERT into Employees(
	First_Name, Last_Name, Extension, Email, Off_Code, ReportsTo, Job_Title
) values(
	'sdsaf', 'sdsaf', 'afkgjgd', 'sadkgbgkasg', 
	'101', 'akjsndgk', 'ajksdbfkja'
);
INSERT into Employees(
	First_Name, Last_Name, Extension, Email, Off_Code, ReportsTo, Job_Title
) values(
	'hdfrt', 'dsfreh', 'bnmvvvgh', 'regsrhs', 
	'102', 'gndfg', 'djjrth'
);
INSERT into Employees(
	First_Name, Last_Name, Extension, Email, Off_Code, ReportsTo, Job_Title
) values(
	'fjdaeg', 'ntsrehes', 'dfhbtrw', 'dfsbdsge', 
	'103', 'dfhseh', 'dfgergfgn'
);
create database stockpile3
use stockpile3




create table Supplier
 (  s_id int identity(1,1) primary key,
     name varchar(50) not null,
	 number varchar(11) not null

 )

 create table products
 (  p_id int identity(1,1) primary key,
   
     Product_Name varchar(50) not null,
	  Bar_Code varchar(06)  not null,
      Price int not null,
	  Sell_price int not null,
	  Qty int not null,
	   s_id int foreign key references Supplier(s_id),
	   Supplier_name varchar(50) not null
 )


 create table login_ap(
 lid int default '1' primary key,
     name varchar(50) not null,
	 password_ int not null
 )





 create table Employee(
 eid int identity(1,1) primary key,
	  lid int foreign key references login_ap(lid) default '1',
	  
     name varchar(50) not null,
	 number varchar(11) not null, /*nid*/
	 Address varchar(50) not null,
	 Type varchar(50) not null,
	 Contact_Person varchar(50) not null,
	 Mobile varchar(50) not null,
	  s_id int foreign key references Supplier(s_id),
	
	 s_number varchar(11) not null,
	 s_name varchar(50) not null
)

 create table Customer(
 cid int identity(1,1) primary key,
     name varchar(50) not null,
	 number varchar(11) not null, /*nid*/
	 Address varchar(50) not null,
	 Type varchar(50) not null,
	 Contact_Person varchar(50) not null,
	 Mobile varchar(50) not null

 )
 create table cart(
    cartid int identity(1,1) primary key,
    cid int foreign key references Customer(cid),
	  p_id int foreign key references products(p_id),
	  Product_Name varchar(50) not null,
     Bar_code varchar(50) not null,
	 qty int not null, 
	 Unit_Price int  not null,
	 Total_Price int  not null,
	 

 )

 create table sales(
 saleid int identity(1,1) primary key,
    cartid int foreign key references cart(cartid),
	 
	  
     Customer_Name varchar(50)not null,
	 Total_Qty int not null, 
	 Total_Bill int  not null,
	 status varchar(50) not null,
	 Balance varchar(50) not null
	 

 )

 create table Extra(
 exid int identity(1,1) primary key,
  saleid int foreign key references sales(saleid),
 val int not null, 
	 

 )

 create table grn(
  grnno int identity(1,1) primary key,
    exid int foreign key references Extra(exid),
	  
	  Barcode varchar(50) not null,
     Item_Name varchar(50) not null,
	 Qty int not null, 
	 Cost_Price int  not null,
	 Sell_Price int  not null,
	 Exp_Date varchar(50)  not null,
	 Sub_Total int not null,
	 Discount int not null,
	 Net_Total int not null
	 

 )






use master 
create database storedb
use storedb
---------��������---------
drop database storedb
------------1------------

-----------�� ���������-------------
create table Unit
(
UnitID int not null identity primary key,
UnitName varchar(5) not null
)
----------������-----------------
create table Access
(
AccessID int not null identity primary key,
AccessName varchar(10) not null
)
----------�������-----------
create table Customer
(
CustomerID int not null identity primary key,
CustLastName varchar(20) not null, 
CustFirstName varchar(20) not null, 
CustPatronymic varchar(20) not null, 
Sex varchar(2) not null ,
CustDateOfBirth  Date not null, 
CustAddress varchar(200) not null, 
CustPhoneNumber varchar(20) not null, 
CustDiscountAmount tinyint null
)
----------������������-----------
create table Users
(
UsersID int not null identity primary key,
AccessID int foreign key references Access(AccessID),
[Login] varchar(50) not null,
[Password] varchar(50) not null,
);
--------------��������--------------
create table Employee 
(EmployeeID int not null identity primary key, 
UsersID int null foreign key references Users(UsersID),
EmpLastName varchar(20) not null, 
EmpFirstName varchar(20) not null, 
EmpPatronymic varchar(20) not null, 
Sex varchar(2) not null ,
EmpDateOfBirth Date not null, 
EmpAddress varchar(200) not null,
EmpPhoneNumber varchar(20) not null,
Position varchar(20) not null,
Experience tinyint not null,
--constrain CheckTeacher check (Sex = '�' OR Sex= '�') 
);
----------��������� ������-------
create table Category
(
CategoryID  int not null identity primary key,
NameCategory varchar(20) not null,
)

----------�����-----------
create table Storage
(
StorageID  int not null identity primary key,
CategoryID int null foreign key references Category(CategoryID),
UnitID int null foreign key references Unit(UnitID),
[Name] varchar(100) not null,
[Count] tinyint not null,
[Description] varchar(350) not null,
Price float not null,
)
----------�������-----------
create table Store
(
StoreID int not null identity primary key,
EmployeeID int null foreign key references Employee(EmployeeID),
CustomerID int null foreign key references Customer(CustomerID),
StorageID int null foreign key references Storage(StorageID),
[Count] tinyint not null,
TotalPrice float not null,
PurchaseDay Date not null,
)

-------------------------���������
--------------���������� �������
--drop proc InputStore
go
create procedure InputStore 
@EmployeeID int,
@CustomerID int,
@StorageID int,
@Count int,
@TotalPrice float,
@PurchaseDay Date
AS
begin
INSERT INTO Store(EmployeeID, CustomerID, StorageID, [Count], TotalPrice, PurchaseDay)
                    VALUES (@EmployeeID, @CustomerID, @StorageID, @Count, @TotalPrice, @PurchaseDay)					
end
go
--exec InputStore @EmployeeID=3, @CustomerID=3, @StorageID=3, @Count=3, @TotalPrice=3
-------------------���������� ���������� ������ �� ������ (��� �� �� ������� ��������� �����)
--drop proc DecreaseAmountStore
go
create procedure DecreaseAmountStore 
@StorageID int,
@Count int
AS
begin
update Storage
set 
[Count]=[Count]-@Count
where StorageID=@StorageID
end
go
--exec DecreaseAmountStore @StorageID=3, @Count=3
-------------------------------------------���������� �������
--drop proc InsertCustomer
go
create procedure InsertCustomer 
@CustLastName varchar(20), 
@CustFirstName varchar(20), 
@CustPatronymic varchar(20), 
@Sex varchar(2) ,
@CustDateOfBirth  Date, 
@CustAddress varchar(200), 
@CustPhoneNumber varchar(20)
AS
begin
INSERT INTO Customer(CustLastName,CustFirstName, CustPatronymic, Sex, CustDateOfBirth, CustAddress, CustPhoneNumber)
                    VALUES (@CustLastName, @CustFirstName, @CustPatronymic, @Sex, @CustDateOfBirth, @CustAddress,@CustPhoneNumber)					
end
go
--exec InsertCustomer @StorageID=3, @Count=3

select distinct [Name] from Storage
                    join Category on (Storage.CategoryID=Category.CategoryID)
                    where NameCategory='����������������' 
----------------- ------------------------
insert Access(AccessName) 
values
('High'),
('Middle');
----------------------------------------
insert Users([Login], [Password],AccessID) 
values
('Admin',   '1',1),
('Teacher',    '1',2),
('Teacher3',    '1',2),
('Teacher4',    '1',2),
('Teacher5',    '1',2),
('Teacher6',    '1',2),
('Teacher7',    '1',2),
('Teacher8',    '1',2),
('Teacher9',    '1',2),
('Teacher10',    '1',2),
('Teacher11',    '1',2),
('Teacher12',    '1',2),
('Teacher13',    '1',2),
('Teacher14',    '1',2),
('Teacher15',    '1',2),
('Teacher16',    '1',2),
('Teacher17',    '1',2);
--------------------------------------------------
insert Employee(UsersID,EmpLastName, EmpFirstName, EmpPatronymic, Sex, EmpDateOfBirth, EmpAddress, EmpPhoneNumber, Position, Experience) 
values 
('1','��������','Admin','����������',   '�', '1982-08-27','�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('2','�������','���',  '�����������',  '�', '1982-10-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('3','�������','������', '�����������',  '�', '1982-02-27','�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('4','�������','����',   '�����������', '�', '1982-01-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('5','�������','�����',   '�����������', '�', '1982-03-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('6','�������','��������', '�����������',   '�', '1982-04-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('7','�������','��������',  '�����������',  '�', '1982-05-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('8','�������','����', '�����������',   '�', '1982-06-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('9','�������','����',  '�����������',  '�', '1982-07-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('10','�������','����',  '�����������',  '�', '1982-01-18' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('11','�������','��������',  '�����������',  '�', '1982-01-19' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('12','�������','����',   '�����������', '�', '1982-01-20' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('13','�������','�������','�����������',    '�', '1982-01-21' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('14','�������','�����','�����������','�', '1982-01-22' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('15','�������','����','�����������','�', '1982-01-23' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('16','�������','�������','�����������',    '�', '1982-01-24' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3),
('17','�������','����', '�����������',   '�', '1982-01-25' ,'�.����� �� ���������� �58 �� 33', '152-33-32', '�������������',3);

insert Customer(CustLastName, CustFirstName, CustPatronymic, Sex, CustDateOfBirth, CustAddress, CustPhoneNumber) 
values 
('��������','Admin','����������',   '�', '1982-08-27','�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','����', '����������',   '�', '1982-09-27','�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','���',  '����������',  '�', '1982-10-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','������', '����������',  '�', '1982-02-27','�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','����',   '����������', '�', '1982-01-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','�����',   '����������', '�', '1982-03-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','��������', '����������',   '�', '1982-04-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','��������',  '����������',  '�', '1982-05-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','����', '����������',   '�', '1982-06-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','����',  '����������',  '�', '1982-07-17' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','����',  '����������',  '�', '1982-01-18' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','��������',  '����������',  '�', '1982-01-19' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','����',   '����������', '�', '1982-01-20' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','�������','����������',    '�', '1982-01-21' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','�����','����������','�', '1982-01-22' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','����','����������','�', '1982-01-23' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','�������','����������',    '�', '1982-01-24' ,'�.����� �� ���������� �58 �� 33', '152-33-32'),
('�������','����', '����������',   '�', '1982-01-25' ,'�.����� �� ���������� �58 �� 33', '152-33-32');
------------------------
insert Unit (UnitName)
values
('�'),
('��'),
('��'),
('�'),
('��'), --5
('�'),
('��'),
('��');

-------------------
insert Category (NameCategory)
values 
('���������� ���������'),
('����������������'),
('���������� ���������'),
('�������� ���������'),
('���������'),
('������ � ������'),
('������ ���������'),
('��� � ������');
-----------------------------------
insert Storage (CategoryID, UnitID, [Name], [Count], [Description], Price)
values
(1, 5,'����������� � �������������',100,'����������� �������� (12.5 ��) ����������� Knauf 60 x 150 ��',4.20),
(1, 5,'����������� � �������������',100,'���������� ����������� �������� (12.5 ��) ����������� 60 x 120 ��',3.09),
(1, 5,'����������� � �������������',100,'����������� �������� (12.5 ��) ����������� ������� 120 x 250 ��',9.49),
(1, 5,'����������� � �������������',100,'����������� �������� (12.5 ��) ������������ Knauf 60 x 150 ��',4.90),
(1, 5,'����������� � �������������',100,'����������� �������� (12.5 ��) ����������� ������� 120 x 300 ��',11.14),
(1, 5,'����� ������������',100,'������ (��������������) �500 �20, 25 ��',5.49),
(1, 5,'����� ������������',100,'������ (��������������) �500 �0, 25 ��',6.50),
(1, 5,'����� ������������',100,'��������� �� ���������� ��������� Weber Vetonit LR+, 20 ��',15.20),
(1, 5,'����� ������������',100,'��������� �������� Sniezka Acryl Putz ST10 (����� + �����), 20 ��',15.98),
(1, 5,'����� ������������',100,'��������� �������� Knauf Fugen, 10 ��',7.60),
(1, 5,'������ � �����',100,'������ ��������� Sniezka Ultra Biel �����, 1 �',4.12),
(1, 5,'������ � �����',100,'������ ��������� Sniezka Ultra Biel �����, 3 �',11.33),
(1, 5,'������ � �����',100,'������ ��������� Sniezka Ultra Biel �����, 5 �',17.30),
(1, 5,'������ � �����',100,'������ ��������� Sniezka Ultra Biel �����, 10 �',29.32),
(1, 5,'������ � �����',100,'������ ��������� ������ ������ ���� (��) �����, 5 �',16.85),
(1, 5,'������ � ���������',100,'��������� ������ ���������� Ceresit CT17 Profigrunt, 2 �',7.39),
(1, 5,'������ � ���������',100,'��������� ������ ���������� Ceresit CT17 Profigrunt, 5 �',17.68),
(1, 5,'������ � ���������',100,'��������� ������ ���������� Ceresit CT17 Profigrunt, 10 �',28.80),
(1, 5,'������ � ���������',100,'��������� ���������� ���������� Ceresit CT17 Supergrunt, 2 �',7.75),
(1, 5,'������ � ���������',100,'��������� ���������� ���������� Ceresit CT17 Supergrunt, 5 �',18.38),
(1, 5,'�����, �����������',100,'����� ������� ��-1 (3.0 ��, 100 x 100 ��) 1 x 2 �',3.95),
(1, 5,'�����, �����������',100,'����������� �������� "��������" Welton-������, 50 �2',25.79),
(1, 5,'�����, �����������',100,'����������� �������� "��������" Nortex Deco, 50 �2',24.80),
(1, 5,'�����, �����������',100,'����������� �������� "��������" Nortex Ultra, 50 �2',27.96),
(1, 5,'�����, �����������',100,'����� �������������� ����������� ����-160, 10 �2',12.87),
(1, 5,'������ � �����',100,'������ ��������������� �����������, 2.5 �',0.98),
(1, 5,'������ � �����',100,'������ ��������������� �����������, 3 �',1.19),
(1, 5,'������ � �����',100,'������ ��������������� �������� ���������, 2.5 �',1.12),
(1, 5,'������ � �����',100,'������ ��������������� �������� ���������, 3 �',1.52),
(1, 5,'������ � �����',100,'������ ����������� �� �������������� ������, 2.5 �',1.87),
(1, 5,'�������� ��� ������',100,'�������� ��� ������ (����������) Goldbastik BB 20, 10 � (�� 40 �.��.), ��',18.88),
(1, 5,'�������� ��� ������',100,'�������� ��� ������ (����������) Goldbastik BB 20, 5 � (�� 20 �.��.), ��',10.94),
(1, 5,'�������� ��� ������',100,'���������� "����������" Goldbastik BB26, ��������� ������ ���������, 5 �',9.91),
(1, 5,'�������� ��� ������',100,'���������� "����������" Goldbastik BB26, ��������� ������ ���������, 10 �',18.03),
(1, 5,'�������� ��� ������',100,'�������� ��� ������ (����������) Vidaron ���������� 1:9 ����������, 5 �� (80 �.��.), ��',69.00),
(1, 5,'����, ���������, ����',100,'���������� ���� �������, 500 ��',5.38),
(1, 5,'����, ���������, ����',100,'���������� ��������� ��������� ���� PENOSIL Cured Foam Remover 340 ��',9.65),
(1, 5,'����, ���������, ����',100,'���������� ��� ��������� ���� Penosil Foam Cleaner, 460 ��',9.65),
(1, 5,'����, ���������, ����',100,'���� ��� ����������� ������� Bostik 70, 5 �',24.67),
(1, 5,'����, ���������, ����',100,'���� ��� ����������� ������� Bostik 70, 15 �',53.31),
(2, 5,'����� � �������',100,'���� �������������� (D500) 625 x 250 x 100 �� ����',1.69),
(2, 5,'����� � �������',100,'���� �������������� (D500) 625 x 250 x 120 �� ����',2.09),
(2, 5,'����� � �������',100,'���� �������������� (D500) 625 x 250 x 125 �� ��������',2.38),
(2, 5,'����� � �������',100,'���� �������������� (D500) 625 x 250 x 200 �� ��������',3.60),
(2, 5,'����� � �������',100,'������ (��������������) �500 �20, 25 ��',5.49),
(3, 5,'�����',100,'����� ����������������� 8-�������� ����� (5.2 ��) 113 x 175 ��, ��',7.20),
(3, 5,'�����',100,'����� ����������������� 8-�������� ����� (5.8 ��) 113 x 175 ��, ��',8.20),
(3, 5,'�����',100,'����� ����������������� 8-�������� ����� (5.2 ��) 113 x 175 ��, ��',7.80),
(3, 5,'�����',100,'����� ����������������� 8-�������� ����� (5.8 ��) 113 x 175 ��, ��',8.40),
(3, 5,'�����',100,'����� ����������������� ������� ����� (6 ��) 175 x 110 ��, ��',9.95),
(4, 5,'������� ������',100,'���������� ''����'' ������ ������ �22� ��� �������, 25 ��',12.90),
(4, 5,'������� ������',100,'���������� ''�����������'' Ceresit CT36 ��� �������, 25 ��',12.89),
(4, 5,'������� ������',100,'������ �������� ��������� Condor Fassandenfarde-Object, 15 ��',59.95),
(4, 5,'������� ������',100,'���������� ''������'' (2.0 ��) ������ ������ �23.2 ��� �������, 25 ��',10.73),
(4, 5,'������� ������',100,'���������� ''������'' (3.0 ��) ������ ������ �23.3 ��� �������, 25 ��',10.39),
(5, 5,'������ � �������',100,'������ ��� �-�� 2-� ������� ������, ������� 1,5�� (0,66 ��)',1.06),
(5, 5,'������ � �������',100,'������ ��� �-�� 2-� ������� ������, ������� 2,5�� (0,66 ��)',1.36),
(5, 5,'������ � �������',100,'������ ��� �-�� (�) 3-� ������� ������, ������� 2,5 �� (0,66 ��)',1.88),
(5, 5,'������ � �������',100,'������ ��� 3�0,75�� ������ (0,66 ��) ����������, �����',0.65),
(5, 5,'������ � �������',100,'������ ���-� 2�0,75 �����, ����������-�����',0.59),
(6, 8,'�������� � ������',100,'������� 3.5*25 �� ��� ������� ��� � �������, ������ (100 �� � ���-����) STARFIX (SMZ2-96507-100)',3.15),
(6, 8,'�������� � ������',100,'������� 3.5*35 �� ��� ������� ��� � �������, ������ (50 �� � ���-����) STARFIX (SMZ2-96517-50)',2.38),
(6, 8,'�������� � ������',100,'������� 3.5*35 �� ��� ������� ��� � �������, ������ (1000 �� � ����. ��.) STARFIX (SMC3-96517-1000)',16.07),
(6, 8,'�������� � ������',100,'������� 3.5*45 �� ��� ������� ��� � �������, ������ (500 �� � ����. ��.) STARFIX (SMC3-96527-500)',9.72),
(6, 8,'�������� � ������',100,'������� 3.5*55 �� ��� ������� ��� � �������, ������ (500 �� � ����. ��.) STARFIX (SMC3-96537-500)',11.78),
(7, 5,'������ ��� ����',100,'������ ������������ ������� ���������� ��������� ���-200 �������',0.55),
(7, 5,'������ ��� ����',100,'������ ������� ���������� ��������� ��� �200 (�������, ��� �1)',0.60),
(7, 5,'������ ��� ����',100,'������ ������� ���������� ��������� ��� �200 � ������������ ����� (�������, ��� �1)',0.95),
(7, 5,'������� ��� ����',100,'��������-����������� ����������� ����� ������ ������ ������, 25 ��',17.52),
(7, 5,'������� ��� ����',100,'������� �������� ������������, 15��',7.50),
(8, 5,'������� ���������',100,'����� ������� ECO WB6203-1 (65�, 150��, 1 ������������ 3.25-8) (WB6203-1)',53.84),
(8, 5,'������� ���������',100,'����� ������� DGM GT-1081 (80�, 150��, 1 ������������ 3.25-8) (GT-1081)',53.47),
(8, 5,'������� ���������',100,'����� �����������-������� ����-1� (100�, 120 ��, 1 ������������ 400*90��, ��� 15 ��) (���) (����-1�)',85.25),
(8, 5,'������� ���������',100,'�������� �17 ����� (2.1x10�) (4810751573830)',5.41),
(8, 5,'������� ���������',100,'�������� �30 ����� (����� 1,6*300�, 960�.��.) (1108568252004)',272.89);

insert Store (EmployeeID,CustomerID,StorageID,[Count],TotalPrice,PurchaseDay)
values
(2,1,3,1,12.8,'12-1-2019'),
(3,2,3,1,12.8,'12-1-2019'),
(4,4,3,1,12.8,'12-1-2019'),
(2,3,3,1,12.8,'12-1-2019'),
(3,2,3,1,12.8,'12-1-2019');


---------------------------�������
---------������� �� ������� TotalPrice (Store)
---------������� �� �������� ��� �������, ��� �� �� ������ ���� ���������� ����������



use DB01TEST01
create table mvc1334255
(id int identity(1000,1) primary key,
name varchar(40),
city varchar(40),
)
insert into mvc1334255 values('Bipin','Lucknow')
insert into mvc1334255 values('Nitin','Delhi')
insert into mvc1334255 values('Rahul','Faridabad')
insert into mvc1334255 values('Abhishek','Kolkata')
insert into mvc1334255 values('Jayram','Kochi')
select * from mvc1334255
truncate table mvc1334255
create proc mva_ka_proc
@name varchar(40), @city varchar(40), @cid int out
as
begin 
insert into mvc1334255 values(@name,@city)
set @cid=@@identity
end;
select * from mvc1334255
create proc mvc_ko_view
as
begin
 select * from mvc1334255
end
create proc mvc_ka_delete
@id int
as 
begin 
delete from mvc1334255 where id=@id
end;
create proc getNames1334255
as
begin 
select id, name from mvc1334255
end;

create proc mvc_ko_update
@id int,@name varchar(40),@city varchar(40)
as
begin 
update mvc1334255 set name=@name , city=@city where id=@id
end;
exec mvc_ko_update @id=1000,@name='bipin',@city='delhi';

update mvc1334255 set name='BIPIN' , city='DELHI' where id=1000

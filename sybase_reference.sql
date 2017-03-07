-- find version of sybase that is running
select @@version
go

-- find user for sybase session
suser_name(suid)

-- find sybase servername
select @@servername
go

-- print view definition
sp_helptext <viewname>

-- script to output view definition to file
isql -U${USER} -P${PASSWORD} -S${SERVER} -D${DATABASE} << THEEND >> view_definition_output.sql
set nocount on
go
sp_helptext <viewname>
go
quit
THEEND

-- find all user-defined tables 
-- where table name contains <text>
select * from <database>.<owner>.sysobjects
where type='U'
and name like '%<text>%'
go

-- find tables where a column name contains <text>
select * from <database>.<owner>.syscolumns
where name like '%<text>%'
go

select distinct so.name
from syscolumns sc, sysobjects so
where sc.id = so.id
and sc.name like '%<text>%'
order by so.name
go

-- find all columns and its datatype for a table
select sc.name, st.name
from sysobjects so
join syscolumns sc on so.id=sc.id
join systypes st on st.type=sc.type and st.usertype=sc.usertype
where so.name = '<tablename>'
go

-- convert id to tablename
select object_name(id) 
from <database>.<owner>.syscolumns
where name=<columnname>
go

-- find today's date
select getdate()
go

-- convert string to date
-- reference: http://www.sqlines.com/sybase-asa-to-sql-server/dateformat
select cast('2010-01-31' as date)
go

select convert(date, '2010-01-31', 103)
go

select date('2010-01-31')
go

-- extract from date

-- reference: http://infocenter.sybase.com/help/index.jsp?topic=/com.sybase.infocenter.dc36271.1570/html/blocks/X71771.htm

-- extract day of week
-- returns 1-7 where 1=Sunday and 7=Saturday
select datepart(dw,getdate())
select datepart(weekday,getdate())
go

-- extract quarter
select datepart(qq,getdate())
go

-- extract day as Mon-Fri
select substring(datepart(dw,getdate),1,3)
go

-- find 3 days in past from today date
select dateadd(day,-3,convert(Date,getdate(),365))
go

-- convert string to date
select convert (Date, '20170224')
select cast('20170224' as date)
select cast('02/24/17' as date)
select cast('02/24/2017' as date)
go


-- find all records greater than a date
select * 
from <database>.<owner>.<tablename>
where entdate > '2000-01-01'
go








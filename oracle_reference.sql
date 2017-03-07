— find users with debug privileges
select distinct owner from dba_tab_privs 
where owner <> ‘SYS’ 
and privilege = ‘DEBUG’;

— find oracle db version
select * from v$version;

— find roles granted to user
select * from dba_role_privs
where grantee=‘<username>’
order by grantee,granted_role;


— find privileges granted to user
select * from dba_tab_privs
where grantee=‘<username>’
order by grantee,table_name;

— find all columns for a table
desc <schema.tablename>;

select * from all_tab_columns 
where owner=‘<schema>’ 
and table_name=‘<tablename>’
order by column_id;

— find all constraints on table
select * from all_constraints 
where owner=‘<schema>’ 
and table_name=‘<tablename>’
order by table_name;


— [Used By] find all references where a given table is used e.g. FKey, SPs, Views
select * from all_dependencies
where referenced_name = ‘<tablename>’
order by 1;

— [Uses] find all references used by a given table
select * from all_dependencies 
where name=‘<tablename>’;

— narrow down above to only table references
select * from all_dependencies 
where name=‘<tablename>’
and referenced_type=‘TABLE’;

— find index of a given character in string
select INSTR(‘300.353’, ‘.’) from dual;


— extract Month from date e.g. August
select to_char(to_date(’01-Aug-16’,’DD-MMM-YY’), ‘Month’) from dual;

— date formatting e.g. 2016-Aug
select to_char(to_date(’01-Aug-16’,’DD-MMM-YY’), ‘YYYY-MON’) from dual;

— get first day of current month
select trunc(sysdate, ‘MM’) from dual;

— get first day of current month 
/*
10-Aug-16 09:30 AM
—> truncate time part and go month back
-> 10-Jul-16 12:00 AM
—> go to last day of last month
—> 31-Jul-16 12:00 AM
—> add one day to get to first of current month
—> 01-Aug-16 12:00 AM

*/
select last_day(
				add_months(trunc(sysdate),-1)
			) 
			+ 1
			from dual;


— get last day of current month
select last_day(trunc(sysdate)) from dual;

— get first day of quarter
select trunc(sysdate, ‘Q’) from dual;

— get first day of year
select trunc(sysdate, ‘YYYY’) from dual;












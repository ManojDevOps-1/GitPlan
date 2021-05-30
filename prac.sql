create table test_emp as select * from emp where length(deptno)=1

select * from test_emp

begin
dbms_errlog.create_error_log(dml_table_name => 'TEST_EMP',err_log_table_name => 'ERR_TEST_EMP');
end;


insert into test_emp
 values(1900,'STEVEN Kumar','MANAGER',null,sysdate,50000,0,1,'F',650000)
 log errors into err_test_emp reject limit unlimited

truncate table test_emp


alter table test_emp modify ename varchar2(5)


select * from err_test_emp

delete from err_test_emp where rowid not in
(select max(rowid) from err_test_emp group by empno)

select * from analysis

dbms_utility.compile_schema
dbms_utility.comma_to_table
dbms_utility.current_instance   function
dbms_utility.create_alter_type_error_table  proc
dbms_utility.canonicalize    proc
dbms_utility.exec_ddl_statement

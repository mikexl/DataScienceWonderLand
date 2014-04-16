
*
* declare the connection to SQL server instance the libname way
* 

libname rb sqlsvr datasrc=raspberry uid=mike pwd=pass schema=R;

proc print data=rb.datatable (obs=5);
run;


* 
* Load dataset TicTacToe into SQL Server database with same name as table name
*

proc dbload dbms=SQLSVR data=TicTacToe;
    dsn=raspberry;
    user=mike;
    pw=pass;
    table=TicTacToe;
    load;
run;

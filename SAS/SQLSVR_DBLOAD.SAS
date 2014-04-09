
* Load dataset TicTacToe into SQL Server database with same name as table name

proc dbload dbms=SQLSVR data=TicTacToe;
    dsn=raspberry;
    user=mike;
    pw='passcode';
    table=TicTacToe;
    load;
run;

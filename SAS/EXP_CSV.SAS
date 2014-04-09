proc export data=tmp
        outfile='tables.csv'
        dbms=csv
        replace;
run;

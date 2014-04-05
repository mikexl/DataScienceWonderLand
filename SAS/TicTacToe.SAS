title "tic tac toe";

* journey of SAS
* start to play with the concept of DATA and PROC
* maybe should start building some predictive modeling based off tableau coffee chain sample
* what sales would look like for each region in next quarter? (for certain product)



data t3;
        input a b c;
        datalines;
        1 2 3
        4 5 6
        7 8 9
        ;


proc print data=t3;

run;

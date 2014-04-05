### SQL Server
Well a lot to say but this product only works on *Windows*.   
SQL server is a fast growing product with lots new features introduced every year or couple.   
The *LocalDB* works quite well as a developer instance on a local computer as the name says *local* database. It has 10GB file size limit but I don’t see it is a problem even in the *big data* buzz world. As mostly I use sample data set on local machine.   
The *Analysis Services*, both multidimensional model and tabular model, I have been using them *real* in last few years. Quite happy with them. *In memory* technology may rule the empire now, however OLAP cubes still have its own place especially when your data just cannot be all fit into the memory.   
Worth to mention the old school favorites *sqlcmd* and *osql*

### MySQL
I love it for the simplicity sake. And hate it as it try to be smart in all scenario while mostly just dumb. For instance, *by default*, it only warns you for truncation during data loading. But load the data in anyway, well, truncated data. I’m sure smarter people could figure out with settings change or a tweak. To me all that matters is the default setting. 

### Postgres
Postgres is one of the old open source database system out there for years, that I have been using on and off for various projects and research.   
It is easy to use as *django* backend.   
In general, it is good to be a data warehouse or ODS (Operational Data Store).   
Recently, I have been using R quite a bit. So worth to mention that Postgres works through *RPostgreSQL* package or via *RODBC*, latter may require more effort to setup on Mac OS X. One thing worth to mention that the *RPostgreSQL* does not play well with *SSL* that is a default setting from Heroku Postgres offering. 

### Oracle
Oracle is everywhere if you work in a big company. Few things I like about Oracle are:  
1. Open Source support, indeed my first django app was buit with cx\_Oracle  
2. APEX nice and simple web app  
3. SQL Developer  
4. SQL+ well, like it  

### DB2
Well, cannot say too much rather than blu(e) hah. It works well on *mainframe* as well underpowered PC with the *express edition*. This is the only express product that does not limit the database size. On high end configuration, it is the data warehouse. But $$$$

### SQLite
Not really a server product. But if you program for Mac OS X or iOS, I assure you see it million times. Very lightweight desktop or embedded database option.  

### Teradata
It is the best choice for data warehouse as told by every genius and of course you have to be able to print money to have it. In that aspect, banks have it, government have it, some. And the big wal-mart and netflix. If you look for cheap play, there is a free express version. Unlike other express, it can handle up to one TB data but not computing power intensive task. On that note, a toy for play and on you sandbox. 

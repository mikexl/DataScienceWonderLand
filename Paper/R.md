Interesting a table with 24,876 records eats about 3.3MB space in SQL Server but only takes less than half megabytes when storing in RData file, well .45 actually. 

### Model Fitting and Predictive Analytics
Linear model
Cluster
Time series  

```{r basicconsole}  
lm<-model(profit ~ region + sales_dept)
summary(lm)
```

Convert.GMT2PT <- function(date){
    my.date<-as.POSIXct(date, tz="GMT")
    attributes(my.date)$tzone<-"America/Vancouver"
    return(my.date)
}
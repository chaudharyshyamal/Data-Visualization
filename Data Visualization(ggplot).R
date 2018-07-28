library(ggplot2)
setwd("C:/Users/mahe/Desktop/new_data_changed")
d <- as.data.frame(read.table("test.csv",header=TRUE,sep=","))
data <- as.data.frame(read.table("Sales.csv",header=TRUE,sep=","))


#function for creating plots

g <- function(z, na.rm = TRUE, ...)
{
  nm <- names(z)
  for (i in seq_along(nm))
  {
    plot<-ggplot(z,aes(Month,Segments))+
      geom_bar(stat="identity",aes_string(fill=nm[i]))
    
    ggsave(plot,width = 20, height = 8,
           filename=paste("myplot",nm[i],".png",sep=""))
  }
}

g(data)



#If we want just to visualize data using ggplot

ggplot(data,aes(Month,Segments))+ geom_bar(stat="identity",
                                           aes(fill = Source))

ggplot(data,aes(Month,Segments))+ geom_bar(stat="identity",
                                           aes(fill = Days))

ggplot(data,aes(Month,Segments))+ geom_bar(stat="identity",
                                           aes(fill = TripType))

ggplot(data,aes(Month,Segments))+ geom_bar(stat="identity",
                                           aes(fill = Origin))

ggplot(data,aes(Month,Segments))+ geom_bar(stat="identity",
                                           aes(fill = JPTravelling))

ggplot(data,aes(Month,Segments))+ geom_bar(stat="identity",
                                           aes(fill = Referrer_merge))

#(for september it's lower)
ggplot(data,aes(Month,Segments))+ geom_bar(stat="identity",
                                           aes(fill = AdvanceBookingCategory))

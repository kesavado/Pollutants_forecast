install.packages("readxl")
install.packages("fpp")
install.packages("fpp2")
install.packages("TSA")
install.packages("tseries")
install.packages("forecast")
install.packages("dplyr")
install.packages("TTR")
install.packages("stats")

library(readxl)
library(TSA)
library(tseries)
library(forecast)
library(dplyr)
library(fpp)
library(fpp2)
library(TTR)
library(stats)
library(glmnet)

setwd("C:/Users/dkesa/OneDrive/Documents/SML/R_data")
flow_1 = read.table("vol_f_1.csv",header = TRUE,sep = ',')
flow_2 = read.table("vol_f_2.csv",header = TRUE,sep = ',')
flow_3 = read.table("vol_f_3.csv",header = TRUE,sep = ',')
flow_4 = read.table("vol_f_4.csv",header = TRUE,sep = ',')
flow_5 = read.table("vol_f_5.csv",header = TRUE,sep = ',')
flow_6 = read.table("vol_f_6.csv",header = TRUE,sep = ',')
flow_7 = read.table("vol_f_7.csv",header = TRUE,sep = ',')
flow_8 = read.table("vol_f_8.csv",header = TRUE,sep = ',')
flow_9 = read.table("vol_f_9.csv",header = TRUE,sep = ',')
flow_10 = read.table("vol_f_10.csv",header = TRUE,sep = ',')
flow_11 = read.table("vol_f_11.csv",header = TRUE,sep = ',')
flow_12 = read.table("vol_f_12.csv",header = TRUE,sep = ',')
flow_13 = read.table("vol_f_13.csv",header = TRUE,sep = ',')
flow_14 = read.table("vol_f_14.csv",header = TRUE,sep = ',')
flow_15 = read.table("vol_f_15.csv",header = TRUE,sep = ',')
flow_16 = read.table("vol_f_16.csv",header = TRUE,sep = ',')
flow_17 = read.table("vol_f_17.csv",header = TRUE,sep = ',')
flow_18 = read.table("vol_f_18.csv",header = TRUE,sep = ',')
flow_19 = read.table("vol_f_19.csv",header = TRUE,sep = ',')
flow_20 = read.table("vol_f_20.csv",header = TRUE,sep = ',')
flow_21 = read.table("vol_f_21.csv",header = TRUE,sep = ',')
flow_22 = read.table("vol_f_22.csv",header = TRUE,sep = ',')
flow_23 = read.table("vol_f_23.csv",header = TRUE,sep = ',')
flow_1$count_date=as.Date(flow_1$count_date,format = "%Y-%m-%d")
flow_2$count_date=as.Date(flow_2$count_date,format = "%Y-%m-%d")
flow_3$count_date=as.Date(flow_3$count_date,format = "%Y-%m-%d")
flow_4$count_date=as.Date(flow_4$count_date,format = "%Y-%m-%d")
flow_5$count_date=as.Date(flow_5$count_date,format = "%Y-%m-%d")
flow_6$count_date=as.Date(flow_6$count_date,format = "%Y-%m-%d")
flow_7$count_date=as.Date(flow_7$count_date,format = "%Y-%m-%d")
flow_8$count_date=as.Date(flow_8$count_date,format = "%Y-%m-%d")
flow_9$count_date=as.Date(flow_9$count_date,format = "%Y-%m-%d")
flow_10$count_date=as.Date(flow_10$count_date,format = "%Y-%m-%d")
flow_11$count_date=as.Date(flow_11$count_date,format = "%Y-%m-%d")
flow_12$count_date=as.Date(flow_12$count_date,format = "%Y-%m-%d")
flow_13$count_date=as.Date(flow_13$count_date,format = "%Y-%m-%d")
flow_14$count_date=as.Date(flow_14$count_date,format = "%Y-%m-%d")
flow_15$count_date=as.Date(flow_15$count_date,format = "%Y-%m-%d")
flow_16$count_date=as.Date(flow_16$count_date,format = "%Y-%m-%d")
flow_17$count_date=as.Date(flow_17$count_date,format = "%Y-%m-%d")
flow_18$count_date=as.Date(flow_18$count_date,format = "%Y-%m-%d")
flow_19$count_date=as.Date(flow_19$count_date,format = "%Y-%m-%d")
flow_20$count_date=as.Date(flow_20$count_date,format = "%Y-%m-%d")
flow_21$count_date=as.Date(flow_21$count_date,format = "%Y-%m-%d")
flow_22$count_date=as.Date(flow_22$count_date,format = "%Y-%m-%d")
flow_23$count_date=as.Date(flow_23$count_date,format = "%Y-%m-%d")
flow_1 = flow_1[order(flow_1$count_date),]
flow_2 = flow_2[order(flow_2$count_date),]
flow_3 = flow_3[order(flow_3$count_date),]
flow_4 = flow_4[order(flow_4$count_date),]
flow_5 = flow_5[order(flow_5$count_date),]
flow_6 = flow_6[order(flow_6$count_date),]
flow_7 = flow_7[order(flow_7$count_date),]
flow_8 = flow_8[order(flow_8$count_date),]
flow_9 = flow_9[order(flow_9$count_date),]
flow_10 = flow_10[order(flow_10$count_date),]
flow_11 = flow_11[order(flow_11$count_date),]
flow_12 = flow_12[order(flow_12$count_date),]
flow_13 = flow_13[order(flow_13$count_date),]
flow_14 = flow_14[order(flow_14$count_date),]
flow_15 = flow_15[order(flow_15$count_date),]
flow_16 = flow_16[order(flow_16$count_date),]
flow_17 = flow_17[order(flow_17$count_date),]
flow_18 = flow_18[order(flow_18$count_date),]
flow_19 = flow_19[order(flow_19$count_date),]
flow_20 = flow_20[order(flow_20$count_date),]
flow_21 = flow_21[order(flow_21$count_date),]
flow_22 = flow_22[order(flow_22$count_date),]
flow_23 = flow_23[order(flow_23$count_date),]

year_1 = format(flow_1[,1],"%Y")
year_2 = format(flow_2[,1],"%Y")
year_3 = format(flow_3[,1],"%Y")
year_4 = format(flow_4[,1],"%Y")
year_5 = format(flow_5[,1],"%Y")
year_6 = format(flow_6[,1],"%Y")
year_7 = format(flow_7[,1],"%Y")
year_8 = format(flow_8[,1],"%Y")
year_9 = format(flow_9[,1],"%Y")
year_10 = format(flow_10[,1],"%Y")
year_11 = format(flow_11[,1],"%Y")
year_12 = format(flow_12[,1],"%Y")
year_13 = format(flow_13[,1],"%Y")
year_14 = format(flow_14[,1],"%Y")
year_15 = format(flow_15[,1],"%Y")
year_16 = format(flow_16[,1],"%Y")
year_17 = format(flow_17[,1],"%Y")
year_18 = format(flow_18[,1],"%Y")
year_19 = format(flow_19[,1],"%Y")
year_20 = format(flow_20[,1],"%Y")
year_21 = format(flow_21[,1],"%Y")
year_22 = format(flow_22[,1],"%Y")
year_23 = format(flow_23[,1],"%Y")


month_1 = format(flow_1[,1],"%m")
month_2 = format(flow_2[,1],"%m")
month_3 = format(flow_3[,1],"%m")
month_4 = format(flow_4[,1],"%m")
month_5 = format(flow_5[,1],"%m")
month_6 = format(flow_6[,1],"%m")
month_7 = format(flow_7[,1],"%m")
month_8 = format(flow_8[,1],"%m")
month_9 = format(flow_9[,1],"%m")
month_10 = format(flow_10[,1],"%m")
month_11 = format(flow_11[,1],"%m")
month_12 = format(flow_12[,1],"%m")
month_13 = format(flow_13[,1],"%m")
month_14 = format(flow_14[,1],"%m")
month_15 = format(flow_15[,1],"%m")
month_16 = format(flow_16[,1],"%m")
month_17 = format(flow_17[,1],"%m")
month_18 = format(flow_18[,1],"%m")
month_19 = format(flow_19[,1],"%m")
month_20 = format(flow_20[,1],"%m")
month_21 = format(flow_21[,1],"%m")
month_22 = format(flow_22[,1],"%m")
month_23 = format(flow_23[,1],"%m")

flow_1=cbind(flow_1,year_1,month_1)
flow_2=cbind(flow_2,year_2,month_2)
flow_3=cbind(flow_3,year_3,month_3)
flow_4=cbind(flow_4,year_4,month_4)
flow_5=cbind(flow_5,year_5,month_5)
flow_6=cbind(flow_6,year_6,month_6)
flow_7=cbind(flow_7,year_7,month_7)
flow_8=cbind(flow_8,year_8,month_8)
flow_9=cbind(flow_9,year_9,month_9)
flow_10=cbind(flow_10,year_10,month_10)
flow_11=cbind(flow_11,year_11,month_11)
flow_12=cbind(flow_12,year_12,month_12)
flow_13=cbind(flow_13,year_13,month_13)
flow_14=cbind(flow_14,year_14,month_14)
flow_15=cbind(flow_15,year_15,month_15)
flow_16=cbind(flow_16,year_16,month_16)
flow_17=cbind(flow_17,year_17,month_17)
flow_18=cbind(flow_18,year_18,month_18)
flow_19=cbind(flow_19,year_19,month_19)
flow_20=cbind(flow_20,year_20,month_20)
flow_21=cbind(flow_21,year_21,month_21)
flow_22=cbind(flow_22,year_22,month_22)
flow_23=cbind(flow_23,year_23,month_23)

agg_1 = aggregate(flow_1[,2],by = list(flow_1[,3],flow_1[,4]), FUN = sum)
agg_2 = aggregate(flow_2[,2],by = list(flow_2[,3],flow_2[,4]), FUN = sum)
agg_3 = aggregate(flow_3[,2],by = list(flow_3[,3],flow_3[,4]), FUN = sum)
agg_4 = aggregate(flow_4[,2],by = list(flow_4[,3],flow_4[,4]), FUN = sum)
agg_5 = aggregate(flow_5[,2],by = list(flow_5[,3],flow_5[,4]), FUN = sum)
agg_6 = aggregate(flow_6[,2],by = list(flow_6[,3],flow_6[,4]), FUN = sum)
agg_7 = aggregate(flow_7[,2],by = list(flow_7[,3],flow_7[,4]), FUN = sum)
agg_8 = aggregate(flow_8[,2],by = list(flow_8[,3],flow_8[,4]), FUN = sum)
agg_9 = aggregate(flow_9[,2],by = list(flow_9[,3],flow_9[,4]), FUN = sum)
agg_10 = aggregate(flow_10[,2],by = list(flow_10[,3],flow_10[,4]), FUN = sum)
agg_11 = aggregate(flow_11[,2],by = list(flow_11[,3],flow_11[,4]), FUN = sum)
agg_12 = aggregate(flow_12[,2],by = list(flow_12[,3],flow_12[,4]), FUN = sum)
agg_13 = aggregate(flow_13[,2],by = list(flow_13[,3],flow_13[,4]), FUN = sum)
agg_14 = aggregate(flow_14[,2],by = list(flow_14[,3],flow_14[,4]), FUN = sum)
agg_15 = aggregate(flow_15[,2],by = list(flow_15[,3],flow_15[,4]), FUN = sum)
agg_16 = aggregate(flow_16[,2],by = list(flow_16[,3],flow_16[,4]), FUN = sum)
agg_17 = aggregate(flow_17[,2],by = list(flow_17[,3],flow_17[,4]), FUN = sum)
agg_18 = aggregate(flow_18[,2],by = list(flow_18[,3],flow_18[,4]), FUN = sum)
agg_19 = aggregate(flow_19[,2],by = list(flow_19[,3],flow_19[,4]), FUN = sum)
agg_20 = aggregate(flow_20[,2],by = list(flow_20[,3],flow_20[,4]), FUN = sum)
agg_21 = aggregate(flow_21[,2],by = list(flow_21[,3],flow_21[,4]), FUN = sum)
agg_22 = aggregate(flow_22[,2],by = list(flow_22[,3],flow_22[,4]), FUN = sum)
agg_23 = aggregate(flow_23[,2],by = list(flow_23[,3],flow_23[,4]), FUN = sum)

agg_1 = agg_1[order(agg_1$Group.1),]
agg_2 = agg_2[order(agg_2$Group.1),]
agg_3 = agg_3[order(agg_3$Group.1),]
agg_4 = agg_4[order(agg_4$Group.1),]
agg_5 = agg_5[order(agg_5$Group.1),]
agg_6 = agg_6[order(agg_6$Group.1),]
agg_7 = agg_7[order(agg_7$Group.1),]
agg_8 = agg_8[order(agg_8$Group.1),]
agg_9 = agg_9[order(agg_9$Group.1),]
agg_10 = agg_10[order(agg_10$Group.1),]
agg_11 = agg_11[order(agg_11$Group.1),]
agg_12 = agg_12[order(agg_12$Group.1),]
agg_13 = agg_13[order(agg_13$Group.1),]
agg_14 = agg_14[order(agg_14$Group.1),]
agg_15 = agg_15[order(agg_15$Group.1),]
agg_16 = agg_16[order(agg_16$Group.1),]
agg_17 = agg_17[order(agg_17$Group.1),]
agg_18 = agg_18[order(agg_18$Group.1),]
agg_19 = agg_19[order(agg_19$Group.1),]
agg_20 = agg_20[order(agg_20$Group.1),]
agg_21 = agg_21[order(agg_21$Group.1),]
agg_22 = agg_22[order(agg_22$Group.1),]
agg_23 = agg_23[order(agg_23$Group.1),]

ts_1=ts(agg_1[,3],start=c(2007,1),frequency = 12)
ts_2=ts(agg_2[,3],start=c(2007,1),frequency = 12)
ts_3=ts(agg_3[,3],start=c(2007,1),frequency = 12)
ts_4=ts(agg_4[,3],start=c(2007,1),frequency = 12)
ts_5=ts(agg_5[,3],start=c(2007,1),frequency = 12)
ts_6=ts(agg_6[,3],start=c(2007,1),frequency = 12)
ts_7=ts(agg_7[,3],start=c(2007,1),frequency = 12)
ts_8=ts(agg_8[,3],start=c(2007,1),frequency = 12)
ts_9=ts(agg_9[,3],start=c(2007,1),frequency = 12)
ts_10=ts(agg_10[,3],start=c(2007,1),frequency = 12)
ts_11=ts(agg_11[,3],start=c(2007,1),frequency = 12)
ts_12=ts(agg_12[,3],start=c(2007,1),frequency = 12)
ts_13=ts(agg_13[,3],start=c(2007,1),frequency = 12)
ts_14=ts(agg_14[,3],start=c(2007,1),frequency = 12)
ts_15=ts(agg_15[,3],start=c(2007,1),frequency = 12)
ts_16=ts(agg_16[,3],start=c(2007,1),frequency = 12)
ts_17=ts(agg_17[,3],start=c(2007,1),frequency = 12)
ts_18=ts(agg_18[,3],start=c(2007,1),frequency = 12)
ts_19=ts(agg_19[,3],start=c(2007,1),frequency = 12)
ts_20=ts(agg_20[,3],start=c(2007,1),frequency = 12)
ts_21=ts(agg_21[,3],start=c(2007,1),frequency = 12)
ts_22=ts(agg_22[,3],start=c(2007,1),frequency = 12)
ts_23=ts(agg_23[,3],start=c(2007,1),frequency = 12)





#flow_1=subset(flow_1,month_1!=1 & month_1!=2 & month_1!=8 & month_1!=11 & month_1!=12)
#flow_2=subset(flow_2,month_2!=1 & month_2!=2 & month_2!=8 & month_2!=11 & month_2!=12)
#flow_3=subset(flow_3,month_3!=1 & month_3!=2 & month_3!=8 & month_3!=11 & month_3!=12)
#flow_4=subset(flow_4,month_4!=1 & month_4!=2 & month_4!=8 & month_4!=11 & month_4!=12)
#flow_5=subset(flow_5,month_5!=1 & month_5!=2 & month_5!=8 & month_5!=11 & month_5!=12)
#flow_6=subset(flow_6,month_6!=1 & month_6!=2 & month_6!=8 & month_6!=11 & month_6!=12)
#flow_7=subset(flow_7,month_7!=1 & month_7!=2 & month_7!=8 & month_7!=11 & month_7!=12)
#flow_8=subset(flow_8,month_8!=1 & month_8!=2 & month_8!=8 & month_8!=11 & month_8!=12)
#flow_9=subset(flow_9,month_9!=1 & month_9!=2 & month_9!=8 & month_9!=11 & month_9!=12)
#flow_10=subset(flow_10,month_10!=1 & month_10!=2 & month_10!=8 & month_10!=11 & month_10!=12)
#flow_11=subset(flow_11,month_11!=1 & month_11!=2 & month_11!=8 & month_11!=11 & month_11!=12)
#flow_12=subset(flow_12,month_12!=1 & month_12!=2 & month_12!=8 & month_12!=11 & month_12!=12)
#flow_13=subset(flow_13,month_13!=1 & month_13!=2 & month_13!=8 & month_13!=11 & month_13!=12)
#flow_14=subset(flow_14,month_14!=1 & month_14!=2 & month_14!=8 & month_14!=11 & month_14!=12)
#flow_15=subset(flow_15,month_15!=1 & month_15!=2 & month_15!=8 & month_15!=11 & month_15!=12)
#flow_16=subset(flow_16,month_16!=1 & month_16!=2 & month_16!=8 & month_16!=11 & month_16!=12)
#flow_17=subset(flow_17,month_17!=1 & month_17!=2 & month_17!=8 & month_17!=11 & month_17!=12)
#flow_18=subset(flow_18,month_18!=1 & month_18!=2 & month_18!=8 & month_18!=11 & month_18!=12)
#flow_19=subset(flow_19,month_19!=1 & month_19!=2 & month_19!=8 & month_19!=11 & month_19!=12)
#flow_20=subset(flow_20,month_20!=1 & month_20!=2 & month_20!=8 & month_20!=11 & month_20!=12)
#flow_21=subset(flow_21,month_21!=1 & month_21!=2 & month_21!=8 & month_21!=11 & month_21!=12)
#flow_22=subset(flow_22,month_22!=1 & month_22!=2 & month_22!=8 & month_22!=11 & month_22!=12)
#flow_23=subset(flow_23,month_23!=1 & month_23!=2 & month_23!=8 & month_23!=11 & month_23!=12)
#flow_1=flow_1[-c(3)]
#flow_2=flow_2[-c(3)]
#flow_3=flow_3[-c(3)]
#flow_4=flow_4[-c(3)]
#flow_5=flow_5[-c(3)]
#flow_6=flow_6[-c(3)]
#flow_7=flow_7[-c(3)]
#flow_8=flow_8[-c(3)]
#flow_9=flow_9[-c(3)]
#flow_10=flow_10[-c(3)]
#flow_11=flow_11[-c(3)]
#flow_12=flow_12[-c(3)]
#flow_13=flow_13[-c(3)]
#flow_14=flow_14[-c(3)]
#flow_15=flow_15[-c(3)]
#flow_16=flow_16[-c(3)]
#flow_17=flow_17[-c(3)]
#flow_18=flow_18[-c(3)]
#flow_19=flow_19[-c(3)]
#flow_20=flow_20[-c(3)]
#flow_21=flow_21[-c(3)]
#flow_22=flow_22[-c(3)]
#flow_23=flow_23[-c(3)]

#plot(flow_10)
#ts_1 = zoo (flow_1[,2],flow_1[,1])
#ts_2 = zoo (flow_2[,2],flow_2[,1])
#ts_3 = zoo (flow_3[,2],flow_3[,1])
#ts_4 = zoo (flow_4[,2],flow_4[,1])
#ts_5 = zoo (flow_5[,2],flow_5[,1])
#ts_6 = zoo (flow_6[,2],flow_6[,1])
#ts_7 = zoo (flow_7[,2],flow_7[,1])
#ts_8 = zoo (flow_8[,2],flow_8[,1])
#ts_9 = zoo (flow_9[,2],flow_9[,1])
#ts_10 = zoo(flow_10[,2],flow_10[,1])
#ts_11 = zoo(flow_11[,2],flow_11[,1])
#ts_12 = zoo(flow_12[,2],flow_12[,1])
#ts_13 = zoo(flow_13[,2],flow_13[,1])
#ts_14 = zoo(flow_14[,2],flow_14[,1])
#ts_15 = zoo(flow_15[,2],flow_15[,1])
#ts_16 = zoo(flow_16[,2],flow_16[,1])
#ts_17 = zoo(flow_17[,2],flow_17[,1])
#ts_18 = zoo(flow_18[,2],flow_18[,1])
#ts_19 = zoo(flow_19[,2],flow_19[,1])
#ts_20 = zoo(flow_20[,2],flow_20[,1])
#ts_21 = zoo(flow_21[,2],flow_21[,1])
#ts_22 = zoo(flow_22[,2],flow_22[,1])
#ts_23 = zoo(flow_23[,2],flow_23[,1])

autoplot(ts_1)
#autoplot(ts_2)
#autoplot(ts_3)
#autoplot(ts_4)
#autoplot(ts_5)
#autoplot(ts_6)
autoplot(ts_7,main = "Data plot of 7th Hour",ylab = "Traffic Volume",xlab="years")
autoplot(ts_8)
autoplot(ts_9)
autoplot(ts_10)
autoplot(ts_11)
autoplot(ts_12)
autoplot(ts_13)
autoplot(ts_14)
autoplot(ts_15)
autoplot(ts_16)
autoplot(ts_17)
autoplot(ts_18)
autoplot(ts_19)
#autoplot(ts_20)
#autoplot(ts_21)
#ts(flow_10[,2],start = c(2000,3) , end = c(2020,11),frequency = 365)
#plot(flow_10$count_date,flow_10$all_motor_vehicles,type='l',xlab='year',ylab ='Traffic_vol')
#flow_[7:18]

s_7 = SMA(ts_7,n=5)
plot.ts(s_7)
adj_ts_7 = ts_7-decompose(s_7)$seasonal
adf.test(adj_ts_7)
d_adj_ts_7 = diff(adj_ts_7,1)
adf.test(d_adj_ts_7)
ggseasonplot(ts_7)+ggtitle("seasonal trend")+xlab("Month")+ylab("Traffic Volume")
ggseasonplot(d_adj_ts_7)+ggtitle("seasonal trend")+xlab("Month")+ylab("Difference")
ggsubseriesplot(d_adj_ts_7)+ggtitle("Month series")+xlab("Month")+ylab("series")
ggsubseriesplot(ts_7)+ggtitle("seasonal trend")+xlab("Month")+ylab("Series")
autoplot(d_adj_ts_7) +ggtitle("Difference of Volume") +xlab("Years")+ylab("volume_difference")

s_8 = SMA(ts_8,n=5)
plot.ts(s_8)
adj_ts_8 = ts_8-decompose(s_8)$seasonal
adf.test(adj_ts_8)
d_adj_ts_8 = diff(adj_ts_8,1)
adf.test(d_adj_ts_8)

s_9 = SMA(ts_9,n=5)
plot.ts(s_9)
adj_ts_9 = ts_9-decompose(s_9)$seasonal
adf.test(adj_ts_9)
d_adj_ts_9 = diff(adj_ts_9,1)
adf.test(d_adj_ts_9)

s_10 = SMA(ts_10,n=5)
plot.ts(s_10)
adj_ts_10 = ts_10-decompose(s_10)$seasonal
adf.test(adj_ts_10)
d_adj_ts_10 = diff(adj_ts_10,1)
adf.test(d_adj_ts_10)

s_11 = SMA(ts_11,n=5)
plot.ts(s_11)
adj_ts_11 = ts_11-decompose(s_11)$seasonal
adf.test(adj_ts_11)
d_adj_ts_11 = diff(adj_ts_11,1)
adf.test(d_adj_ts_11)

s_12 = SMA(ts_12,n=5)
plot.ts(s_12)
adj_ts_12 = ts_12-decompose(s_12)$seasonal
adf.test(adj_ts_12)
d_adj_ts_12 = diff(adj_ts_12,1)
adf.test(d_adj_ts_12)

s_13 = SMA(ts_13,n=5)
plot.ts(s_13)
adj_ts_13 = ts_13-decompose(s_13)$seasonal
adf.test(adj_ts_13)
d_adj_ts_13 = diff(adj_ts_13,1)
adf.test(d_adj_ts_13)

s_14 = SMA(ts_14,n=5)
plot.ts(s_14)
adj_ts_14 = ts_14-decompose(s_14)$seasonal
adf.test(adj_ts_14)
d_adj_ts_14 = diff(adj_ts_14,1)
adf.test(d_adj_ts_14)

s_15 = SMA(ts_15,n=5)
plot.ts(s_15)
adj_ts_15 = ts_15-decompose(s_15)$seasonal
adf.test(adj_ts_15)
d_adj_ts_15 = diff(adj_ts_15,1)
adf.test(d_adj_ts_15)

s_16 = SMA(ts_16,n=5)
plot.ts(s_16)
adj_ts_16 = ts_16-decompose(s_16)$seasonal
adf.test(adj_ts_16)
d_adj_ts_16 = diff(adj_ts_16,1)
adf.test(d_adj_ts_16)

s_17 = SMA(ts_17,n=5)
plot.ts(s_17)
adj_ts_17 = ts_17-decompose(s_17)$seasonal
adf.test(adj_ts_17)
d_adj_ts_17 = diff(adj_ts_17,1)
adf.test(d_adj_ts_17)

s_18 = SMA(ts_18,n=5)
plot.ts(s_18)
adj_ts_18 = ts_18-decompose(s_18)$seasonal
adf.test(adj_ts_18)
d_adj_ts_18 = diff(adj_ts_18,1)
adf.test(d_adj_ts_18)

s_19 = SMA(ts_19,n=5)
plot.ts(s_19)
adj_ts_19 = ts_19-decompose(s_19)$seasonal
adf.test(adj_ts_19)
d_adj_ts_19 = diff(adj_ts_19,1)
adf.test(d_adj_ts_19)

a_f_7 = auto.arima(d_adj_ts_7)
plot(a_f_7) # unit root test#

plot(auto.arima(ts_8))
plot.armaroots(ts_8)
auto.arima(d_adj_ts_7)
arima_1 = arima(d_adj_ts_7,order = c(2,0,1))
predict_1 = predict(arima_1,n.ahead = 30)
predict_1
forecast_1 = forecast(arima_1,h = 30)


auto.arima(d_adj_ts_7)
p_7 = predict(arima(d_adj_ts_7,order=c(2,0,1)),h=20)
f_7 = forecast(arima(d_adj_ts_7,order=c(2,0,1)),h=20)
plot(f_7)
f_7

plot(f_7$residuals)
qqnorm(f_7$residuals)
checkresiduals(f_7)
pacf(f_7$residuals)
accuracy(f_7)

auto.arima(d_adj_ts_8)
#arima(0,0,2),(0,0,1)
p_8 = predict(auto.arima(d_adj_ts_8),h=20)
f_8 = forecast(auto.arima(d_adj_ts_8),h=20)
plot(f_8)
f_8

plot(f_8$residuals)
qqnorm(f_8$residuals)
checkresiduals(f_8)
pacf(f_8$residuals)
accuracy(f_8)

auto.arima(d_adj_ts_9)
p_9 = predict(arima(d_adj_ts_9,order=c(0,0,2)),h=20)
f_9 = forecast(arima(d_adj_ts_9,order=c(0,0,2)),h=20)
plot(f_9)
f_9

plot(f_9$residuals)
qqnorm(f_9$residuals)
checkresiduals(f_9)
pacf(f_9$residuals)
accuracy(f_9)

auto.arima(d_adj_ts_10)
p_10 = predict(arima(d_adj_ts_10,order=c(0,0,2)),h=20)
f_10 = forecast(arima(d_adj_ts_10,order=c(0,0,2)),h=20)
plot(f_10)
f_10
p_10

plot(f_10$residuals)
qqnorm(f_10$residuals)
checkresiduals(f_10)
pacf(f_10$residuals)
accuracy(f_10)

auto.arima(d_adj_ts_11)
p_11 = predict(arima(d_adj_ts_11,order=c(0,0,2)),h=20)
f_11 = forecast(arima(d_adj_ts_11,order=c(0,0,2)),h=20)
plot(f_11)
f_11

plot(f_11$residuals)
qqnorm(f_11$residuals)
checkresiduals(f_11)
pacf(f_11$residuals)
accuracy(f_11)

auto.arima(d_adj_ts_12)
p_12 = predict(arima(d_adj_ts_12,order=c(0,0,2)),h=20)
f_12 = forecast(arima(d_adj_ts_12,order=c(0,0,2)),h=20)
plot(f_12)
f_12

plot(f_12$residuals)
qqnorm(f_12$residuals)
checkresiduals(f_12)
pacf(f_12$residuals)
accuracy(f_12)

auto.arima(d_adj_ts_13)
p_13 = predict(arima(d_adj_ts_13,order=c(0,0,2)),h=20)
f_13 = forecast(arima(d_adj_ts_13,order=c(0,0,2)),h=20)
plot(f_13)
f_13

plot(f_13$residuals)
qqnorm(f_13$residuals)
checkresiduals(f_13)
pacf(f_13$residuals)
accuracy(f_13)

auto.arima(d_adj_ts_14)
p_14 = predict(arima(d_adj_ts_14,order=c(0,0,2)),h=20)
f_14 = forecast(arima(d_adj_ts_14,order=c(0,0,2)),h=20)
plot(f_14)
f_14

plot(f_14$residuals)
qqnorm(f_14$residuals)
checkresiduals(f_14)
pacf(f_14$residuals)
accuracy(f_14)

auto.arima(d_adj_ts_15)
p_15 = predict(arima(d_adj_ts_15,order=c(0,0,2)),h=20)
f_15 = forecast(arima(d_adj_ts_15,order=c(0,0,2)),h=20)
plot(f_15)
f_15

plot(f_15$residuals)
qqnorm(f_15$residuals)
checkresiduals(f_15)
pacf(f_15$residuals)
accuracy(f_15)

auto.arima(d_adj_ts_16)
p_16 = predict(arima(d_adj_ts_16,order=c(0,0,2)),h=20)
f_16 = forecast(arima(d_adj_ts_16,order=c(0,0,2)),h=20)
plot(f_16)
f_16

plot(f_16$residuals)
qqnorm(f_16$residuals)
checkresiduals(f_16)
pacf(f_16$residuals)
accuracy(f_16)

auto.arima(d_adj_ts_17)
p_17 = predict(arima(d_adj_ts_17,order=c(0,0,2)),h=20)
f_17 = forecast(arima(d_adj_ts_17,order=c(0,0,2)),h=20)
plot(f_17)
f_17

plot(f_17$residuals)
qqnorm(f_17$residuals)
checkresiduals(f_17)
pacf(f_17$residuals)
accuracy(f_17)

auto.arima(d_adj_ts_18)
p_18 = predict(arima(d_adj_ts_18,order=c(2,0,1)),h=20)
f_18 = forecast(arima(d_adj_ts_18,order=c(2,0,1)),h=20)
plot(f_18)
f_18

plot(f_18$residuals)
qqnorm(f_18$residuals)
checkresiduals(f_18)
pacf(f_18$residuals)
accuracy(f_18)

auto.arima(d_adj_ts_19)
p_19 = predict(arima(d_adj_ts_19,order=c(2,0,1)),h=20)
f_19 = forecast(arima(d_adj_ts_19,order=c(2,0,1)),h=20)
plot(f_19)
f_19

plot(f_19$residuals)
qqnorm(f_19$residuals)
checkresiduals(f_19)
pacf(f_19$residuals)
accuracy(f_19)

auto.arima(d_adj_ts_20)
p_20 = predict(arima(d_adj_ts_20,order=c(2,0,1)),h=20)
f_20 = forecast(arima(d_adj_ts_20,order=c(2,0,1)),h=20)
plot(f_20)
f_20

plot(f_20$residuals)
qqnorm(f_20$residuals)
checkresiduals(f_20)
pacf(f_20$residuals)
accuracy(f_20)

#exponential soomething #
d_ts_7_e = ets(d_adj_ts_7)
checkresiduals(d_ts_7_e)
accuracy(d_ts_7_e)

d_ts_8_e = ets(d_adj_ts_8)
checkresiduals(d_ts_8_e)
accuracy(d_ts_8_e)

d_ts_9_e = ets(d_adj_ts_9)
checkresiduals(d_ts_9_e)
accuracy(d_ts_9_e)

d_ts_10_e = ets(d_adj_ts_10)
checkresiduals(d_ts_10_e)
accuracy(d_ts_10_e)

d_ts_11_e = ets(d_adj_ts_11)
checkresiduals(d_ts_11_e)
accuracy(d_ts_11_e)

d_ts_12_e = ets(d_adj_ts_12)
checkresiduals(d_ts_12_e)
accuracy(d_ts_12_e)

d_ts_13_e = ets(d_adj_ts_13)
checkresiduals(d_ts_13_e)
accuracy(d_ts_13_e)

d_ts_14_e = ets(d_adj_ts_14)
checkresiduals(d_ts_14_e)
accuracy(d_ts_14_e)

d_ts_15_e = ets(d_adj_ts_15)
checkresiduals(d_ts_15_e)
accuracy(d_ts_15_e)

d_ts_16_e = ets(d_adj_ts_16)
checkresiduals(d_ts_16_e)
accuracy(d_ts_16_e)

d_ts_17_e = ets(d_adj_ts_17)
checkresiduals(d_ts_17_e)
accuracy(d_ts_17_e)

d_ts_18_e = ets(d_adj_ts_18)
checkresiduals(d_ts_18_e)
accuracy(d_ts_18_e)

d_ts_19_e = ets(d_adj_ts_19)
checkresiduals(d_ts_19_e)
accuracy(d_ts_19_e)

RMSE

emissions = read_excel("vechile_emissions.xlsx")
emissions = emissions[-c(4)]
emissions=subset(emissions,year!=2000 & year!=2001 & year!=2002 & year!=2003 & year!=2004 & year!=2005)
emissions= emissions %>% distinct(manufacturer,model,engine_capacity,fuel_type,.keep_all = TRUE)
write.csv(emissions,"C:/Users/dkesa/OneDrive/Documents/SML/R_data/emissions.csv",row.names = FALSE)
head(emissions,1)
emissions = read_excel("pollutants.xlsx")
emissions = emissions %>% distinct(manufacturer,Model,fuel_type,.keep_all = TRUE)
emissions = emissions[-c(1)]
emissions = emissions[order(emissions$manufacturer),]
write.csv(emissions,"C:/Users/dkesa/OneDrive/Documents/SML/R_data/emissions.csv",row.names = FALSE)
emissions = read_excel("vechile_data.xlsx")

for (i in 4:10){
  emissions[,i] = as.integer(emissions[,i])}
#barplot(table(framingham[i]),col=c("blue","red"))}

plot(sound) +ggtitle("Sound levels") +xlab("Cars")+ylab("Decibles")

sound = emissions %>% select(c('manufacturer', 'noise_level(decibles)'))
table(sound)
as.data.frame(sound)

emissions[,4] = as.integer(emissions[,4])
ggplot(sound,aes(x=`noise_level(decibles)`)) +geom_density()
barplot(emissions$`noise_level(decibles)`) + geom_density()

str(emissions)
length(x1)
length(y)
x=c(74,72,73,74.5,0.2,75,72.5,69.5,67.3,71,70,69,76,68,69.2,68.6,71.4,73.9,70.1,70.2,69.6,71.8,70.9,68.5,71.3,72.2,78,72.8,72.6,73.1,73.8,83,73.5,73.2,71.2,72.9,73.4,70.8,74.2,71.7,74.9,73.7,70.3,74.8,74.7,74.4,71.5,72.7,72.1,69.8,70.6,72.3,69.9,70.5,73.3,67,72.4,68.3,67.2,66.2,69.4,68.8,74.6,70.7,68.7,68.1,67.8,68.2,70.4,71.9,73.6,77,66.7,71.6,71.1,69.7,69.3,69.1)
y = dnorm(mean=72.10786096,sd = 2.422395778)
x1 = seq(-10,10, length = 78)
plot(y,x1)
y

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

###classify the data
ts_1=ts(flow_1[,3],start=c(2007,1),frequency = 12)
ts_2=ts(flow_2[,3],start=c(2007,1),frequency = 12)
ts_3=ts(flow_3[,3],start=c(2007,1),frequency = 12)
ts_4=ts(flow_4[,3],start=c(2007,1),frequency = 12)
ts_5=ts(flow_5[,3],start=c(2007,1),frequency = 12)
ts_6=ts(flow_6[,3],start=c(2007,1),frequency = 12)
ts_7=ts(flow_7[,3],start=c(2007,1),frequency = 12)
ts_8=ts(flow_8[,3],start=c(2007,1),frequency = 12)
ts_9=ts(flow_9[,3],start=c(2007,1),frequency = 12)
ts_10=ts(flow_10[,3],start=c(2007,1),frequency = 12)
ts_11=ts(flow_11[,3],start=c(2007,1),frequency = 12)
ts_12=ts(flow_12[,3],start=c(2007,1),frequency = 12)
ts_13=ts(flow_13[,3],start=c(2007,1),frequency = 12)
ts_14=ts(flow_14[,3],start=c(2007,1),frequency = 12)
ts_15=ts(flow_15[,3],start=c(2007,1),frequency = 12)
ts_16=ts(flow_16[,3],start=c(2007,1),frequency = 12)
ts_17=ts(flow_17[,3],start=c(2007,1),frequency = 12)
ts_18=ts(flow_18[,3],start=c(2007,1),frequency = 12)
ts_19=ts(flow_19[,3],start=c(2007,1),frequency = 12)
ts_20=ts(flow_20[,3],start=c(2007,1),frequency = 12)
ts_21=ts(flow_21[,3],start=c(2007,1),frequency = 12)
ts_22=ts(flow_22[,3],start=c(2007,1),frequency = 12)
ts_23=ts(flow_23[,3],start=c(2007,1),frequency = 12)


autoplot(ts_1)
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

emissions = read_excel("pollutants.xlsx")
emissions = emissions %>% distinct(manufacturer,Model,fuel_type,.keep_all = TRUE)
emissions = emissions[-c(1)]
emissions = emissions[order(emissions$manufacturer),]
write.csv(emissions,"emissions.csv",row.names = FALSE)
emissions = read_excel("vechile_data.xlsx")

for (i in 4:10){
  emissions[,i] = as.integer(emissions[,i])}

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

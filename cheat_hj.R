rm(list=ls())

setwd("c:/")
Sys.setenv(LANGUAGE='en')
BGCON_CLAIM_DATA <- read.csv("BGCON_CLAIM_DATA.csv", header=T, fileEncoding="UTF-16LE")  # sep이용 csv 읽기 가능 
BGCON_CNTT_DATA <- read.csv("BGCON_CNTT_DATA.csv", header=T, fileEncoding="UTF-16LE")  # sep이용 csv 읽기 가능 
BGCON_CUST_DATA <- read.csv("BGCON_CUST_DATA.csv", header=T, fileEncoding="UTF-16LE")  # sep이용 csv 읽기 가능 
BGCON_FMLY_DATA <- read.csv("BGCON_FMLY_DATA.csv", header=T, fileEncoding="UTF-16LE")  # sep이용 csv 읽기 가능 
BGCON_FPINFO_DATA <- read.csv("BGCON_FPINFO_DATA.csv", header=T, fileEncoding="UTF-16LE")  # sep이용 csv 읽기 가능 

m <- merge(BGCON_CUST_DATA, BGCON_CLAIM_DATA,by="CUST_ID")
m <- merge(m, BGCON_FMLY_DATA, by="CUST_ID")
m <- merge(m, BGCON_CNTT_DATA, by="POLY_NO")
m <- merge(m, BGCON_FPINFO_DATA, by="CLLT_FP_PRNO")
backup <- m

#install.packages("Amelia")
require(Amelia)
missmap(m, col=c("yellow", "black"), legend=FALSE)

cat(paste('목적값의 Missing 수는"',sum(is.na(m$SIU_CUST_YN)),'"이다.'))

str(m)

m<- select(m, -(plug1_serial:plug10_power_realtime))

sm <- summary(backup)
sm <- as.data.frame(sm)
# install.packages ("knitr")
require (knitr)
kable(sm)

m <- na.omit(m)
#33,518 -> 282로 너무 많이 삭제됨, Missing 처리 필요 


install.packages("DT")
require('DT')
datatable(head(m,10))

summary(SIU_CUST_YN ~ FP_CAREER + MINCRDT + MAXCRDT + WEDD_YN + CHLD_CNT + CUST_INCM + ACCI_DVSN + DSAS_NAME, data = m, method="reverse")
message("이전과 같이 나오게 하는 법은?")

data <- m

#SIU_CUST_YN 보험 사기 여부 
# FP_CAREER + MINCRDT + MAXCRDT + WEDD_YN + CHLD_CNT + CUST_INCM + ACCI_DVSN + DSAS_NAME



mosaicplot(m$SIU_CUST_YN ~ as.numeric(m$CHLD_CNT), main="Main", shade=FALSE, color=TRUE, xlab="Cheat OR Not", ylab="CHLD_CNT") #numeric

summary(m$CHLD_CNT)

lapply(m,class)

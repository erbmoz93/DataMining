#http://real-chart.finance.yahoo.com/table.csv?s=IBM&d=10&e=26&f=2015&g=d&a=0&b=2&c=1962&ignore=.csv
library(gdata)
library(reshape2)

adresse<-function(symbol){
  debut="01/01/2007"
  fi=Sys.Date()
  d=as.numeric(getMonth(fi))-1
  e=as.numeric(getDay(fi))
  f=as.numeric(getYear(fi))
  deb=as.POSIXct(as.Date(debut,"%d-%m-%Y"))
  a=as.numeric(getMonth(deb))-1
  b=as.numeric(getDay(deb))
  c=as.numeric(getYear(deb))
  url="http://real-chart.finance.yahoo.com/table.csv?s="
  #c=paste(url,as.character(nom),sep="=")
  
  str<- paste(as.character(url),as.character(symbol),"&d=",as.character(d),"&e=",as.character(e),
              "&f=",as.character(f), "&a=",as.character(a), "&b=",as.character(b), "&c=",as.character(c), "&ignore=.csv", sep="")
  return(str)
}
#url=adresse("CAC40","26-11-2015","01-01-1990")
yahoo.read <- function(url){
  dat <- read.table(url,header=TRUE,sep=",")
  df <- dat[,c(1,2,3,4,5,6)]
  df$Date <- as.Date(as.character(df$Date))
  return(df)}

VaRnormalEqwt <- function(returnVector, prob=.05,notional=1, expected.return=mean(returnVector),digits=2)
{
  if(prob > .5) prob <- 1 - prob
  ans <- -qnorm(prob, mean=expected.return,sd=sd(returnVector)) * notional
  signif(ans, digits=digits)
}


base=function(data){
  return(data[1:250,5])
}

bas=function(data1){
  volume=round((data1[1,6]-data[2,6])/data1[2,6],2)
  open=round((data1[1,2]-data1[2,2])/data1[2,2],2)
  close=round((data1[1,5]-data[2,5])/data1[2,5],2)
  df=data.frame(type=c("volume","open","close"),rendement=c(volume,open,close))
  return(df)
}
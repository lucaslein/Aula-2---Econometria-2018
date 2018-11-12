x <- 1:10
y<-rep(3,10)#repete o numero 3, 10 vezes
ls()#mostra objetos
rm(v)#apaga objetos
rm(list=ls())
a <- 1:20
b <- rnorm(10, mean = 10, sd=2)#Valores Aleatorios, média, desvio padrão
c <- runif(10,min=8,max=12)

install.packages("pwt8") #instala pacotes
library("pwt8")#lê os pacotes
data("pwt8.0")
View(pwt8.0)
br <- subset(pwt8.0, country =="Brazil", select = c(rgdpna,avh,xr))
View(br)
colnames(br) <- c("PIB", 'Trabalho',"Cambio")
plot(br$PIB, type ="l")
plot(br$Trabalho)
plot(br$Cambio)
dados <- ts(br, start = 1950, freq=1)

plot(dados)
plot(dados, col=c("blue","green","red"), main='Dados Brasileiros',xlab="Ano",plot.type = "single")
  


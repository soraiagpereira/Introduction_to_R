# Importacao dos dados em formato .csv
fogos <- read.csv("FOGOS_1980_2000.csv", header = TRUE, sep=";", dec = ",", na.strings = "")

sort(table(fogos$Ano))

par(mfrow=c(1,2))
with(fogos[fogos$Ano==1980,],plot(x,y,main="Ano 1980"))
with(fogos[fogos$Ano==1998,],plot(x,y,main="Ano 1998"))



par(mfrow=c(1,2))
with(fogos[fogos$Ano==1980,],plot(x,y,cex=log(Area_Total_Florestal+0.001),main="Ano 1980"))
with(fogos[fogos$Ano==1998,],plot(x,y,cex=log(Area_Total_Florestal+0.001),main="Ano 1998"))




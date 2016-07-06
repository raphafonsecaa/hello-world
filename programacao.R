vetor=c(2,8,2,12,3,12,10,3,4,13,13,13,13,13,
        13,13,5,18,18,13,1,8,7,13,3)
setwd("C:/Users/raphaela.alves/Downloads/CFA")
getwd()
base=read.fwf("COTAHIST_A2016.txt", widths = vetor)
base=base[-1,]
filtro.mglu3=grep("MGLU3 .*",base$V4)
magazineluiza=base[(filtro.mglu3),]
magazineluiza1=magazineluiza[,c(2,14)]
magazineluiza1$V14=magazineluiza1$V14/100
write.csv2(magazineluiza1, "magazineluiza.csv")

dane <- read.csv("C:\\Users\\Madzia\\Documents\\AGH\\WZ\\Informatyka i ekonometria semestr 4\\Ekonometria\\Lab\\Lab 5\\DaneZ2dopoprawki.csv",header=T,sep=",",dec=".")
#dane #na pocz�tku by�o pomieni�tych 1690rows

dane <- dane[!is.na(dane$npvis), ] #usuwa wersy z warto�ciami "NA" przy zmiennej npvis
dane <- dane[!is.na(dane$fage), ] #usuwa wersy z warto�ciami "NA" przy zmiennej fage
dane #pomini�te 1611 rows 68 wer�W npvis i 6 fage (zgodne z info gretla) - prawid�owo usuwa wersy

#library(tidyr)
#dane$cigs %>% replace_na(1.0894) ??? #nie dzia�a
#dane$drink %>% replace_na(0.016376) ??? #to tym bardziej XD
#dane[is.na(dane$cigs)] <- 1.0894 ??? #tu jeszcze gorzej bo wszystko si� zamienia na 1.0894 xD

dane[is.na(dane)]<- 0 #zamiana wszystkich warto�ci NA na "0" (wyst�puj� tylko w cigs i drink)
dane
     
write.csv(dane,file = "C:\\Users\\Madzia\\Documents\\AGH\\WZ\\Informatyka i ekonometria semestr 4\\Ekonometria\\Lab\\Lab 5\\DaneZ2czystezzerami2.csv")

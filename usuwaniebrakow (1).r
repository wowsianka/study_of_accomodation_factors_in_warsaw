dane <- read.csv("C:\\Users\\Madzia\\Documents\\AGH\\WZ\\Informatyka i ekonometria semestr 4\\Ekonometria\\Lab\\Lab 5\\DaneZ2dopoprawki.csv",header=T,sep=",",dec=".")
#dane #na pocz¹tku by³o pomieniêtych 1690rows

dane <- dane[!is.na(dane$npvis), ] #usuwa wersy z wartoœciami "NA" przy zmiennej npvis
dane <- dane[!is.na(dane$fage), ] #usuwa wersy z wartoœciami "NA" przy zmiennej fage
dane #pominiête 1611 rows 68 weróW npvis i 6 fage (zgodne z info gretla) - prawid³owo usuwa wersy

#library(tidyr)
#dane$cigs %>% replace_na(1.0894) ??? #nie dzia³a
#dane$drink %>% replace_na(0.016376) ??? #to tym bardziej XD
#dane[is.na(dane$cigs)] <- 1.0894 ??? #tu jeszcze gorzej bo wszystko siê zamienia na 1.0894 xD

dane[is.na(dane)]<- 0 #zamiana wszystkich wartoœci NA na "0" (wystêpuj¹ tylko w cigs i drink)
dane
     
write.csv(dane,file = "C:\\Users\\Madzia\\Documents\\AGH\\WZ\\Informatyka i ekonometria semestr 4\\Ekonometria\\Lab\\Lab 5\\DaneZ2czystezzerami2.csv")

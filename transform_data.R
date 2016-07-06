all <- read.csv("D:/Workshop/MAgIClong.csv")
all <- all[,-4]

t <- reshape(all, idvar = "admin_id", timevar = "month", direction = "wide")

names(t)[2:13] <- c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")

write.csv(t, "C:/Users/administrator.GLOBALAGRISK/Desktop/MAP-673/magic-ethiopia/magic-all.csv", 
          row.names = FALSE)
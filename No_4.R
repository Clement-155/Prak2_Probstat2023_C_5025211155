

data = read.csv('GTL.csv')
data$Temp <- factor(data$Temp,
                       levels = c(100, 125, 150),
                       labels = c("100C", "125C", "150C"))
table(data$Glass, data$Temp)
#a. Buatlah plot sederhana untuk visualisasi data.
library("ggpubr") 
ggboxplot(data, x = "Glass", y = "Light", color = "Temp",
                            palette = c("#0f5ffe", "#fe400f", "#3dd03a"))
#b. Lakukan uji ANOVA dua arah.
res.aov <- aov(Light ~ Temp + Glass, data)
summary(res.aov)
#c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi).
mean_table = aggregate(data$Light ~ data$Glass + data$Temp, data, mean)
colnames(mean_table) <- c("Glass", "Temp", "Light Mean")
mean_table
sd_table = aggregate(data$Light ~ data$Glass + data$Temp, data, sd)
colnames(sd_table) <- c("Glass", "Temp", "Light Standard Deviation")
sd_table
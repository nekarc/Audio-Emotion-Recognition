

library(dplyr)
library(corrgram)
library(corrplot)
library(ggplot2)
library(scorer)
library(glmnet)
library(readr)

audioFeatureData1 <- read.csv('../../extractedData/details.csv')


isQuant <- function(x) {
  return (nlevels(factor(x))>15)
}


audioFeatureData <- select_if(audioFeatureData1, isQuant)


corAudio <- cor(audioFeatureData)


corrgram(audioFeatureData,
         lower.panel=panel.shade,
         upper.panel=panel.pts,
         text.panel=panel.txt,
         main="Correlogram of Housing Data")


corrplot(corAudio, method="circle", main="Correlogram of Housing Data")

corrplot(corAudio, method="number", main="Correlation of Housing Data")


ggplot(audioFeatureData1, aes(x=audioFeatureData1$gender, y=audioFeatureData1$chr_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Gender by the chr_mn", y = "chr_mn", x = "Gender")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$gender, y=audioFeatureData1$ton_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Gender by the ton_mn", y = "ton_mn", x = "Gender")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$gender, y=audioFeatureData1$cont_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Gender by the cont_mn", y = "cont_mn", x = "Gender")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$chr_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Emotion by the chr_mn", y = "chr_mn", x = "Emotion")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$ton_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Emotion by the ton_mn", y = "ton_mn", x = "Emotion")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$cont_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Emotion by the cont_mn", y = "cont_mn", x = "Emotion")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$mel02_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Emotion by the mel02_mn", y = "mel02_mn", x = "Emotion")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$mel24_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Emotion by the mel24_mn", y = "mel24_mn", x = "Emotion")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$mel46_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Emotion by the mel46_mn", y = "mel46_mn", x = "Emotion")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$mel68_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Emotion by the mel68_mn", y = "mel68_mn", x = "Emotion")


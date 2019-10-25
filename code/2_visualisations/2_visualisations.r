

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
  labs(title = "Plot of the Sale Price by the Overall Quality", x = "Overall Quality", y = "Sale Price")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$gender, y=audioFeatureData1$ton_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Sale Price by the Overall Quality", x = "Overall Quality", y = "Sale Price")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$gender, y=audioFeatureData1$cont_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Sale Price by the Overall Quality", x = "Overall Quality", y = "Sale Price")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$chr_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Sale Price by the Overall Quality", x = "Overall Quality", y = "Sale Price")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$ton_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Sale Price by the Overall Quality", x = "Overall Quality", y = "Sale Price")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$cont_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Sale Price by the Overall Quality", x = "Overall Quality", y = "Sale Price")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$mel02_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Sale Price by the Overall Quality", x = "Overall Quality", y = "Sale Price")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$mel24_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Sale Price by the Overall Quality", x = "Overall Quality", y = "Sale Price")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$mel46_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Sale Price by the Overall Quality", x = "Overall Quality", y = "Sale Price")

ggplot(audioFeatureData1, aes(x=audioFeatureData1$emotion, y=audioFeatureData1$mel68_mn)) + 
  geom_jitter(position=position_jitter(0.2), shape = 17, col = "orange") + 
  labs(title = "Plot of the Sale Price by the Overall Quality", x = "Overall Quality", y = "Sale Price")


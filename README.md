# Audio Emotion Recognition

Audio emotion analysis is a process developed to extract features from audio clips and classify the emotion of the speaker. The data-set chosen is extracted from the The Ryerson Audio Visual Databaseof Emotional Speech and Song ([RAVDESS](https://www.kaggle.com/uwrfkaggler/ravdess-emotional-speech-audio)). This project uses many different approaches to classify speech snippets into eight different emotions - *Neutral, Calm, Happy, Sad, Angry, Fearful, Disgust, Surprised* - after pre-processing the extracted data.

**NOTE** : To replicate the entire project, please ensure that the dataset is downloaded from [RAVDESS](https://www.kaggle.com/uwrfkaggler/ravdess-emotional-speech-audio) and placed in the [dataset/ravdess](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/dataset/ravdess) folder as done with the sample files that are already present in the folder

## Demo

The demo of the proposed model can be visualized in the [DEMO.py](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/DEMO) folder.

**NOTE** : Just run the [Demo.ipynb](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/DEMO/Demo.ipynb) file.

## Final Model

The implementation of the final model is present in the [/code/finalModel](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/code/4_finalModel) folder.

## Report

The [project report](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/projectReport.pdf) is also included for further details about the project.

## Project Tree

A sample of the dataset is provided in the dataset/ravdess folder

The papers with reference to the literature survey, are provided in the [litSurvey](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/litSurvey) folder.

The folder named [code](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/code) contains all the code pertaining to the project.
It contains the following folders:
* [dataExtraction](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/code/1_dataExtraction) : Code that helps extract the useful features of the audio data (lang: Python)
* [visualisations](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/code/2_visualisations) : Visualisations drawn form the extracted features (lang: R)
* [baselineModels](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/code/3_baselineModels) : 
	<br>a. [decisionTrees](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/code/3_baselineModels/1_decisionTrees) : Implementation of Decision Trees on the extracted Features (lang: Python)
	<br>b. [KNN](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/code/3_baselineModels/2_KNN) : Implementation of KNNs on the extracted Features (lang: R)
	<br>c. [SVM](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/code/3_baselineModels/3_SVM) : Implementation of SVMs on the extracted Features (lang: R)
	<br>d. [ANN](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/code/3_baselineModels/4_ANN) : Implementation of ANNs on the extracted Features (lang: R)
* [finalModel](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/code/4_finalModel) : 
	<br>a. [crossValidation](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/blob/master/code/4_finalModel/1_crossValidation.py) : Cross validation (lang: Python)
	<br>b. [allTrials](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/blob/master/code/4_finalModel/2_allTrials.py) : Other Models (lang: Python)
    <br>c. finalModels : The final model (lang: [Python](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/blob/master/code/4_finalModel/3_finalModels.ipynb) and [HTML](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/blob/master/code/4_finalModel/3_finalModels.html))
* [movingAverages](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/code/5_movingAverages) : Implementation of Moving Averages (lang: Python)

The intermediatory extracted data is stored in the [extractedData](https://github.com/AryaRajivChaloli/Audio-Emotion-Recognition/tree/master/extractedData) folder.

## Authors
**TEAM : #LRHC💥**
* [Arya Rajiv Chaloli](https://github.com/AryaRajivChaloli)
* [Greeshma Karanth](https://github.com/GreeshmaKaranth)
* [Shivangi Gupta](https://github.com/shivangi1299)

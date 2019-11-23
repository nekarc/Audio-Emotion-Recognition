# -*- coding: utf-8 -*-
"""
Created on Tue Nov 19 19:58:10 2019

@author: Greeshma
"""
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import classification_report,confusion_matrix
from sklearn import metrics
from sklearn.model_selection import cross_val_score
from sklearn import preprocessing
from sklearn.ensemble import RandomForestClassifier
from sklearn.ensemble import ExtraTreesClassifier
from sklearn.ensemble import AdaBoostClassifier
from sklearn.ensemble import GradientBoostingClassifier
from sklearn.ensemble import BaggingClassifier

df = pd.read_csv('../../../extractedData/details.csv')

X = df[list(df.columns)[3:]] #to get the relevant columnns (tonnetz, MFCC, chroma etc.)
X = preprocessing.normalize(X) #to normalize the data
y = df['emotion']
X = np.asarray(X)
y = np.asarray(y)
X.shape, y.shape

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25, random_state=42)
#to split data into training and testing => 75:25 ratio


#decision tree classifier
dtree = DecisionTreeClassifier()
dtree.fit(X_train, y_train)
predictions = dtree.predict(X_test)
accuracy=metrics.accuracy_score(y_test, predictions)
print(classification_report(y_test,predictions))
print("Confusion matrix for decision trees:")
print(confusion_matrix(y_test,predictions))
scores1 = cross_val_score(dtree, X, y, cv=10)
print("Accuracy: %0.2f (+/- %0.2f)" % (scores1.mean(), scores1.std()))

#random forest classifier
rfor = RandomForestClassifier(n_estimators=10, random_state=45  )
rfor = rfor.fit(X_train, y_train)
predictions2 = rfor.predict(X_test)
print(classification_report(y_test,predictions2))
accuracy=metrics.accuracy_score(y_test, predictions2)
print("Confusion matrix for random forest:")
print(confusion_matrix(y_test,predictions2))
scores2 = cross_val_score(rfor, X, y, cv=5)      
print("Accuracy: %0.2f (+/- %0.2f)" % (scores2.mean(), scores2.std()))


#Extra trees classifier
clf = ExtraTreesClassifier(n_estimators=10, max_depth=None,min_samples_split=2, random_state=0)
scores3 = cross_val_score(clf, X, y, cv=10)
print("\nAccuracy for Extra Trees: %0.2f (+/- %0.2f)" % (scores3.mean(), scores3.std()))

#AdaBoost Classifier
clf = AdaBoostClassifier(n_estimators=20)
scores4 = cross_val_score(clf, X, y, cv=10)
print("\nAccuracy for AdaBoost: %0.2f (+/- %0.2f)" % (scores4.mean(), scores4.std()))

#Gradient boosting classifier
gb_clf = GradientBoostingClassifier(n_estimators=20, learning_rate=0.05, max_features=2, max_depth=2, random_state=0)
gb = gb_clf.fit(X_train, y_train)
predictions3 = gb.predict(X_test)
print(classification_report(y_test,predictions3))
accuracy=metrics.accuracy_score(y_test, predictions3)
print("Confusion matrix for gradient boosting:")
print(confusion_matrix(y_test,predictions3))
scores5 = cross_val_score(gb_clf, X, y, cv=10)
print("Accuracy: %0.2f (+/- %0.2f)" % (scores5.mean(), scores5.std()))

#Bagging using Decision Trees
bagging = BaggingClassifier(DecisionTreeClassifier(), max_samples=0.3, max_features=0.7) #more dependent on features than samples
scores6 = cross_val_score(bagging, X, y, cv=10)
print("\nAccuracy after bagging with Decision Trees: %0.2f (+/- %0.2f)" % (scores6.mean(), scores6.std()))


# -*- coding: utf-8 -*-
"""
Created on Tue Nov 19 19:58:10 2019

@author: Greeshma
"""

import os
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
from sklearn.neighbors import KNeighborsClassifier

df = pd.read_csv('C:/Users/grees/OneDrive/Documents/Computer Science/Data Analytics/Audio-Emotion-Recognition/extractedData/details.csv')

X = df[list(df.columns)[3:]]
X = preprocessing.normalize(X)
y = df['emotion']
X = np.asarray(X)
y = np.asarray(y)
X.shape, y.shape

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25, random_state=42)
dtree = DecisionTreeClassifier()
dtree.fit(X_train, y_train)
#predictions = dtree.predict(X_test)

rfor = RandomForestClassifier(n_estimators=10)
rfor = rfor.fit(X, y)
predictions2 = rfor.predict(X_test)

accuracy=metrics.accuracy_score(y_test, predictions2)
#accuracy

clf = DecisionTreeClassifier(max_depth=None, min_samples_split=2, random_state=0)
scores1 = cross_val_score(clf, X, y, cv=10)
print(scores1.mean())                               

clf = RandomForestClassifier(n_estimators=10, max_depth=None,min_samples_split=2, random_state=0)
scores2 = cross_val_score(clf, X, y, cv=5)
print(scores2.mean())                               

clf = ExtraTreesClassifier(n_estimators=10, max_depth=None,min_samples_split=2, random_state=0)
scores3 = cross_val_score(clf, X, y, cv=10)
print(scores3.mean())
#scores = cross_val_score(rfor, X, y, cv=10)
#scores  

clf = AdaBoostClassifier(n_estimators=100)
scores4 = cross_val_score(clf, X, y, cv=10)
print(scores4.mean())

gb_clf = GradientBoostingClassifier(n_estimators=20, learning_rate=0.05, max_features=2, max_depth=2, random_state=0)
#gb_clf.fit(X_train, y_train)
scores5 = cross_val_score(gb_clf, X, y, cv=10)
print(scores5.mean())

bagging = BaggingClassifier(DecisionTreeClassifier(), max_samples=0.3, max_features=0.7)
scores6 = cross_val_score(bagging, X, y, cv=10)
print(scores6.mean())



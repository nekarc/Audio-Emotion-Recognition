import os
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import classification_report,confusion_matrix
from sklearn import metrics
from sklearn.model_selection import cross_val_score



df = pd.read_csv('../../../extractedData/details.csv')

X = df[list(df.columns)[3:]]
y = df['emotion']
X = np.asarray(X)
y = np.asarray(y)
X.shape, y.shape

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25, random_state=42)
dtree = DecisionTreeClassifier()
dtree.fit(X_train, y_train)
predictions = dtree.predict(X_test)

accuracy=metrics.accuracy_score(y_test, predictions)
accuracy

scores = cross_val_score(dtree, X, y, cv=25)
scores  

print("Accuracy: %0.2f (+/- %0.2f)" % (scores.mean(), scores.std()))
print(classification_report(y_test,predictions))

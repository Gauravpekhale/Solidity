import pandas as pd   #data formating
import numpy as np    #Numerical 
import seaborn as sns #visulation 
import matplotlib.pyplot as plt 
from sklearn.model_selection import train_test_split # data -> train test 
from sklearn.metrics import confusion_matrix, accuracy_score,classification_report    #accuracy 
from sklearn.neighbors import KNeighborsClassifier     #algorithm
from sklearn.preprocessing import StandardScaler # scaled down 0 1 

X = df.iloc[:, 1:-1].values
y = df.iloc[:, -1].values 
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.30, random_state=101)


sc_X = StandardScaler()
X_train = sc_X.fit_transform(X_train)
X_test = sc_X.transform(X_test)
X_train


classifier = KNeighborsClassifier(n_neighbors=5)   
classifier.fit(X_train, y_train)   #training
y_pred = classifier.predict(X_test)    #testing 
cm = confusion_matrix(y_test, y_pred) 


 
svc = SVC(C=1.0,kernel='rbf',gamma='auto')
svc.fit(X_train,y_train)
y_pred2 = svc.predict(X_test) 
cm = confusion_matrix(y_test, y_pred2) 

print("Accuracy Score for SVC : ", accuracy_score(y_pred2,y_test)*100) 
cl_report=classification_report(y_test,y_pred2)
print(cl_report)

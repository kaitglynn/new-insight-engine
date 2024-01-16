```python
import pandas as pd
import numpy as np
from sklearn import preprocessing
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn import metrics

class DataAnalysis:
    def __init__(self, data_file):
        self.data_file = data_file
        self.data = pd.read_csv(data_file)
        self.X = None
        self.y = None
        self.X_train = None
        self.X_test = None
        self.y_train = None
        self.y_test = None
        self.model = None

    def preprocess_data(self):
        self.data = self.data.dropna()
        self.X = self.data.iloc[:, :-1]
        self.y = self.data.iloc[:, -1]
        self.X_train, self.X_test, self.y_train, self.y_test = train_test_split(self.X, self.y, test_size=0.2)

    def train_model(self):
        self.model = LogisticRegression()
        self.model.fit(self.X_train, self.y_train)

    def evaluate_model(self):
        y_pred = self.model.predict(self.X_test)
        print("Accuracy:", metrics.accuracy_score(self.y_test, y_pred))

    def predict(self, input_data):
        return self.model.predict(input_data)

if __name__ == "__main__":
    data_analysis = DataAnalysis("data.csv")
    data_analysis.preprocess_data()
    data_analysis.train_model()
    data_analysis.evaluate_model()
```
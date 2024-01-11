```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

class Visualization:
    def __init__(self, data):
        self.data = pd.DataFrame(data)

    def plot_histogram(self, column):
        plt.figure(figsize=(10, 6))
        sns.histplot(self.data[column], kde=True)
        plt.title(f'Histogram of {column}')
        plt.show()

    def plot_bar(self, column):
        plt.figure(figsize=(10, 6))
        sns.countplot(x=column, data=self.data)
        plt.title(f'Bar Plot of {column}')
        plt.show()

    def plot_box(self, column):
        plt.figure(figsize=(10, 6))
        sns.boxplot(x=self.data[column])
        plt.title(f'Box Plot of {column}')
        plt.show()

    def plot_heatmap(self):
        plt.figure(figsize=(10, 6))
        sns.heatmap(self.data.corr(), annot=True, cmap='coolwarm')
        plt.title('Heatmap of Correlation Matrix')
        plt.show()
```
```python
import random
from nltk.corpus import wordnet
from nltk.tokenize import word_tokenize
from nltk.corpus import stopwords
from nltk.stem import WordNetLemmatizer

class EducationalTools:
    def __init__(self):
        self.stop_words = set(stopwords.words('english'))
        self.lemmatizer = WordNetLemmatizer()

    def generate_quiz(self, text):
        words = word_tokenize(text)
        words = [self.lemmatizer.lemmatize(word) for word in words if word.isalnum() and word not in self.stop_words]
        random.shuffle(words)
        return words[:10]

    def generate_test(self, text):
        words = word_tokenize(text)
        words = [self.lemmatizer.lemmatize(word) for word in words if word.isalnum() and word not in self.stop_words]
        random.shuffle(words)
        return words[:20]

    def summarize_content(self, text):
        words = word_tokenize(text)
        words = [self.lemmatizer.lemmatize(word) for word in words if word.isalnum() and word not in self.stop_words]
        freq = nltk.FreqDist(words)
        summary_words = [word for word in freq.keys() if freq[word] > 1]
        return ' '.join(summary_words)
```
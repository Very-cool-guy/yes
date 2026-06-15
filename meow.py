import nltk
from nltk.text import Text
text = nltk.corpus.gutenberg.words('austen-sense.txt')
#tokens = nltk.word_tokenize(text)
text_model = Text(text)
print(text_model.generate(length=150, random_seed=2090909))
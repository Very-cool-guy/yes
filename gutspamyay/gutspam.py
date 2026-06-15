import sys
import gutenbergpy.textget
import random
from nltk import pos_tag, word_tokenize
from langdetect import detect

replacements = {'CD': [['1225'], 30], 
                'JJ': [['merry', 'jolly', 'festive'], 30],
                'JJR': [['merrier', 'jollier', 'festiver'], 100],
                'JJS': [['merriest', 'jolliest', 'festivest'], 100],
                'NN': [['sleigh', 'reindeer', 'elf', 'present', 'chimney', 'misletoe', 'stocking'], 30],
                'NNS': [['sleighs', 'reindeer', 'elves', 'presents', 'chimneys', 'mistletoes', 'stockings'], 30],
                'NNP': [['Santa', 'Rudolph', 'Christmas', 'Elsa', 'Noelle', 'Decembers'], 70],
                'NNPS': [['Santas', 'Rudolphs', 'Christmases', 'Elsas', 'Noelles', 'Decembers'], 100],
                'RB': [['merrily', 'jollily', 'festively'], 90],
                'RBR': [['more merrily', 'more jollily', 'more festively'], 100],
                'RBS': [['most merrily', 'most jollily', 'most festively'], 100],
                'SYM':[['*'], 100],
                'UH':[['fahaha', 'hohoho'], 100],
                'VB':[['gift', 'carol', 'decorate', 'feast'], 35],
                'VBD':[['gifted', 'caroled', 'decorated', 'feasted'], 35],
                'VBG':[['gifting', 'caroling', 'decorating', 'feasting'], 35],
                'VBN':[['gifted', 'caroled', 'decorated', 'feasted'], 35],
                'VBP':[['gift', 'carol', 'decorate', 'feast'], 35],
                'VBZ':[['gifts', 'carols', 'decorates', 'feasts'], 35]}

while True:
    raw_book = gutenbergpy.textget.get_text_by_id(random.randint(1, 70000))
    clean_book = gutenbergpy.textget.strip_headers(raw_book)
    pure_book = clean_book.decode('utf-8')
    if pure_book and detect(pure_book) == 'en':
        break

paragraphs = pure_book.split('\n\n')
paragraph = random.choice(paragraphs)

tokens = word_tokenize(paragraph)
tagged = pos_tag(tokens)
replaced = []
for word, tag in tagged:
    if tag in replacements:
        if random.randint(1, 100) <= replacements[tag][1]:
            replaced.append(random.choice(replacements[tag][0]))
        else:
            replaced.append(word)
    else:
        replaced.append(word)
modified_text = ' '.join(replaced)
print(modified_text)

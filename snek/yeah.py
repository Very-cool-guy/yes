import sys
import gutenbergpy.textget
import random
from nltk import pos_tag, word_tokenize
from langdetect import detect

replacements = {'NN': [['baguette', 'croissant', 'beret hat', 'frog leg', 'roasted snail', 'onion', 'macaroon', 'guillotine', 'worker on strike', 'wine', 'revolution'], 30],
                'NNS': [['baguettes', 'croissants', 'beret hats', 'frog legs', 'roasted snails', 'onions', 'macaroons', 'guillotines', 'workers on strike', 'revolutions'], 30],
                'NNP': [['Napolean', 'Marie Antoinette', 'France', 'Versailles', 'Louvre', 'Eiffel'], 70],
                'SYM':[['🇫🇷', '🥖', '🍷'], 100],
                'UH':[['oh là là'], 100],
                'VB':[['strike', 'kiss', 'flirt', 'complain', 'drink', 'smoke'], 25],
                'VBD':[['striked', 'kissed', 'flirted', 'complained', 'drinked', 'smoked'], 25],
                'VBG':[['striking', 'kissing', 'flirting', 'complaining', 'drinking', 'smoking'], 25],
                'VBN':[['striked', 'kissed', 'flirted', 'complained', 'drinked', 'smoked'], 25],
                'VBP':[['strike', 'kiss', 'flirt', 'complain', 'drink', 'smoke'], 25],
                'VBZ':[['strikes', 'kisses', 'flirts', 'complains', 'drinks', 'smokes'], 35]}

while True:
    raw_book = gutenbergpy.textget.get_text_by_id(random.randint(1, 70000))
    clean_book = gutenbergpy.textget.strip_headers(raw_book)
    pure_book = clean_book.decode('utf-8')
    if pure_book and detect(pure_book) == 'en':
        paragraphs = pure_book.split('\n\n')
        paragraph = random.choice(paragraphs)
        if len(paragraph) > 50:
            break

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

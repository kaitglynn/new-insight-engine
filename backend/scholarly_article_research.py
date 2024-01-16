```python
import scholarly

def search_scholarly_articles(query):
    search_query = scholarly.search_pubs(query)
    articles = []
    for article in search_query:
        articles.append({
            'title': article.bib['title'],
            'author': article.bib['author'],
            'abstract': article.bib['abstract'],
            'year': article.bib['year'],
            'url': article.bib['url']
        })
    return articles
```
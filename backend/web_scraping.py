```python
import requests
from bs4 import BeautifulSoup

def scrape_web_page(url):
    try:
        response = requests.get(url)
        response.raise_for_status()
    except requests.HTTPError as http_err:
        print(f'HTTP error occurred: {http_err}')
        return None
    except Exception as err:
        print(f'Other error occurred: {err}')
        return None

    soup = BeautifulSoup(response.text, 'html.parser')
    return soup

def extract_text_from_web_page(soup):
    text = ' '.join([p.text for p in soup.find_all('p')])
    return text

def web_scraping_service(url):
    soup = scrape_web_page(url)
    if soup is not None:
        text = extract_text_from_web_page(soup)
        return text
    else:
        return None
```
```python
import tweepy
import facebook
import json

# Twitter API credentials
twitter_credentials = {
    "consumer_key": "YOUR_CONSUMER_KEY",
    "consumer_secret": "YOUR_CONSUMER_SECRET",
    "access_token": "YOUR_ACCESS_TOKEN",
    "access_token_secret": "YOUR_ACCESS_TOKEN_SECRET"
}

# Facebook API credentials
facebook_credentials = {
    "access_token": "YOUR_ACCESS_TOKEN"
}

# Twitter API setup
def setup_twitter_api():
    auth = tweepy.OAuthHandler(twitter_credentials["consumer_key"], twitter_credentials["consumer_secret"])
    auth.set_access_token(twitter_credentials["access_token"], twitter_credentials["access_token_secret"])
    api = tweepy.API(auth)
    return api

# Facebook API setup
def setup_facebook_api():
    graph = facebook.GraphAPI(access_token=facebook_credentials["access_token"], version = 3.1)
    return graph

# Post a message on Twitter
def post_twitter_message(message):
    api = setup_twitter_api()
    status = api.update_status(status=message)
    return status.id

# Post a message on Facebook
def post_facebook_message(message):
    graph = setup_facebook_api()
    post = graph.put_object(parent_object='me', connection_name='feed', message=message)
    return post['id']

# Get Twitter timeline
def get_twitter_timeline():
    api = setup_twitter_api()
    public_tweets = api.home_timeline()
    return json.dumps(public_tweets)

# Get Facebook feed
def get_facebook_feed():
    graph = setup_facebook_api()
    profile = graph.get_object("me")
    posts = graph.get_connections(profile['id'], 'posts')
    return json.dumps(posts)
```
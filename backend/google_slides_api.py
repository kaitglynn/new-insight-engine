```python
from googleapiclient.discovery import build
from google.oauth2.credentials import Credentials

# Load credentials from the 'token.json' file
creds = Credentials.from_authorized_user_file('token.json')

# Build the service
service = build('slides', 'v1', credentials=creds)

# ID of the Google Slides presentation
presentation_id = 'your_presentation_id'

# Request the presentation
presentation = service.presentations().get(presentationId=presentation_id).execute()

# Print the number of slides in the presentation
print('The presentation contains {} slides:'.format(len(presentation['slides'])))

for i, slide in enumerate(presentation['slides']):
    print('- Slide #{} contains {} elements.'.format(i + 1, len(slide.get('pageElements', []))))
```
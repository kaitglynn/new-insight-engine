```python
import speech_recognition as sr

def sendVoiceMessage():
    r = sr.Recognizer()
    with sr.Microphone() as source:
        print("Speak:")
        audio = r.listen(source)
        try:
            message = r.recognize_google(audio)
            return message
        except sr.UnknownValueError:
            print("Google Speech Recognition could not understand audio")
        except sr.RequestError as e:
            print("Could not request results from Google Speech Recognition service; {0}".format(e))

def receiveVoiceMessage(message):
    # This function will be used to process received voice messages
    # For now, it just prints the received message
    print("Received voice message: " + message)
```
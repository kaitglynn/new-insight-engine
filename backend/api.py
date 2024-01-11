```python
from flask import Flask, request, jsonify
from ai_services import process_request

app = Flask(__name__)

@app.route('/api', methods=['POST'])
def api():
    data = request.get_json()
    response = process_request(data)
    return jsonify(response)

if __name__ == '__main__':
    app.run(debug=True)
```
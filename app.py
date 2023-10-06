from flask import Flask, request, Response
import requests

app = Flask(__name__)

@app.route('/', defaults={'path': ''})
@app.route('/<path:path>', methods=['GET', 'POST'])
def github_proxy(path):
    # Combine the captured path with the GitHub base URL
    github_api_url = f'https://github.com/{path}'

    try:
        # Include URL parameters in the request
        params = request.args.to_dict()

        print('sending to:', github_api_url, request.method)

        # Send a GET request to GitHub with URL parameters
        response = requests.request(request.method, github_api_url, params=params, data=request.data)
        response.raise_for_status()  # Raise an exception for HTTP errors
        content = response.content
        print(content)

        # Create a Flask response and set its content to the GitHub response content
        flask_response = Response(response, response.status_code)
        print(flask_response)

        # Copy the headers from the GitHub response to the Flask response
        for key, value in response.headers.items():
            flask_response.headers[key] = value

        print('before: ', flask_response)
        return flask_response
    except requests.exceptions.RequestException as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)

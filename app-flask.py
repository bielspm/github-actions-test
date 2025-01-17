from flask import Flask, jsonify
import os
import signal

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"message": "Welcome to the API!"}), 200

@app.route('/about')
def about():
    return jsonify({"version": "1.0", "author": "Yagmur Ozden"}), 200

@app.route('/shutdown', methods=['POST'])
def shutdown():
   print("Shutting down gracefully...")
   os.kill(os.getpid(), signal.SIGINT)
   return 'Server shutting down...'

if __name__ == '__main__':
    app.run(debug=True)
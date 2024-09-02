from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

if __name__ == '__main__':
    print(f"{os.environ.get('PORT')=}")
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))
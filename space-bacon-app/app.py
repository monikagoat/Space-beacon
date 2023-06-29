from flask import Flask

app = Flask(__name__)

@app.route('/greeting')
def greeting():
    return '<h1>Greetings from the DevOps Squadron!</h1>'

if __name__ == "__main__":
    app.run(port=80)
from flask import Flask
app = Flask(__name__)
#app.config['APP_ROOT'] = '/flask-app-template'
@app.route("/")
def hello():
    return "<h1 style='color:blue'>Hello There!</h1>"

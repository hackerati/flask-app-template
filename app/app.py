from flask import Flask
application = Flask(__name__)
application.config['APPLICATION_ROOT'] = '/flask-app-template'
@application.route("/")
def hello():
    return "<h1 style='color:blue'>Hello There!</h1>"

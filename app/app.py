from flask import Flask, render_template
application = Flask(__name__)
application.config['APPLICATION_ROOT'] = '/flask-app-template'
@application.route("/")
def hello():
    return render_template("HelloWorld.html")

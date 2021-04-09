import os
from flask import Flask

project_root = os.path.dirname(__file__)
template_path = os.path.join(project_root, 'templates')
app = Flask(__name__, template_folder=template_path)
app.secret_key = 'any random string'


@app.route("/", methods=['GET'])
def main():
    return "Version 1.1.0"

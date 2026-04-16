from flask import Flask
from app.routes import main
from dotenv import load_dotenv
from flask_cors import CORS
import os

load_dotenv()

app = Flask(__name__)
app.register_blueprint(main)


app.config['SECRET_KEY'] = os.getenv("SECRET_KEY")
CORS(app, resources={r"/*": {"origins": "*"}})

if __name__ == "__main__":
    app.run(port=5001, debug=True)
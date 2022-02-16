from flask import Flask

app = Flask(__name__)

@app.route('/login')
def login(): 
    return "<h1>Login page </h1>"

@app.route('/')
def hello():
    return '<h1>Hello, World!</h1>'

if __name__ == "__main__":
    app.run(debug=True) 


from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def hello_world():
   return render_template("index.html")

@app.route('/examrc')
def exam_resources():
   return render_template("indexx.html")

@app.route("/biblerc")
def  bible_resources():
   return render_template("indexxx.html")

if __name__ == '__main__':
   app.run(debug=True)
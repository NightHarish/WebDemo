from flask import Flask, render_template
import mysql.connector




app = Flask(__name__)

@app.route('/')
def hello_world():
   mydb = mysql.connector.connect(
   host="localhost",
   user="root",
   password="",
   database="webdemo"
   )
   mycursor = mydb.cursor()
   mycursor.execute("SELECT * FROM intro")
   myresult = mycursor.fetchall()
   return render_template("index.html", myresult=myresult)
   # return "hello world"

@app.route('/examrc')
def exam_resources():
   mydb = mysql.connector.connect(
   host="localhost",
   user="root",
   password="",
   database="webdemo"
   )
   mycursor = mydb.cursor()
   mycursor.execute("SELECT * FROM examres")
   myresult = mycursor.fetchall()
   return render_template("indexx.html", myresult=myresult)

@app.route('/movierc')
def movie_resources():
   mydb = mysql.connector.connect(
   host="localhost",
   user="root",
   password="",
   database="webdemo"
   )
   mycursor = mydb.cursor()
   mycursor.execute("SELECT * FROM movieres")
   myresult = mycursor.fetchall()
   return render_template("index4.html", myresult=myresult)


@app.route("/gamerc")
def  gamer_resources():
   mydb = mysql.connector.connect(
   host="localhost",
   user="root",
   password="",
   database="webdemo"
   )
   mycursor = mydb.cursor()
   mycursor.execute("SELECT * FROM games")
   myresult = mycursor.fetchall()
   return render_template("indexxx.html", myresult=myresult)

if __name__ == '__main__':
   app.run(debug=True)
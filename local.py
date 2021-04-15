from flask import Flask, request, redirect
from flask import    render_template
import mysql.connector




app = Flask(__name__)
mydb = mysql.connector.connect(
   host="localhost",
   user="root",
   password="",
   database="webdemo"
)

mycursor = mydb.cursor()


@app.route('/')
def hello_world():
   mycursor.execute("SELECT * FROM intro")
   myresult = mycursor.fetchall()
   return render_template("index.html", myresult=myresult)
   # return "hello world"

@app.route('/examrc')
def exam_resources():
   mycursor = mydb.cursor()
   mycursor.execute("SELECT * FROM examres")
   myresult = mycursor.fetchall()
   return render_template("indexx.html", myresult=myresult)

@app.route('/movierc')
def movie_resources():
   mycursor = mydb.cursor()
   mycursor.execute("SELECT * FROM movieres")
   myresult = mycursor.fetchall()
   return render_template("index4.html", myresult=myresult)


@app.route("/gamerc")
def  gamer_resources():
   mycursor.execute("SELECT * FROM games")
   myresult = mycursor.fetchall()
   return render_template("indexxx.html", myresult=myresult)

@app.route("/tiles")
def  tiles_resources():
   mycursor.execute("SELECT * FROM links")
   myresult = mycursor.fetchall()
   return render_template("tiles.html", myresult=myresult)

@app.route('/tiles/<name>')
def get_product(name):
   mycursor.execute("""SELECT * FROM links where PK=%s""" % (int(name)))
   myresult = mycursor.fetchall()
   return render_template("article.html", myresult=myresult)

@app.route('/input', methods=['GET', 'POST'])
def inputs():
    if request.method=='POST':
        Subjects = request.form['Subjects']
       # Resource1 = request.form['Resource 1']
        Resource2 = request.form['Resource 2']
        sql = "INSERT INTO links (Subjects, Resource 2) VALUES (%s, %s)"
        val = (Subjects, Resource2)
        mycursor.execute(sql, val)
        mydb.commit()
        return redirect("/tiles")
    # print(mycursor.rowcount, "record inserted.")
    return render_template('input.html')

if __name__ == '__main__':
   app.run(debug=True)
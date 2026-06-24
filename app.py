from flask import*
import pymysql
# initialize the application
app= Flask(__name__)


# define the route/endpoint
@app.route("/api/signup",methods=["POST"])
# /DEFINE THE function
def signup():
    # get user inputs from the form 
    username    =request.form["username"]
    email       =request.form["email"]
    password    =request.form["password"]
    # connection to database
    connection=pymysql.connect(
        host="root",
        user="localhost",
        password="",
        database="modcomallankimtai",
    )

# run the application
app.run(debug=True)
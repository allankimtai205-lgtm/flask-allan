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
    phone       =request.form["phone"]
    # connection to database
    connection=pymysql.connect(
        host="localhost",
        user="root",
        password="",
        database="modcomallankimtai",
    )
    #Define your cursor 
    cursor=connection.cursor()

    #Define SQL to insert user
    sql="insert into users(username,password,email,phone)value(%s,%s,%s,%s)" 

    # define data coming from thr form
    data=(username,password,email,phone)

    # by execute/run
    cursor.execute(sql,data)

    # commit/save changes
    connection.commit() 
    return jsonify({"message":"User registraction successfully"})




# member signin/login
# 1.  DEfine your route/endpoint
@app.route("/api/signin",methods=["POST"])

# 2.  Define the function
def signin():
    # 3.  Get the user input from the form
    email=request.form['email']
    password=request.form['password']
    # 4.  Connection to database
    connection=pymysql.connect(
        host="localhost",
        user="root",
        password="",
        database="modcomallankimtai",
    )
    # 5.  Define the cursor
    cursor=connection.cursor()
    # 6.define sql to select user
    sql="select *from users where email=%s and password=%s"
    # 7.  Define your data 
    # NB:it comes from step 3
    data=(email,password)
    # 8.  Execute/run query
    cursor.execute(sql,data)
    # wrong email and password
    if cursor.rowcount==0 :
        return jsonify({"message":"Invalid email or password"})
    # correct email and password
    if cursor.rowcount==1:
        # fetch the user.
        user=cursor.fetchone()
        return jsonify({"message":"login successfully"})


















































































# run the application
app.run(debug=True)
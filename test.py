
from flask import *
# intialize the application
app=Flask(__name__)
# define route/end point
@app.route("/api/home")
# define function
def home():
 return jsonify({"message":"welcome home"})


@app.route("/api/services")
def services():
 return jsonify({"message":"welcome to services"})


@app.route("/api/about")
def about():
 return jsonify({"message":"welcome to about"})

@app.route("/api/contact")
def contact():
 return jsonify({"message":"contact us for more information"})

@app.route("/api/products")
def products():
 return jsonify({"message":"products available"})

@app.route("/api/students")
def students():
 return jsonify({"message":"list of students"})

@app.route("/api/courses")
def courses():
 return jsonify({"message":"courses offered"})

@app.route("/api/teachers")
def teachers():
    return jsonify({"message":"list of teachers"})

@app.route("/api/news")
def news():
     return jsonify({"message":"latest news update"})

@app.route("/api/gallery")
def gallery():
    return jsonify({"message":"gallery images"})

@app.route("/api/faq")
def faq():
    return jsonify({"message":"Frequently asked questions"})

@app.route("/api/profile")
def profile():
    return jsonify({"message":"student profile information"})

@app.route("/api/events")
def events():
    return jsonify({"message":"upcoming events"})

@app.route("/api/library")
def library():
    return jsonify({"message":"library resources available"})

@app.route("/api/addition",methods=["POST"])
def addition():
    num1=request.form["num1"]
    num2=request.form["num2"]
    answer=int(num1)+int(num2)
    return jsonify({"answer":answer})

@app.route("/api/subtract",methods=["post"])
def subtract():
    num3=request.form["num3"]
    num4=request.form["num4"]
    answer=int(num3)-int(num4)
    return jsonify({"answer":answer})

@app.route("/api/multiplication",methods=["post"])
def multiplication():
  num1=request.form["num1"]
  num2=request.form["num2"]
  answer=int(num1)*int(num2)
  return jsonify({"answer":answer})

@app.route("/api/division",methods=["post"])
def division():
  num1=request.form["num1"]
  num2=request.form["num2"]
  answer=int(num1)/int(num2)
  return jsonify({"answer":answer})
 
# run the application
app.run(debug=True)
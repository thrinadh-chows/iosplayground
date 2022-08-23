import UIKit

var greeting = "Hello, playground"
var x=10
print(x)
var s=("var:10");
print(s)
var greetings = "hiii"
print(greeting)
print("hii", 10, 10.25)
print("greetings \(greeting)")
var age=24
print("my age is \(age)")//string interpolation
//print("my age is  "+age) concatenation of different data types are not allowed

print("""
hello
world!
""")
print ("Hello All,\rWelcome to Swift programming")//\r means carraige returns
let  welcomeMessage  = "Hello!"
   print(welcomeMessage , "All")
//welcomeMessage = "good bye"  cannot change the let
var  WelcomeMessage  = "Hello!"
WelcomeMessage="terminarator"
   print(WelcomeMessage , "All")//can change  var
print("Welcome to Swift Programming")
print("Fall 2022")
print("*************")
print("Welcome to Swift Programming" , terminator : "$" )//terminator means cannot give a line
print("Fall 2022")
print("The new pattern is")
print(1,2,3,4,5,6, separator: "&")// separator means it separates

var mobilebrand="apple"
mobilebrand="google"
print(mobilebrand)
let pi=3.14
print(pi)
var Myage:Int = 24
Myage = Myage*2
print(Myage)
var aweMessage="awesome"
print(aweMessage)
print("aweMessage")
var course1 = "ios"
var course2 = "java"
print(course1, course2)
print(course1, "-", course2)
print(10,20,30, separator: "&")
print(12.5, 15.5)

var httpError  = (errorCode : 404  , errorMessage :"PageNot Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )
var name = ("John","Smith")
var fName = name.0
var lName = name.1
print(fName , terminator : ",")
print(lName)

var origin = (x : 0 , y : 0)
var point = origin
print(point)

let city = (name:"maryville" , population : 11000)
let(cityname, cityPopulation) = (city.0, city.1)
print(cityname)
print(cityPopulation)
let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

let z = (10,20)
print(type(of: z))

var fname = "Joe"
var lname = "Root"
(fname , lname) = (lname , fname)
print("first name is \(fname) and last name is \(lname)")
var cricketKit = ("handGloves" ,"helmet",("bat","ball", "wickets"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)
print(cricketKit.2.2)
print("test")

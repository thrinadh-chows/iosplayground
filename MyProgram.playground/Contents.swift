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


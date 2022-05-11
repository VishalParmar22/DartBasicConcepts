/**
 * Dart Classes and Object
    Dart classes are the blueprint of the object, or it can be called object constructors. A class can contain fields, functions, constructors, etc. It is a wrapper that binds/encapsulates the data and functions together; that can be accessed by creating an object. A class can refer to as user-define data type which defines characteristics by its all objects.

    We can assume a class as a sketch (prototype) or a car. It contains all the details about model name, year, features, price, etc. Based on these properties of the car, we can build the car. Here the car is an object. There can be many cars so we can create many objects of cars to access all the properties.

    Defining a Class in Dart
    Dart provides class keyword followed by a class name is used to define a class; all fields and functions are enclosed by the pair of curly braces ({}). The syntax is given below.

    Syntax:

    class ClassName {
    <fields>
    <getters/setters>
    <constructor>
    <functions>
    }
    Here, the ClassName represents the actual name of the class, which is defined by the user. In curly braces, we provide a class definition. A class can consist of fields, constructors, getters setters, and methods.

    Note - According to the naming convention rule of identifiers, the first letter of the class name must be capital and use no separators.
    Let's understand the following example.

    Example -
 * */


//defining class
class Student{
  //class member or variables.
 var stdName;
 var stdAge;
 var stdNo;

 //class property or function.
showStdInfo(){
  print("Student Name is: ${stdName}");
  print("Student Age is: ${stdAge}");
  print("Student Number is: ${stdNo}");
}
}

/**
 * In the above example of class, we declared a class called Student. This class has three fields stdName, stdAge, and stdRoll_nu. The showStdInfo() is a class function which prints the fields of class. To access the properties of the class, we need to create its object.

    Dart Object
    Dart is object-oriented programming, and everything is treated as an object in Dart. An object is a variable or instance of the class used to access the class's properties. Objects have two features - state and behavior. Suppose a man is an object with a state (name, age, health) and behavior (walking, running, and sleeping). Programming objects are theoretically similar to the real-life objects; they also have state and behavior. An object is created from a template which is known as class.

    The fields of the classes are stored as object states, whereas the method represents an object's behavior.

    Creating Class Objects in Dart
    After creating the class, we can create an instance or object of that class which we want to access its fields and functions. The new keyword is used to declare class followed by the class name. The general syntax of creating an object of a class is given below.

    Syntax:

    var object_name  = new class_name(<constructor_arguments>);
    Here, object_name and class_name signifies as the actual object name and class name respectively. If the class constructor is parameterized then constructor arguments must be passed value.

    Let's understand the following example.

    Example -
 * */

void main(){
//Creating Object called std

var objStd = new Student();
/**
 * We have created the object called std of the class Student but only creating an object not enough. We have to access the properties by using the newly created object.

    Assessing Instance Variable and Function
    After creating an object, we can access the fields and methods of the class. The class property name is separated by the (.) operator with the instance name. The syntax is given below.

    Syntax:

    objectName.propName or objectName.methoName()
    Let's understand the following example.

    Example -
 * */
objStd.stdNo=10;
objStd.stdAge=12;
objStd.stdName="Vishal";
//accessing class function
objStd.showStdInfo();


}
/**
 * Explanation:

    In the above example, we created a class called Student, which consisted of the student name, age, roll number, and showStdInfo() function to show the student details.

    Then, we created a Student class object and assigned the values to each field by using the (.) operator. We called the showStdInfo() function that displayed the details as an output to screen.

    Benefit of Objects
    There are various benefits of using object-oriented programming. Below are the few benefits.

    Modularity: The source code of an object can be maintained individually and can hide from the other object's source code.
    Data - hiding: Using oops programming, the details of the internal functionality of code are hidden from the others. For example - Users only interact with the application, but they don't familiar with the internal implementation.
    Reusability - We don't need to write the same code again and again. We can use the object of class multiple times in our program.
    Pluggability and debugging easy - If any object is creating a problem in our program, and then we can replace it in our program and plug the new object as its replacement. The oops code can be easy to debug.
 * */

import 'dart_2_classes_and_object.dart';

/**
 *What is constructor?
    A constructor is a different type of function which is created with same name as its class name. The constructor is used to initialize an object when it is created. When we create the object of class, then constructor is automatically called. It is quite similar to class function but it has no explicit return type. The generative constructor is the most general form of the constructor, which is used to create a new instance of a class.

    It is option to declare within the class. All class have own constructor but if we don't declare or forget then Dart compiler will create default constructor automatically by passing the default value to the member variable. If we declare own constructor, then default constructor will be ignored.

    Example -

    Suppose we have a class name Student and we will create an object of it as follow.

    Student std = new Student()
    It invoked the default constructor of the Student class.

    Creating Constructor in Dart
    As we have mentioned, a constructor has the same name as its class name and it doesn't return any value. Suppose if we have class Student then the constructor name should be also Student.

    Syntax:

    class ClassName {
    ClassName() {
    }
    }
    We must remember the following two rules while creating a constructor.

    The constructor name should be same as the class name.
    The constructor doesn't have explicit return type.
    Let's understand the following example.

    Example -
 * */

void main(){
  //creating object that call construction automatically when we creates an object.
  Student1 std1=new Student1(); //default constructor.
  Student std=new Student("Harsh",56); //parameterized constructor.
  Student2 std3= new Student2();
  Student2 std2= new Student2.namedConst("Computer");
}

/***
 *  Types of Constructors
    There are three types of constructors in Dart as given below.

    Default Constructor or no-arg Constructor
    Parameter Constructor
    Named Constructor
    Default Constructor or no-arg Constructor
    A Constructor which has no parameter is called default constructor or no-arg constructor. It is automatically created (with no argument) by Dart compiler if we don't declare in the class. The Dart compiler ignores the default constructor if we create a constructor with argument or no argument. The syntax is given below.

    Syntax:

    class ClassName {
    ClassName() {
    // constructor body
    }
    }
    Let's understand the following example.

    Example -
 */
class Student1{
  //Declaring non-parameterized constructor.
  Student1(){
    print("this is the default constructor.");
  }


}
/**
 * Parameterized Constructor
    We can also pass the parameters to a constructor that type of constructor is called parameterized constructor. It is used to initialize instance variables. Sometimes, we need a constructor which accepts single or multiple parameters. The parameterized constructors are mainly used to initialize instance variable with own values. The syntax is given below.

    Syntax:

    class ClassName {
    ClassName(parameter_list)
    // constructor body
    }
    Let's understand the following example.

    Example -
 * */
class Student{
  //Declaring parameterized constructor.
  Student(String name,int age){
    print("The name is:${name}");
    print("The age is: ${age}");
  }
/**
 * Explanation:

 *
 * In the above example, we declared a parameterized constructor which has two parameter name and age. We created an object of the Student class and passed the appropriate value to the constructor. It printed the name and age as an output to the screen.


 * */

}

/**
 *  Named Constructors
    The named constructors are used to declare the multiple constructors in single class. The syntax is given below.

    Syntax:

    className.constructor_name(param_list)
    Let's understand the following example.

    Example -
 * */

class Student2{

  Student2(){
    print("this is the example of named constructor:");


  }
  Student2.namedConst(String branch){
    print("The branch is : ${branch}");
  }
}
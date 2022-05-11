/**
 * Dart Callable Classes
    Dart provides the facility to call class instances like a function.
    To make callable class, we need to implement a call() method in it.
    Let's understand the following example -

    Example - 1
 * */

class Student{
  String call(String name,int age){
    return ("Student name is $name and Age is $age ");
  }
}

void main(){
  Student s= new Student();
  var msg=s("Vishal",22); //call instance called like a function.
  print("Dart Callable class");
  print(msg);

  /**
   * Explanation:
      In the above code, We defined a call() function in
      the class Student that takes two arguments String name, integer age
      and return a message with this information. Then, we have created
      the object of class Student and called it like a function.

      var msg = stu('Sharma',18);
      Let's have a look at another example -

      Example - 2 Multiple callable class
   * */
  Emp e= new Emp();
  var msg1=e(101,32);
  print("Dart Callable class");
  print(msg1);
  /**
   * In the above code, we defined two callable functions in class
   * Student and class Employee. The Employee class call() function
   * accepts two parameters as String empid and int age.
   * We called instances of both classes as callable functions.
   * */
}
class Emp{
  String call(int eId,int eAge){
    return('Employee id is ${eId} and Age is ${eAge}');
  }
}


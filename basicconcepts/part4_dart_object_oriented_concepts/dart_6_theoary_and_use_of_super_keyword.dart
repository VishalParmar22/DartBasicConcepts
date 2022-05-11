/**
 * Dart super Keyword
    The super keyword is used to denote the instant parent class object of the current child class. It is used to invoke superclass methods, superclass constructor in its child class. The super keyword's main objective is to remove the confusion between parent class and subclass with the same method name. It is also used to refer to the superclass properties and methods.

    Usage of static Keyword
    When parent class and child class have members with the same name, then super keyword can be accessed data members of parent class in child class.
    It is used to access the parent class constructor in the child class.
    Using the super keyword, we can access the superclass method that is overridden by the subclass.
    Using a super keyword with variables
    This situation arises when the child class has the same name variables as superclass variables. So there is a chance of ambiguity for Dart compiler. Then super keyword can access the superclass variables in its child class. The syntax is given below.

    Syntax:

    Super.varName
    We can more understand by the following example.

    Example -
 * */
class Car{
  int speed =180;

}
//sub class Bike Extending Car
class Bike extends Car{
  int speed =110;

  void display(){
    //print variable of the base class(Bike).
    print("The speed of car:${super.speed}");
    print("The speed of car:${speed}");
  }
}



/**
 * Explanation:

    In the above code, we defined the superclass as Car, which has a speed variable, and then it inherited by the subclass Bike.

    The sub class also has variable speed, so we used the super keyword to access the parent class variable. We created the object of child class b and called a display method that printed the value of superclass variable.

    If we use the print(speed) instead of print(super.speed), it will print the value the subclass variable.

    You can copy the above code, paste it into your dartpad or notepad, and print the value without using the super keyword. You can see the difference between both results.

    Using the super keyword with parent class method
    As discussed earlier, the super keyword is used to access the parent class method in child class. If the child class and parent class consist of the same name, then we can use the super keyword to use the parent class method in child class. The syntax is given below.

    Syntax:

    super.methodName;
    Let's understand the following example

    Example -
 * */

class Super{
  void display(){
    print("this is the super class method:");

  }

}
//Child class inherits Super
class Child extends Super {
  void display(){
    print("this is the child class");
  }
//Note that message() is only in Student class.
void message(){
    //will invoke or call current class display() method.
    display();

    //will invoke or call parent class display() method.
  super.display();
}
}

/**
 * Explanation -

    In the above code, we created the function with the same name in both parent class and child class. The display() method is present in both parent class and child class that means It is a situation of method overriding.

    So we created a message() method in the child class, inside it, we called parent class method using the super keyword, and then created the object of the child class. Using the object, we called the message() method that printed both display() methods statements to the screen.

    Note - The super can be used only if the subclass method overrides the superclass method. If it doesn't then we don't require using super keyword.
    Using super keyword with constructor
    We can also use the super keyword to access the parent class constructor. The super keyword can call both parameterized and non-parameterized constructors depending on the situation. The syntax is given below.

    Syntax:

    :super();
    Let's understand the following example.

    Example -
 * */
//Base class called parent.
class Parent1{
  parent1(){
    print("This is the super class constructor");
  }
}
//Child class Super.
class Child1 extends Parent1{
  Child1():super(){
    //Calling super class constructor.
    print("This is the sub class constructor");
  }
}
/**
 * Explanation

    The syntax of Dart language is too close to C# language.
    We called the parent class constructor using the super keyword,
    which is separated by : (colon).
    The delegate a superclass constructor,
    we should put the superclass as an initializer.
 * */


void main() {
  // Creating object of sub class.
  Bike b = new Bike();
  b.display();

  //Creating object of sub class

  Child c =new Child(); //read explanation 2

  //calling display() of student
  c.message();

  Child1 c1 = Child1();

}









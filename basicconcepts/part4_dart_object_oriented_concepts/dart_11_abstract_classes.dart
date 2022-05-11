/**
 *Dart Abstract Classes
    Abstract classes are the classes in Dart that has one or more abstract method. Abstraction is a part of the data encapsulation where the actual internal working of the function hides from the users. They interact only with external functionality. We can declare the abstract class by using the abstract keyword. There is a possibility that an abstract class may or may not have abstract methods.

    Abstract methods are those methods, which are declared without implementation. The concrete methods or normal methods are declared with implementation. An abstract class can contain both types of methods, but a normal class is not allowed to have abstract methods.

    We cannot create the instance of an abstract class that means it can't be instantiated. It can only be extended by the subclass, and the subclass must be provided the implantation to the abstract methods which are present in the present class. Then it is necessary to declare abstract subclass.

    Rules for Abstract classes:
    The rules of the abstract are given below.

    An abstract class can have an abstract method (method without implementation), or not.
    If there is at least one abstract method, then the class must be declared abstract.
    The object of the abstract class cannot be created, but it can be extended.
    An abstract keyword is used to declare the abstract class.
    An abstract class can also include normal or concrete (method with the body) methods.
    All abstract methods of parent class must be implemented in the subclass.
    Declaring Abstract Class
    An abstract keyword followed by a class name is used to declare
    the abstract class. An abstract class mostly used to offer a base
    for the subclass to extends and implement the abstract method.

    Syntax:
    abstract class ClassName {
    // Body of abstract class
    }
    Usage of Abstract class
    Let's suppose we have a class Person that has method displayInfo(),
    and we have to sub classes of it Boy and Girl.
    Each of the person information varies from the other person,
    so there is no benefit to implementing the displayInfo()
    in the parent class. Because every subclass must override
    the parent class method by provides its own implementation.
    Thus, we can force the subclass to provide implementation to
    that method, so that is the benefit to make method abstract.
    We don't require the give implementation in the parent class.

    Dart Abstract Classes
    Let's understand the above scenario through the following code.

    Example -
 * */

abstract class Person{
  //Declaring abstract method.

  void displayInfo(); //abstract method.
}

class Boy extends Person{
  @override
  void displayInfo() {
    // TODO: implement displayInfo
    print("My name is Vishal");
  }

}

class Girl extends Person{
  @override
  void displayInfo() {
    // TODO: implement displayInfo
    print("My name is Mary Gold");
  }

}

void main (){
  Boy b= new Boy();
  Girl g = new Girl();
  b.displayInfo();
  g.displayInfo();

}

/**
 * Explanation:
    As we can see that in the above code, we implemented the abstract
    method in two subclasses according to its requirement and then
    we called the displayInfo() method using the object of
    the both class's object.
 * */
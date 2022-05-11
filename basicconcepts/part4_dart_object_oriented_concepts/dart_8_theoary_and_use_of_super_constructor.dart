

/**
 * Dart Super Constructor
    The child class can inherit all properties (methods, variables) and behavior of parent expect parent class constructor.& The superclass constructor can be invoke in sub class by using the super() constructor. We can access both non-parameterized and parameterized constructor of superclass. Accessing the constructor of superclass is slightly different in the Dart. The syntax is given below.

    Syntax:
    SubClassConstructor():super() {
    }
    Implicit super
    As we know that the constructor is automatically called when we instantiate a class. When we create the object of sub class, it invokes the constructor of sub class which implicitly invokes the parent class's default(non-parameterized) constructor. We can use super() constructor in our subclass to invoke superclass constructor. Let's understand the following example.

    Example -

 *
 * */

class SuperClass{
  SuperClass(){
    print("this is a superclass constructor");
  }

}
class Subclass extends SuperClass{
  Subclass(){
    print("This is a subclass constructor");
  }
  display(){
    print("Wel come to  jurassic park");
  }
}

/**
 * Explicit super
    If the superclass constructor consists of
    parameters then we require to call super() constructor with
    argument in to invoke superclass constructor in subclass explicitly.
    Let's understand the following example.
 * */

class ExplicitSuperClass{
  ExplicitSuperClass  (String message){
  print("This is explicit super class");
  print(message);
  }
}
class ExplicitSubClass extends ExplicitSuperClass{
  ExplicitSubClass():super("We are calling super class constructor explicitly"){
    print("this is a explicitSubclass constructor");

  }
  display(){
    print("Welcome to Dart world!");
  }
}

void main(){
  print("Dart implicit super class constructor call");
  // we create a object of subclass which will invoke  subclass constructor.

  //as well as parent class constructor.
  Subclass s = new Subclass();
  //calling subclass method
  s.display();

  print("Dart explicit Super class constructor example");
  //we create an object of sub class which will invoke subclass constructor.

  //as well as parent class constructor.
  ExplicitSubClass es = ExplicitSubClass();
  //calling explicit sub class method.
  es.display();
}
/**
 *Dart Interfaces
    An interface defines the syntax that any entity must adhere to. Dart does not have any separate syntax to define interfaces. An Interface defines the same as the class where any set of methods can be accessed by an object. The Class declaration can interface itself.

    The keyword implement is needed to be writing, followed by class name to be able to use the interface. Implementing class must provide a complete definition of all the functions of the implemented interface. We can say that a class must define every function with the body in the interface that we want to achieve.

    Declaring an Interface
    Dart doesn't provide syntax for declaring interface directly. Implicitly, a class declaration itself an interface containing the entire instance member of the class and of any interfaces it implements.

    Implementing an Interface
    To work with interface methods, the interface must be implemented by another class using the implements keyword. A class which is implemented the interface must provide a full implementation of all the methods that belongs to the interface. Following is the syntax of the implementing interface.

    Syntax:
    class ClassName implements InterfaceName
    In the following example, we are declaring a class Employee. Implicit, the Engineer class implements the interface declaration for the Employee class. Let's understand the above example by the following code snippet.

    Example -
 * */

class Emp{
  void display(){
    print("I am working as an engineer");
  }
}

class Engineer implements Emp{
  @override
  void display() {
    // TODO: implement display
    print("i am an engineer in this company");
  }

}
/**
 * Explanation
    In the above example, we defined a class Engineer as an interface implementing the Engineer class. Then, we defined the same method display() in both classes. This method override in class Engineer, so we created the object of the Engineer class in a main() function invoked the display() function. It printed the output to the screen.

    Implementing Multiple Inheritance
    We have discussed previously that the multiple inheritance is not supported by the Dart, but we can apply the multiple interfaces. We can say that, using multiple interfaces, we can achieve multiple inheritance in Dart. The syntax is given below.

    Syntax:
    class ClassName implements interface1, interface2,…interface n
    Let's understand the following example.

    Example -
 * */

class Student{
    String name;
    int age;
 void displayName(){
   print("I am ${name}");
 }
 void displayAge(){
   print("My age is : ${age}");
 }
}

class Faculty{
     String depName;
     int salary;

  void displayDepName(){
    print("I am a professor of ${depName}");
  }
  void displaySalary(){
    print("My salary is ${salary}");
  }
}

//Defining interface by implementing another class.
class College implements Student,Faculty{
  //Override the student class members.
  @override
     int age;

  @override
     String name;

  @override
  void displayName() {
    // TODO: implement displayName
    print("I'm ${name}");
  }

  @override
  void displayAge() {
    print("My age is :${age}");
  }



 //Overriding each data member of faculty class.

  @override
     int salary;

  @override
     String depName;



  @override
  void displaySalary() {
   print("My Salary is:${salary}");
  }

  @override
  void displayDepName() {
print("I'm professor od ${depName}");
  }

}
void main(){
  Engineer eng = new Engineer();
  eng.display();

  College c = new College();
  c.name="HandCombe";
  c.age=25;
  c.depName="Dart";
  c.salary=56852;

  c.displayName();
  c.displayAge();
  c.displayDepName();
  c.displaySalary();


}
/**
 * Explanation:
    In the above example, we implemented multiple interfaces in class College. Each data member of Student and Faculty class is overriding in class College. We created the object of College class and invoked the overriding functions. It printed the result.

    Rules for Implementing Interfaces
    A class that implements the interface must override every method and instance variable of an interface.
    Dart doesn't provide syntax to declare the interface directly. The class declaration can consider as the interface itself.
    An interface class must provide the full implementation of all the methods belong to the interfaces.
    We can implement one or more interfaces simultaneously.
    Using the interface, we can achieve multiple inheritance.
 * */
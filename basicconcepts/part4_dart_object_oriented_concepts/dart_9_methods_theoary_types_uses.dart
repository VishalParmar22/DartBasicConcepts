/**
 *Dart Methods
    A Dart method is the collection of statements that consists of some characteristics to class object. It provides the facility to perform some operation and it can be invoked by using its name when we need in the program. Methods divide the large task into small chunks and perform the specific operation of that program. This process increases the code reusability and enhances the modular approach of program. The methods can be defined with parameters that are passed as information to complete the specific task, after that it can return value to where it called or return nothing. Methods that define in the class either instance method or class methods.

    Instance Methods
    A method that can be accessed by using the instance of class is called instance methods. The instance methods can be no arguments or with arguments. The instance method can access by instance variable this keyword.

    Creating Instance Methods
    An instance method is defined by a name and valid return type. It may have list of parameters. The syntax is given below.

    Syntax:
    return_type method_name(<list of arguments>)
    {
    //statement(s)
    }
    Calling instance Method
    Instance methods can be accessed by using the class object, thus we required to create object to use it. The syntax is given below.

    Syntax:
    ClassName objName = new ClassName()
    objName.methodName()
    Class Methods
    The class method is declared with the static keyword. It can be accessed by using the class name instead of the class object. These methods are common to all instances of that individual class. The static methods only can access the static variables.

    Creating Class Methods
    A static method is declared by using static keyword followed by method name with return type. The syntax is given below.

    Syntax:
    static return_type method_name(){
    //statement(s)
    }
    Calling Class Method
    The class method can be called directly by using the class name instead of class object. The syntax is given below.

    Syntax:
    ClassName.classMethod()
 * */

/**
 * Dart Method Overriding
    What is Polymorphism?
    The polymorphism is a combination of the two Greek words poly, which means many and morph means morphing into different forms or shapes. Together, polymorphism means the same entity can be used in various forms. In the programming aspect, the same method can be used in different classes. This technique makes programming more intuitive and more accessible.

    For example - We have Shape class to define the shape of the object. The shape can be the circle, rectangle, square, straight line, etc. So here the goal is common, but the approach is different.

    The method overriding is a technique to achieve polymorphism. Sometimes, we want a subclass object to give different results for the same method when subclass object invokes it. This can be done by defining the same method again in subclass. The method has the same name, same arguments, and the same return type. When that method is called, the subclass's method is executed instead of the method defined in the superclass.

    Method Overriding
    When we declare the same method in the subclass, which is previously defined in the superclass is known as the method overriding. The subclass can define the same method by providing its own implementation, which is already exists in the superclass. The method in the superclass is called method overridden, and method in the subclass is called method overriding. Let's understand the method overriding in the following example.

    Method Overriding Example
    We define two classes; first, is a subclass called Human, and the second is a superclass Boy. The Boy subclass inherits the Human superclass. The same method void showInfo() in both classes is defined with the different implementation. The subclass has its own definition of the void showInfo(). Let's have a look at the following code snippet.

    Example -
 * */

class Human{
  //Overridden method
  void run(){
    print("Human is running.");

  }


}
class Man extends Human{
  //overriding method.
  void run(){
    print("Boy is running");

  }
}
/***
 * Explanation:
    In the above example, we defined a method with the same name in both, subclass and superclass. The purpose of method overriding is to give the own implementation of subclass method. When we created the object of the Boy subclass, it executed the subclass method and printed the Man is running instead of Human is running.

    If we create the object of a parent class, then it will be always invoked the parent class method.

    Let's take another example where we create two Classes called College and Student with common method void student_details(). Let's have a look at the following code snippet.

    Example - 2
 * */

class Collage {
  //Declaring variables
   String name;
   int no;

  //overridden method
  void stuDetails(String name,int no) {
    this.name = name;
    this.no = no;
  }

  void display() {
    print("The student name:${name}");
    print("The student no id:${no}");
    print("The result is passed");
  }
}

class Student extends Collage{

//Overriding Method.
void stuDetails(String name,int no){
  this.name=name;
  this.no=no;
}
void show(){
  print("The student name:${name}");
  print("The student no:${no}");
  print("the result is failed.");
}
}

/**
 * Explanation:
    In the above example, we create two classes - College as a parent class and Student as a child class. The method stu_details defined in both classes with the same parameters and same return types.

    Now, the College superclass is inherited by the Student subclass and the stu_details() method is overridden in the subclass.

    We created the object of Student and to invoked the stu_details() with suitable arguments. It executed the subclass method, and then it printed the result.

    Same as we created the object of College superclass object invoked its methods and printed the different results.

    Method Overriding using super Keyword
    We can invoke the parent class method without creating its object. It can be done by using the super keyword in the subclass. The parent class data member can be accessed in the subclass by using the super keyword. Let's understand the following example.

    Example -
 * */

class HumanNew{

  //Overridden method.
  void run(){
    print("Human is running");
  }
}
class ManNew extends HumanNew{
  //overriding method.
  void run (){
    //accessing parent class run method in child class.

    super.run();
    print("Boy is running.");
  }
}
/**
 *
 * */

void main(){
  Man m = Man();
  //this will call the child class version of run()
  m.run();

  //creating a object of subclass.
  Student st=new Student();
  st.stuDetails("Harsh", 10);
  st.display();

  //creating object of super class.
  Collage cg =new Collage();
  cg.stuDetails("Vishal",30);
  cg.display();

  ManNew mn = ManNew();
  //this will call the child class version of run method.
  mn.run();
}
/**Explanation:
    In the above program, we accessed the Human class method in child class using the super keyword. Now, we don't need to instantiate the parent class. We only created the object of subclass, which invoked the run() method of child class and parent class.

    Note - When we created the child class object and invoked the method, it executes the parent class (if accessed by super keyword) method first, then the child class method.
    Advantage of method overriding
    The main benefit of the method overriding is that the subclass can provide its own implementation to the same method as per requirement without making any changes in the superclass method. This technique is much when we want to subclass method to behave differently also with the same name.

    Rules of Method overriding in Dart
    The few rules of method overriding are given below. These points must be kept in mind while declaring the same method in subclass.

    The overriding method (the child class method) must be declared with the same configuration as the overridden method (the superclass method). The return type, list of arguments and its sequence must be the same as the parent class method.
    The overriding method must be defined in the subclass, not in the same class.
    The static and final method cannot be inherited in the subclass as they are accessible in their own class
    The constructor of the superclass cannot be inherited in a subclass.
    A method that cannot be inherited, then it cannot be overridden.
 * */
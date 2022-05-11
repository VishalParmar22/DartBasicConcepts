/**
 * Dart static Keyword
    The static keyword is used to declare the class variable and method. It generally manages the memory for the global data variable. The static variables and methods are the member of the class instead of an individual instance. The static variable or methods are the same for every instance of the class, so if we declare the data member as static then we can access it without creating an object. The class object is not required to access the static method or variable we can access it by putting the class name before the static variable or method. Using the class name, we can call the class method from the other classes.

    Dart Static Variable
    A variable which is declared using the static keyword inside the class is called Dart static keyword. These are the member of the class instead of a specific instance. The static variables are treated the same for all instances of the class; it means a single copy of the static variable is shared among all instances of classes. It allocates memory once and at the class loading and uses throughout the program.

    Point to Remember -

    The static variable is also identified as a class variable.
    Single copy of the static variable is shared among the instance of a class.
    It can be accessed using the class name. We don't need to create an object of that class they belong to.
    The static variables can be accessed directly in the static methods.
    Declaring Static Variable
    Dart provides the static keyword to declare the static variable. It is declared by using the static keyword followed by the variable name. The syntax is given below.

    Syntax:

    static [data_type] [variable_name];
    Accessing Static Variable
    We can access the static variable by using the class name itself instead of creating an object of it. The syntax is given below.

    Syntax:

    ClassName.staticVariableName;
    Dart Static Method
    The concept of the static method is also similar to static variable. The static methods are the member of the class instead of the class instance. The static methods can use only static variables and can invoke the static method of the class. We don't need to create an instance of class the access it. The static method is useful when we want to use it in other classes.

    Points to Remember

    The static methods are the member class instead of its object.
    Static methods are also identifies as class methods.
    We can access static methods using the class name.
    A particular copy of the static method is distributed among all the instances of a class.
    Declaring Static Methods
    We can declare the static method by using the static keyword followed by the method name with the return type. The syntax is given below.

    Syntax:

    static return_type method_name() {
    //statement(s)
    }
    Calling Static Method
    The static methods can be called by using the class name, which they belong to instead of creating an object.

    Syntax:

    className.staticMethod();
    Let's understand the following example.

    Example -
 * */
class Student{
  static  String branch; // Declaring static variable.
 String stdName;
 int num;

showStdInfo(){
  print("Student's name is: ${stdName}");
  print("Student's branch is: ${branch}");
  print("Student's number is: ${num}");

}
}
void main(){

  Student std1 = new Student(); //Creating instance of Student Class.
  Student std2 = new Student();
  //Assigning value of static variable using class name.

  Student.branch ="Android";

  std1.num=90;
  std1.stdName="Harsh";

  std1.showStdInfo();

  std2.num=80;
  std2.stdName="Akshay";

  std2.showStdInfo();
}

/**
 * Explanation:

    In the above code, we declared the class called Student,
    which has three fields including static variable stdBranch
    and one method showStdInfo().
    We created two instances of class Student and assigned values to
    the class variables.

    The static variable stdBranch accessed by using the class name and
    assigned value.
    Then, we called the showStdInfo() function by objects std1 and stu2.
    It printed details of the student as an output.
 * */
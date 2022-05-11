

import '../lib/lib_student.dart';
/**
 * Dart Metadata
    The Dart Metadata is used to specify the Dart program with additional information. It usually starts with @ symbol, followed by either a reference of the compile-time constant or a call to a constant constructor.

    Creating Metadata Annotation
    In Dart, we can define our own metadata annotations.

    Let's understand the following example -

    Example -
    Here's an example of defining a @student annotation that takes two arguments -

    library student;
    Class Student {
    final String studentName;
    final String rollno;
    const Student(this.studentName, this.code);
    }
    And, here is the following example we are using @student annotation.
 * */
@Student("studentName","rollNo")
void greetHii(){
  print("Hii! Welcome to Jurassic Part");
}
class Human{

  void run(){
    print ("human is running");
  }
}

class Man extends Human{
@override
  void run(){
    print("Boy is running");
  }
}

void main(){
  Man m = new Man();
  //this will call the child class version of run().
  m.run();
}
/**
 * In the above code, we have provided
 * the addition information to the both parent class and
 * child class functions.
 * */
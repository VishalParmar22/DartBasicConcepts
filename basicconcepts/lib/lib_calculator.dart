library calcSimple;
import 'dart:math';
/**
 * Creating Custom Libraries (User-defined Library)
    We can also use our own code as a library and import it when needed. This type of library is called a custom library. Below are the steps to create a custom library.

    Step - 1: Declaring a Library

    The library statement is used to create a library explicitly. The syntax is given below.

    Syntax:
    library library_name
    // library contents go here
    Step - 2: Connecting a Library

    We can connect a library in two ways.

    Within the same directory
    import 'library_name'
    From a different directory
    import 'dir/library_name'
    Let's understand the following example -

    Example - Custom Library
 * */
///Lib content.
///
 int add(int a,int b){
  print("inside add method of calcSimple lib:");
  return a+b;
 }

int multiplication(int a,int b){
  print("inside multiplication method of calcSimple lib:");
  return a*b;
}

int subtraction(int a,int b){
  print("inside subtraction method of calcSimple lib:");
  return a-b;
}

int modulus(int a,int b){
  print("inside modulus method of calcSimple lib:");
  return a%b;
}

int division(double a,double b){
  print("inside division method of calcSimple lib:");
return a~/b;
}
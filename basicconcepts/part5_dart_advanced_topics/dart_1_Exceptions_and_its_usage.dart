/**
 * Dart Exceptions
    Dart Exceptions are the run-time error. It is raised when the program gets execution. The program doesn't report the error at compile time when the program runs internally and if Dart compiler found something not appropriate. Then, it reports run-time error and the execution of program is terminated abnormally. This type of error is called Exceptions. For example - A given number is divided by the zero or we try to access the elements from the empty list.

    Dart supports the following types of built-in exceptions.

    Sr.	Exceptions	Description
    1.	DefferedLoadException	It is thrown when a deferred library fails to load.
    2.	FromatException	It is the exception which is thrown
    3.	IntegerDivisionByZeroException	It is thrown when number is divided by zero.
    4.	IOEException	It is the base class of input-output re   d exception.
    5.	Iso   SpawnException	It is thrown when an iso   d cannot be created.
    6.	Timeout	It is thrown when a schedule timeout happens while waiting for an async result.
    The main objective of the exception is to handle the run-time error and prevent the program from terminating abruptly. Every exception in the Dart is a subtype of the pre-defined class Exception. Dart provides the following techniques to handle the exceptions.

    The try/on/catch Blocks
    The try block is used to hold the block of code that might be thrown an exception. The on block is used to when we require specifying the exceptions. The catch block is used to when handler needs the exception object.

    If the try block finds the error, it throws to the catch block and the catch block has the code to handle the error. The try block must be followed by the exactly one block either on/ catch or one finally block.

    The syntax of exceptional handling is the given below.

    Syntax:
    try {
    // code that might throw an exception
    }
    on Exception1 {
    // Specify the exception
    }
    Catch Exception2 {
    // code for handling exception
    }
    One should remember the following points.

    We can handle the multiple exceptions using the more than one catch block.
    The on block and the catch block is mutually inclusive that means we can associate the both - the on block and catch block with the try block.
    In the following example, the variable x is divided by the y variable respectively. The code is thrown when it tries to divide by the zero. The on block consists of the code to handle the exception. Let's understand the following code.

    Example - Using the on block
 * */
/***
 * Custom Exceptions
    As we discussed above, each of the exception in dart is the subtype of the built-in class Exception. Dart provide the flexibility to create custom exception by extending the existing exception class. The syntax is given below.

    Syntax: Defining the Exception
    class Custom_exception_Name implements Exception {
    // can contain constructors, variables and methods
    }
    Let's understand the following code.

    Example -
 * */
class AmtException implements Exception{
  String expMsg()=> "Entered Amount should be greater than zero.";
}
void main(){
  int x=12;
  int y=0;
      int res;
  try{
    res=x~/y;
  }on UnsupportedError{
    print("Cannot divide by Zero");
  }catch(E) {
    //it returns the built-in exception handling re   d message to the occurring exception.


  print(E);
  }
  /**
   * Explanation:

      In the above code, we declared the three variable x, y and res in main () function. We written the suspect code in try block divided the x by the 0 that might be thrown an exception. The try block found the error the control transferred to the on block that has the code to handle the error. By using this, the program did not stop its execution.

      Let's understand the following example using the catch block.

      Example - Using the catch Block
   * */
  try{
    res=x~/y;
  }catch(E) {
    //it returns the built-in exception handling re   d message to the occurring exception.


    print(E);
  }
  /**
   * Now look at the example of on…catch block together

      Example 3: on…catch block
   * */
  try{res=x~/y;}
      on UnsupportedError catch(E){
    print(E);
      }

      /**
       * The Finally Block
          The finally block always executes whether there is exception occur or not. It executes unconditionally after the try/on/catch.

          The syntax of finally block is given below.

          Syntax -
          try {
          // code that may be throw an exception
          }
          on Exception1 {
          // exception handling code or specifying the exception
          }
          catch Exception2 {
          //  code for exception handling
          }
          finally {
          // code that should always execute; whether exception or not.
          }
          Let's understand the following example of finally block.

          Example -
       * */

  try{
    res=x~/y;
  }on UnsupportedError {
    print("Can not divide by Zero ");
  }finally {
    print("Finally block always executed");
  }

  /**
   * Throwing an Exception
      We can raise an exception explicitly or forcefully. The explicitly raised exception should be handled to avoid the program from existing sharply. The syntax is given below.

      Syntax:
      throw new Exception_name()
      Let's understand the following example.

      Example -
   * */

  try{
    checkMarks(-10);
  }catch(e){
    print("The marks can not be negative");
  }
try{
    withdrawAmount(-1);
}catch(E){
    print(AmtException().expMsg());
}finally{
    print("Ending requested operation......");
}
/***
 * Explanation:
    In the above example, we created a custom exception, AmtException.
    The code raised the exception if the entered amount is not within
    the excepted range and we enclosed the function invocation in
    the try…catch block.
 * */

}

void withdrawAmount(int amt){
  if(amt<=0){
    throw new AmtException();
  }

}
void checkMarks(int marks){
  if(marks<=0){
    throw new FormatException(); //raising exception externally.
  }
}
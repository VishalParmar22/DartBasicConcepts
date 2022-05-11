import 'dart:io';

/**
 * Dart Async
    Dart Async is related to asynchronous programming.
    It executes the asynchronous operation in a thread.
    It ensures that the critical functions to be executed until completion.
    The asynchronous operation is executed, separately the main application
    thread. In Dart, one operation cannot interrupt the other operation;
    it means one operation can execute at a time no other part of
    the program can avert it. Let's understand the following example -

    Example -
 * */
void main() async {
  print("Enter your favorite car:");

  //prompt for user input.
  String car = stdin.readLineSync();
  //this ia a synchronous method that reads user input.

  print("The car is ${car}");
  print("End of example 1");
  /**
   * Explanation:
      In the above code, we used the readLineSync(),
      which is synchronous method. It means;
      the execution of all instructions that follow
      the readLineSync() method call will be blocked until
      the readLineSync() method doesn't complete its execution.

      The stdin.readLineSync () executes nothing until it gets
      the input from the user. It waits for the user input for
      further execution.
   * */

  /**
   * Difference between Asynchronous and Synchronous
      Let's understand the difference between synchronous and asynchronous.

      In computer science, if we say a particular program is synchronous,
      that means it waits for an event to execute further.
      This approach is driven with a demerit, if a part of the code
      takes much time to execute, the succeeding blocks through an
      unrelated block will be blocked from executing.

      This is the main problem of the synchronous approach.
      A part of the program may require executing before the current part,
      but the synchronous approach doesn't allow it.

      This is not suitable for the webservers, where request must be
      independent of the others. It means, the webserver does not wait
      to finish the execution of the current request, it responds
      to the request from the other users.

      The web server should accept the request from the other user
      before executing the previous requests.

      This approach is called asynchronous programming.
      The asynchronous programming generally focuses on no waiting
      or non-blocking programming model. The dart: async is facilitated
      to implement the asynchronous programming block in a Dart script.

      Example -
      We create a file with the few names and save this file as names.txt
      and write a program to read this file without delaying the other
      part of the code.

      1, Vishal
      2, Umang
      3, Harsh
      4, Akshay
      Consider the following code.
   * */

File f = new File("D:\\android\\WORKSPACE\\DartBasicConcepts\\basicconcepts\\lib\\name.txt");
 Future<String> fs=f.readAsString();
 //returns a future object, it is an async method.
  fs.then((value) => print(value));
  //once file is read, call back method is invoked.

  print("End of example 2");

  /**
   * Dart Future
      The Dart Future is defined as getting a result sometime in the future.
      The Future object uses to facilitate asynchronous programming.
      Future objects are a tool to denote values returned by
      an expression whose execution will complete at a later
      point in time (In Future). In order to work with the future,
      we can use either async and await or the Future API.

      Dart async and await
      The async and await keywords are allowed to implement asynchronous
      programming without using the Future API.
      The async keyword is necessary to run function asynchronously;
      we need to add async after the function name.
      The syntax is given below:

      Syntax:
      func_name() async {
      //function body
      }
      When an async function is invoked, the Future object instantly
      returns and that indicates the async function will execute later.
      Once the body of the async function is executed, the function call
      returned the Future object. The function call will be completed with
      its result.


      Dart await Keyword
      The await keyword is also used to execute function asynchronously.
      It suspends the currently running function until the result is ready.
      When it returns the result, then it continues on to the next line of
      code. The await keyword can only be used with async functions.
      The syntax is given below.

      Syntax:
      await e;
      Here, e is an asynchronous expression, and it is expected to evaluate
      to a Future. The await expression evaluates e, and then suspends the
      currently running function until the result is ready.

      Let's understand the following example -

      Example - 3
   * */
  await hii(); //here we made use of await keyword.
  print("Task 3 Complete");

  print("End of main");
  /***
   * Explanation:
      Here, we have declared the main() function asynchronous using the async keyword because we call the hii() method asynchronously. Then, we used await modifier to call hii() that executed asynchronously.

      Note - The caller function and called function must use the async keyword to use await.
   * */
}

 hii()async{
  print("Hii! Akshay");
}
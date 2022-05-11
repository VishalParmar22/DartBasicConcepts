import 'dart:core';
import 'dart:core';
import 'dart:math';

/**
 * Dart Generators
    Dart Generator is a unique function that allows us to produce a sequence of values. Generators return values on demand; it means the value is generated when we try to iterate over the iterators. Dart provides built-in support for two types of generator functions.

    Synchronous Generators
    Asynchronous Generators
    Synchronous Generator
    It returns an iterable object which carries value synchronously. The yield keyword is used along with marking the synchronous generator function body as sync* to generator values.

    Let's understand the following example of a synchronous generator.

    Example -
 * */
//sync* function returns an iterable.

Iterable<int> oddNum(int num)sync*{
  int k=num;
  while(k>=0){
    if (k%2==1){
      //'yield' statement.
        yield k;
    }
    k--;
  }
}
//async* function returns stream object.
Stream<int> asyncNaturalsTo(int n) async*{
  int k=0;
  while(k<n){
    //'yield' statement.
    yield k++;
  }
  k--;
}


void main(){
  print("Dart Synchronous Generator Example:");
  oddNum(10).forEach((element) {
    print(element);
  });

/**
 * Explanation:
    In the above program, we declared an oddNumber(10) function with the foreach loop without its body. The foreach loop will iterate the function. Now, we created oddNumber(10) function as synchronous generator function.

    In the function body, we initialized a new variable k, which assigns the argument n. Then, we applied while loop to iterate the function, and the loop body is iterated until the value of k is less than or equal to 0.

    We did modulus operation on k to find the odd numbers from the generators. We used the yield statement, which suspends the function's execution and returns the value at a time. It will return the value of each execution of the generator function. When the while loop's condition becomes false, then the loop terminated and prints the odd numbers.

    Asynchronous Generators
    It returns a stream object which carries value asynchronously. The yield keyword is used along with marking the asynchronous generator function body as async* to generator values.

    Let's understand the following example -

    Example -
 * */
  print("Dart Asynchronous Generator Example:");
asyncNaturalsTo(10).forEach((element) {
  print(element);
});

/**
 * Explanation:
    The above code generated values asynchronously. The asyncNaturalsTo(int num) function returns a stream objects in each execution of function body. Here, the yield keyword behaved the same as the previous example; it stopped the execution of the function, returned the value, and resumed the execution for the next iteration. It will happen again and again until the function body is terminated.

    Let's understand the following concepts related to the generator function.

    The yield Keyword
    The yield returns the single value to the sequence at a time but does not stop the execution of the generator function completely. It returns a value for each execution of the generator function.

    The sync* Keyword -
    The sync* keyword is used to declare the synchronize generator function. It returns the value when we try to iterator the value not when it was created. Let's have a look at the following example -

    Example -
 * */

  print("Creating iterator...:");
  Iterable <int> n = getNumbers(4); // here we are creating iterator.
  print("iteration Starts...");
  for (int i in n){
    print("${i}"); //iterate over the iterator.

  }
  print("end of main function");

  /**
   * Explanation -
      The above generator function generated the value when we iterate over the iterator.

      The async* Keyword
      The async keyword is used to declare the asynchronous generators.
      It returns the stream object. Let's understand the following example -

      Example -
   * */
  print("creating iterator");
  Stream<int> n1 = getNum1(4);
  print("start to listen");
  n1.listen((event) {
    print('${event}');
  });
  print("end of the main function");

}
Stream<int> getNum1(int n) async*{
  //declaring asynchronous generator funcation.
  print("waiting inside generator a 3 second :)");
  await new Future.delayed(new Duration(seconds: 3)); //sleep 3sec.
  print("started generating values...");
  for(int i=0;i<n;i++){
    await new
        Future.delayed(new Duration(seconds: 1)); //sleep 1 sec.
    yield i;
  }
  print("ended generating values....");
}
Iterable<int> getNumbers(int n) sync*{ //define the generator synchronously.
  print("generator started:");
  for(int i=0;i<n;i++){
    yield i;
  }
  print("generator function ended");
}
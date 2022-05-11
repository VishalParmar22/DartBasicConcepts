/**
 * Dart Loops
    Dart Loop is used to run a block of code repetitively for a given number of times or until matches the specified condition. Loops are essential tools for any programming language. It is used to iterate the Dart iterable such as list, map, etc. and perform operations for multiple times. A loop can have two parts - a body of the loop and control statements. The main objective of the loop is to run the code multiple times. Dart supports the following type of loops.

    Dart for loop
    Dart for…in loop
    Dart while loop
    Dart do-while loop
    We describe a brief introduction to the dart loops as follows.

    Dart for loop
    The for loop is used when we know how many times a block of code will execute. It is quite same as the C for loop. The syntax is given below.

    Syntax -

    for(Initialization; condition; incr/decr) {
    // loop body
    }
    The loop iteration starts from the initial value. It executes only once.

    The condition is a test-expression and it is checked after each iteration. The for loop will execute until false returned by the given condition.

    The incr/decr is the counter to increase or decrease the value.

    Let's understand the following example.

    Example -
 * */

void main(){

  int num=10;
  for(num;num<=10;num++){  //do use of for loop to print 1-10 number.
    print(num); //to print the number
  }

  /**
   * Dart for… in Loop
      The for…in loop is slightly different from the for loop. It only takes dart object or expression as an iterator and iterates the element one at a time. The value of the element is bound to var, which is and valid and available for the loop body. The loop will execute until no element left in the iterator. The syntax is given below.

      Syntax -

      for (var in expression) {
      //statement(s)
      }
      Example : We need to declare the iterator variable to get the element from the iterator. here that is : i
   * */
var list1 = [100,200,300,400,500,600];
  for (var i in list1){ //for..in loop to print list element.
    print(i); //to print the number.
  }

  /**
   * Dart while loop
      The while loop executes a block of code until the given expression is false. It is more beneficial when we don't know the number of execution. The syntax is given below.

      Syntax:

      while(condition) {
      // loop body
      }
      Let's understand the following example.

      Example -
   * */

  var z=1;
  var maxnum =10;
  while(z<maxnum){
    //it will print untill the expression return false
    print(z);
    z=z+1; //increase val


    /***
     * Dart do…while Loop
        The do…while loop is similar to the while loop but only difference is that, it executes the loop statement and then check the given condition. The syntax is given below.

        Syntax -

        do {
        // loop body
        } while(condition);
        Example -
     * */
do{
  print("the value is :${z}");
  z=z+1;

}while(z<maxnum);

/***
 * Selection of the loop
    The selection of a loop is a little bit difficult task to the programmer. It is hard to decide which loop will be more suitable to perform a specific task. We can determine the loop based on the following points.

    Analyze the problem and observe that whether you need a pre-test loop or post-test loop. A pre-test loop is that, the condition is tested before entering the loop. In the post-test loop, the condition is tested after entering the loop.
    If we require a pre-test loop, then select the while or for loop.
    If we require a post-test loop, then select the do-while loop.
 * */
  }

  /***
   * Dart for Loop
      Dart for loop is used when we familiar with the number of execution of a block of code. It is similar to the C, C++, and Java for loop. It takes an initial variable to start the loop execution. It executes a block of code until it matches the specified condition. When the loop is executed, the value of iterator is updated each iteration, and then the test-expression is evaluated. This process will continue until the given test-expression is true. Once the test-expression is false, the for loop is terminated.

      Dart for Loop Flowchart
      Dart for Loop
      Syntax:

      for(initialization, condition, incr/decr)
      The initialization is used as an initial value in a loop, and it executes only once.
      A condition or test-expression returns Boolean values - True or False. The for loop will execute until the condition is true.
      Once the condition evaluates false, the loop is ended.
      The incr/decr is counter to increase or decrease the variable.
      Let's understand the following example.

      Example 1:
   * */
  for(int i=0;i<=30;i++){
    print(i);
  }

  /***
   * Explanation:

      In the above example, we have initialized an integer variable i as initial value. We have assigned 1 to the variable and in the conditional part, we have defined the loop executed until value of i is smaller or equal to 10. Each time the loop will be iterated it will be increased value by 1.

      In the first iteration of a loop, the value of i is incremented by 1 and it will become 2. Now the condition is rechecked if condition is true, then the loop will be moved on next iteration. The iteration of the loop will continued until the value becomes 10.

      We can skip the initial value from the for loop. Consider the following example.
   * */
var i=1;
  ///for loop iteration skipping the initial value from for loop.

  for(;i<=10;i++){
    print(i);
  }

  /***
   * It will give the same output as previous code.

      Also, we can skip the condition, increment, or decrement by using a semicolon.

      Nested for Loop
      The nested for loop means, "the for loop inside another for loop". A for inside another loop is called an inner loop and outside loop is called the outer loop. In each iteration of the outer loop, the inner loop will iterate to entire its cycle. Let's understand the following example of nested for loop.

      Example -
   * */

  int i1,j1;
  int tbl_no=2;
  int max_no=10;
for(i1=1;i1<tbl_no;i1++){ //outer for loop 
  for(j1=1;j1<max_no;j1++){
    //inner for loop.
    print("${i1}*${j1}:= ${i1*j1}");
    //print("\n"); //blank between tables
  }
}
/**
 * Let's understand the working of nested for loop.

    Example - 2 Understand the inner loop cycle
 * */

  for (int k1=0;k1<=5;i++){
    print("outer loop iteration: ${i}");

    for(int l1=1;l1<=k1;++l1){
      print("k1 = ${k1} l1=${l1}");
    }
  }

  /***
   * Observe the above code, we have defined the working of the inner loop. The inner loop will be repeated for each iteration of the outer loop.
   * */

  /***
   * Dart for..in Loop
      The for..in loop is similar to for loop but different in its syntax. It iterates through an object's properties. The Dart for..in loop accepts an expression as iterator and iterates through the elements one at a time in sequence. The variable var holds the values of the iteration. The for…in will execute until elements remain in iterators.

      Dart For In Loop Flow Diagram
      Dart for..in Loop
      The syntax is given below.

      Syntax:

      for (var in expression) {
      //statement(s)
      }
      Let's understand the following example.

      Example -
   * */

  var  list2= [10,20,40,50,60,60];

  print("dart for..in loop example");

  for(var i in list2){
    print(i);
  }

  /***
   * Explanation:

      In the above program, we have iterator list2 and variable i. In the first iteration of the loop, the first element of the list assigned to the variable i. This process happened again, and the second element of the list assigned to i. It will be continued until there is no element left in the list. It printed the all element of the list to the console.

      The for..in loop is suitable to iterate over the Dart object such as list, map, and set, where for loop is more effective to iterate along with the specified condition.

      Let's understand another example.

      Example -
   *
   * */

  var lis3= [90,80,70,60,50];
  int sum =0;

  print("dart for..in loop example");

  for(var i in lis3){
    //each element of iterator and added to sum variable.
    sum=i+sum;
  }
  print("The sum is : ${sum}");

  /**
   * Explanation:

      In the above example, we have declared a variable sum with value 0. We have a for..in loop with the iterator list, and each element of list added to the sum variable after each iteration.

      In the first iteration, the value of the sum is equal to 10. In the next iteration, the value of sum became 30 after added 20 to it. After complete the iteration, it returned the sum of all elements of the list.
   * */

  /***
   * Dart While Loop
      The while loop is used when the number of execution of a block of code is not known. It will execute as long as the condition is true. It initially checks the given condition then executes the statements that are inside the while loop. The while loop is mostly used to create an infinite loop.

      Dart While Loop Flowchart
      Dart While Loop
      The syntax is given below.

      Syntax:

      while(condition){
      //statement(s);
      // Increment (++) or Decrement (--) Operation;
      }
      Here, if the condition returns the true, then the loop body is executed and condition is evaluated again. If the condition returns false then the loop is terminated and the control transfer to out of the loop.

      Let's understand the following example.

      Example - 1
   * */

  int m=1;
  while(m<=5){
    print(m);
    ++m;



  }
  /**Explanation:

      Above example, we initialized the integer variable i with value 1 respectively, in the next statement we have defined while loop, that check the condition that, the value of i is smaller or greater than 5 in each iteration.

      If the condition returns true then while loop body is executed and the condition is rechecked. It will be continued until the condition is false.

      After that, the value of i is 6 that violated the condition; then, the loop is terminated. It printed the sequence of 1 to 5 on the console.

    **/
}
void main(){
 /** Infinite While Loop
  When the while loop executes an endless time is called infinite while loop.
     Let's have a look at the infinite loop example.

  Example -*/

  int n=1;
  while(n<=5){
    print(n);
    --n;
  }

  /**
   * We have made only one change in above code.
   * We reduced the value of i for each iteration of while loop.
   * So it will never match with the specified condition and became an
   * infinite loop.

      Example - 2
   * */

/*  while(true){
    print("Be happy till the end of your life");
  }*/

  /***
   * It will print the given statement for infinite time. When we declare Boolean true in while loop, then it automatically became an infinite loop.

      Logical Operator while loop
      Sometimes we need to check the multiple conditions in a while loop. We can do this by using logical operators such as (||, &&, and !). Let's see the following concepts.

      while (n1<5 && n2>10) - It will execute if both conditions are true.
      while (n1<5 || n2>10) - It will execute if one of the condition is true.
      while(!n1 = 10) - It will execute if n1 is not equal to 10.
      Consider the following example.

      Example -
    */


  int n1=1;
  int  n2=1;
  while(n1 <=4 && n2<=3){
    print("n1: ${n1},n2:${n2}");
    n1++;
    n2++;
  }

  /**
   * Explanation:

      In the above code, we have assigned two variables n1 and n2 with the value 1 in both. Now we checked multiple conditions in the while loop where n1 is less than or equal to 4 and n2 is less than or equal to 3.

      In the first iteration, it checked both values and printed the result. At one point, when the value of n1 and n2 is equal to 4. The n1 satisfied the condition one, but n2 did not meet the second condition, so the loop is terminated and printed the result to the screen.
   * */

  /***
   * Dart do while Loop
      Dart do while loop executes a block of the statement first and then checks the condition. If the condition returns true, then the loop continues its iteration. It is similar to Dart while loop but the only difference is, in the do-while loop a block of statements inside the body of loop will execute at least once.

      Dart do-while loop Flowchart
      Dart do while Loop
      The syntax is given below.

      Syntax:

      do {
      // loop body
      }while(condition);
      Here, the block of statement which is inside the do while body will executes first then evaluates the given condition.

      A condition is evaluated either Boolean true or false. If it returns true, then the statements are executed again, and the condition is rechecked. If it returns false, the loop is ended, and control transfers to out of the loop.

      Let's understand the following example.

      Example:
   * */

  int b = 10;
  print ("Dart  do-while loop example");
  do{
    print(b);
    b++;

  }while(b<=20);

  print("the loop is terminated");

  /***
   *Explanation -

      In the above code, we have initialized the variable i with value 10. In do-while loop body, we defined two statements.

      In the first iteration, the statement printed the initial value of i and increased by 1. Now the value of i becomes 11 and then we checked the condition.

      The condition is, the value of i must be less than or greater than the 20. It matched with the condition and loop moved to the next iteration. It printed the series of numbers 10 to 20 until the condition returned false.
   *
   */


}
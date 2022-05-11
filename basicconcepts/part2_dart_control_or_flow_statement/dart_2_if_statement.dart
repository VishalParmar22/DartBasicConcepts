/***
 *Dart if Statements
    If statement allows us to a block of code execute when the given condition returns true. In Dart programming, we have a scenario where we want to execute a block of code when it satisfies the given condition. The condition evaluates Boolean values TRUE or FALSE and the decision is made based on these Boolean values.

    Dart If Statement Flow Diagram
    The syntax of if statement is given below.

    Syntax -

    If (condition) {
    //statement(s)
    }
    The given condition is if statement will evaluate either TRUE or FALSE, if it evaluates true then statement inside if body is executed, if it evaluates false then statement outside if block is executed.

    Let's understand the following example.

    Example - 1
 *
 *
 * */

void main(){

  //define a variable which hold numeric value

  var n =56;
  if(n<76){
    print("The number: ${n} is smaller then 76");

  }

  /**
   * Explanation -

      In the above program, we declared an integer variable n. We specified the condition in if statement. Is the given number is smaller than 40 or not? The if statement evaluated the true, it executed the if body and printed the result.

      Example - 2
   * */
var age=16;
  if (age>18){
    print("You'r eligible for voting");
  }
  print("you'r not eligible for voting");
/**
 * In the above program, we can see that the if condition evaluated the false then execution skipped the if body and executed the outside statement of if block.

 * */
}
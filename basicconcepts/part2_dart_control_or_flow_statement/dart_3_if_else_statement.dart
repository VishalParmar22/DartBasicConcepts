/**
 * Dart if-else Statement
    In Dart, if-block is executed when the given condition is true. If the given condition is false, else-block is executed. The else block is associated with the if-block.

    Dart if…else Statement Flow Diagram
    Dart if-else Statement
    Syntax:

    if(condition) {
    // statement(s);
    } else {
    // statement(s);
    }
    Here, if -else statement is used for either types of result TRUE or False. If the given condition evaluates true, then if body is executed and if the given condition evaluates false; then, the else body is executed.

    Let's understand the following example.

    Example -
 * */

void main(){

  var a=30;
  var b= 56;

  print("if=else statement use:");
  if(a>b){
    print("A is greater than b");
  }else{
    print("B is greater than a");
  }

  /**
   * Explanation -

      In the above code, we have two variables which stored integer value. The given condition evaluated false then it printed the else-block.

      Example -2 Write a program to find the given number is even or odd.
   * */

  var num=544;
  print("if-else example:");
  if(num%2==0){
    print("The given number is even");
  }else{
    print("The given number is odd");

  }

  /**
   * Explanation -

      In the above example, we have an integer variable num which stored 20 and we used the if-else statement to check whether a given number is even of odd. The given condition evaluated true because modulus of 20 is equal to 0 then it printed the given number is even on the screen.
   * */
}
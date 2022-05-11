/**
 * Dart if else-if Statement
    Dart if else-if statement provides the facility to check a set of test expressions and execute the different statements. It is used when we have to make a decision from more than two possibilities.

    Dart if else if Statement Flow Diagram
    Dart if else-if Statement
    Syntax
    if (condition1) {
    // statement(s)
    }
    else if(condition2) {
    // statement(s)
    }
    else if (conditionN) {
    // statement(s)
    }
    .
    .
    else {
    // statement(s)
    }
    Here, this type of structure is also known as the else….if ladder. The condition is evaluated from top to bottom. Whenever it found the true condition, statement associated with that condition is executed. When all the given condition evaluates false, then the else block is executed.

    Let's understand the following example.

    Example - Write a program to print the result based on the student's marks.
 * */

void main(){

  var markes = 75;
  if (markes>85){
    print("Excellent");
  }else if(markes>75){
    print("Very Good");

  }else if(markes>65){
    print("Good");

  }
  else{
    print("Average");
  }

/***
 * Explanation -

    The above program prints the result based on the marks scored in the test. We have used if else if to print the result. We have initialized the marks variable with the integer value 74. We have checked the multiple conditions in the program.

    The marks will be checked with the first condition since it is false, and then it moved to check the second condition.

    It compared with the second condition and found true, then it printed the output on the screen.

    This process will continue until all expression is evaluated; otherwise the control will transfer out of the else if ladder and default statement is printed.

    You should modify the above value and notice the result.

    Nested If else Statement
    Dart nested if else statement means one if-else inside another one. It is beneficial when we need a series of decisions. Let's understand the following example.

    Example - Write a program to find the greatest number.

 * */
var a=10;
  var b=20;
  var c=30;

  if(a>b){
    if(a>c){
      print("A is greater");
    }else
      {
        print("B is greater");
      }
  }else if(b>c){
    print("B is greater");
  }else{
    print("C is greater");

  }
  /***
   * In the above program, we have declared three variables a, b, and c with the values 10, 20, and 30. In the outer if-else we provided the condition it checks if a is greater than b. If the condition is true then it will execute the inner block otherwise the outer block will be executed.

      In the inner block we have another condition that checks if variable a is greater than c. If the condition is evaluated true then the inner block will be executed.

      Our program returned the false in first condition, and then it skipped the inner block check another condition. If satisfied the condition and printed the output on the screen.
   * */

}
/**
 *Dart Switch Case Statement
    Dart Switch case statement is used to avoid the long chain of the if-else statement. It is the simplified form of nested if-else statement. The value of the variable compares with the multiple cases, and if a match is found, then it executes a block of statement associated with that particular case.

    The assigned value is compared with each case until the match is found. Once the match found, it identifies the block of code to be executed.

    Dart Switch Case Statement Flowchart
    Dart Switch Case Statement
    The syntax is given below.

    Syntax:
    switch( expression )
    {
    case value-1:{

    //statement(s)
    Block-1;
    }
    break;
    case value-2:{
    //statement(s)
    Block-2;
    }
    break;
    case value-N:{
    //statement(s)
    Block-N;
    }
    break;
    default:    {
    //statement(s);
    }
    }
    Here, the expression can be integer expression or character expression. The value 1, 2, n represents the case labels and they are used to identify each case particularly. Each label must be ended with the colon(:).

    The labels must be unique because same name label will create the problem while running the program.

    A block is associated with the case label. Block is nothing but a group of multiple statements for a particular case.

    Once the switch expression is evaluated, the expression value is compared with all cases which we have defined inside the switch case. Suppose the value of the expression is 2, then compared with each case until it found the label 2 in the program.

    The break statement is essential to use at the end of each case. If we do not put the break statement, then even the specific case is found, it will execute all the cases until the program end is reached. The break keyword is used to declare the break statement.

    Sometimes the value of the expression is not matched with any of the cases; then the default case will be executed. It is optional to write in the program.

    Let's understand the following example.
 * */

void main(){

  int n=3;
  switch(n){
    case 1:
      print("Value is 1");
      break;

    case 2:
      print("value is 2");
      break;

    case 3:
      print("value is 3");
      break;

    case 4:
      print("values is 4");
      break;

    default:
      print("Out of Range");


  }
  /**
   * Explanation -

      In the above program, we have initialized the variable n with value 3. We constructed the switch case with the expression, which is used to compare the each case with the variable n. Since the value is 3 then it will execute the case-label 3. If found successfully case-label 3, and printed the result on the screen.

      Let's have a look at another scenario.

      Example -
   * */

  int roll_num =90014;
  switch(roll_num){
    case 90009:
    print("My name is Vishal");
    break;

    case 90010:
      print("My name is harsh");
      break;

    case 90011:
      print("My name is umang");
      break;

    default:
      print("Rol number is not found.");
  }

  /**
   * Explanation -

      In the above program, we have initialized the variable Roll_num with the value of 90014. The switch test-expression checked all cases which are declared inside the switch statement. The test-expression did not found the match in cases; then it printed the default case statement.

      Benefit of Switch case
      As we discussed above, the switch case is a simplified form of if nested if-else statement. The problem with the nested if-else, it creates complexity in the program when the multiple paths increase. The switch case reduces the complexity of the program. It enhances the readability of the program.
   * */

}
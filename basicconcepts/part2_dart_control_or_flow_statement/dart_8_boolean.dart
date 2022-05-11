/**
 *Dart Boolean
    Dart Boolean data type is used to check whether a given statement true or false. The true and false are the two values of the Boolean type, which are both compile-time constants. In Dart, The numeric value 1 or 0 cannot be used to specify the true or false. The bool keyword is used to represent the Boolean value. The syntax of declaring the Boolean variable is given below.

    Syntax -

    bool var_name = true;
    OR
    bool var_name = false;
    Consider the following example.

    Example -
 *
 * */

void main(){
  bool check;

  check=20>10;
  print("The statement is = ${check}");

  /**
   * Explaination -

      We have declared the bool variable check that will use to verify the given expression. The expression 20>12 returned the true and we printed the result.
   * */
}
/**
 * The main() function
    The main() function is the top-level function of the Dart. It is the most important and vital function of the Dart programming language. The execution of the programming starts with the main() function. The main() function can be used only once in a program.

    It is responsible for all types of execution such as user-defined statements, functions, and libraries function. The program begins with main() function and we declares variable, and user defined executable statements inside it. The main function returns void and can have an optional List<String> parameter as arguments. The general syntax of the main() function is given below.

    Syntax:

    void main() {
    // main function body
    }
    Example - 1
 *
 * */

void main(){
  print("This is main function");

  /**
   * Dart Return Value
      Sometimes the function returns a value after evaluating the function statements to the point where it is called from. The return statement holds the result of the function, and it is transferred to the function call. The return keyword is used to represent the return statement. If the return statement not specified, then the function returns null. The return statement is optional to specify in function, but there can be only one return statement in a function.

      Syntax:

      return <expression/value>;
      Dart value with Return Value
      Below is given syntax of return value.

      Syntax:

      return_type function_name()
      {
      //statement(s);
      return value;
      }
      Here is the description of the above syntax.

      function_name - It represents the function name, which can be any valid identifier.

      return type - It denotes the return type of the function. It can be any valid data type. The return must be matched with the return type of the function.

      Let's understand the following example -

      Example -
   * */

  int zest(int w,int x){
    int d=w*x;
    return d;
  }
  print("the multiplication of teo numbers : ${zest(10, 30)}");
}
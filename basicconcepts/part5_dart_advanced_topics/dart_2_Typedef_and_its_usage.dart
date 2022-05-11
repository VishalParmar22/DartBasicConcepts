/**
 *Dart Typedef
    In Dart, the typedef is used to generate an alias for function type that we can use it as type annotation for declaring variables and return types of that function type. An alias of function type can be used as type annotation in variable declaration or function return type. A typedef stores the type information when we assigned the function type to a variable.

    Declaring a typedef
    A typedef keyword is used to create an alias for function that will be the same as the actual functions. We can also create a function prototype with a list of parameters. The syntax is given below.

    Syntax:
    typedef function_name(parameters)
    Example -
    Let's create an alias of MultiOperation(int n1, int n2) that contains two parameters of the integer type.

    typedef MultiOperation(int n1, int n2);   // function signature
    Assigning typedef Variable
    We can assign any function with the same parameter to the typedef variable. The syntax is given below.

    Syntax:
    type_def var_name = function_name;
    Let's understand the following example, where we define the two functions with the same signature as the MultiOperation.

    Sum(int n1, int n2) {
    print("Sum of the two number:${n1+n2}");
    }
    Sub(int n1, intn2 ) {
    print("Subtraction of the two number:${n1-n2}");

    }
    Calling Function with typedef
    We can invoke function by passing the same parameter by using the typdef variable. The syntax is given below.

    Syntax:
    var_name(parameter);
    Example:
    MultiOperation mp;
    mp = Sum;
    mp(20,10);
    mp = Sub;
    mp(30,20);
    The mp is a typedef variable, which can be used to refer any method that accepts two integer parameters. The function reference can be switched at runtime by using the typedefs.

    Complete Program using typedef
    Let's have a look at the following example.
 * */

typedef MultiOperation(int n1,int n2); //type def funnction.

sum(int n1,int n2){
  print("The sum of two numbers:${n1+n2}");
}

sub(int n1,int n2){
  print("The subtraction of the two number: ${n1-n2}");
}
/**
 *  Typedef as Parameter
    We can use the typedef method as a parameter.
    In the following example, we are creating an additional function
    to the above program NumericOperaion(int n1, int n2, MultiOperation mp) with the two integer variables and typedef ManyOperation mp as its parameter.

    Example -
 * */

numericOperation(int n1, int n2, MultiOperation mp){
  print("inside Operation:");
  mp(10,30);
}

void main(){
  MultiOperation mp ;
  print("Typedef example:");
  mp =sum;
  mp(20, 10);
  mp=sub;
  mp(30,20);
  /**
   * Explanation:
      In the above code, we created the alias of the MultiOperation()
      function using the typedef keyword. We defined two more
      functions Sum() and Sub(), which have same signature as the
      typedef function.

      Then, we assigned the typedef variable mp that referred to
      both functions Sum() function and Sub() function. Now,
      we invoked the function by passing the required argument,
      and it printed the result to the screen.

   * */

  numericOperation(10, 20, sum);
  numericOperation(10, 20, sub);
/**
 * In the above code, we didn't need to create a typedef variable to the refer to each method; we just called the NumericOperation() function by passing the required value and typedef variable mp.
 * It performed the given operations and printed the result.
 * */
}

/**
 * Dart Debugging
    Debugging is the process of identifying and eliminating of existing
    and possible errors in the Dart program that can cause ambiguity and
    uncertainty during the program execution. Debugging is essential to
    detect and fixes the bugs to run the program smoothly or
    without interruption.

    Debugging becomes easier if you are using the IDE for the Dart program.
    Here we are assuming that you have installed the most common and
    suitable IDE Android Studio in your system. The WebStorm Editor allows us
    to step by step debugging.

    What are Breakpoints?
    Breakpoints are the checkpoint of the program to break the program at
    a specific point to checks its behavior.
    We can add the breakpoints in the program to check
    the bugs within that specific area.

    How to add Breakpoints in Android Studio?
    We can add the breakpoints in Android Studio by
    simply click on a line number in the left bar to add a breakpoint.
    After adding the breakpoints, run the program in the debug mode,
    it will give the Debugger window where we can verify that how
    the breakpoint works. We can also change the values and see
    the difference in the watches window.
 * */
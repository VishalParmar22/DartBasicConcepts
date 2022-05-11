
/**
 *Dart Anonymous Function
    We have learned the Dart Function, which is defined by using a user-define name. Dart also provides the facility to specify a nameless function or function without a name. This type of function is known as an anonymous function, lambda, or closure. An anonymous function behaves the same as a regular function, but it does not have a name with it. It can have zero or any number of arguments with an optional type annotation.

    We can assign the anonymous function to a variable, and then we can retrieve or access the value of the closure based on our requirement.

    An Anonymous function contains an independent block of the code, and that can be passed around in our code as function parameters. The syntax is as follows.

    Syntax:
    (parameter_list) {
    statement(s)
    }
    Let's consider the following example.

    Example -
 * */
bool topVar =true;
void main(){
  var list =["Vishal","Umang","Harsh","Akshay"];

  print("Example of anonymous function");
  list.forEach((element) {
    print("${list.indexOf(element)}:$element");
  });

  /***
   *
   * Explanation:
      In the above example, we defined an anonymous function with an untype argument item. The function called for each item in the list and printed the strings with its specified index value.

      If the function consists of one statement, then we can also write the above code in the following way.

      list.forEach(
      (item) => print("${list.indexOf(item)}: $item"));
      It is equivalent to the previous code. You can verify it by paste in your dart pad and run.

      Lexical Scope
      As we have discussed in the Dart introduction, it is a lexical scope language which means the variable's scope is decided at compile-time. The scope of the variable is determined when code is compiled. The variable behaves differently if they defined in the different curly braces. Let's understand the following example.

      Example -
   * */
 var insideMain= true;
  //Defining Nested Function

  void myFunction(){
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction =true;
      //this function is using all variable of the previous function.
      assert(topVar);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);

    }
  }
  myFunction();
/***
 * Observe the above code, the nestedFunction() used the variables of the previous function.

    Lexical Closure
    A lexical closure is referred to as a closure, is a function object that has access to variables in its lexical scope even when the function is used of its original scope. In other words, it provides access to an outer function's scope from inner function. Let's understand the following example.

    Example -
 * */

  String init() {
    var name = "Vishal Parmar"; //name is a local variable created by init.


    void display_Name() {
      //display name is the inner function a closure.
      print(name);
    }
    display_Name();
    return "";
  }
  init();

  /**
   * Explanation:
      In the above code, the initial() function created a local variable called name and function called disp_Name(). The disp_Name() function defined inside the initial() function and hence disp_Name() function has no local variable its own.

      The inner function can access the variable of the outer functions. The function disp_Name() can access the name variable which is declared in the outer function, initial().
   * */
}
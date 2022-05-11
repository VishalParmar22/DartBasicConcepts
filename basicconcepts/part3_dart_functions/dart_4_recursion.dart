/**
 *What is Recursion?
    Dart Recursion is the method where a function calls itself as its subroutine. It is used to solve the complex problem by dividing it into sub-part. A function which is called itself again and again or recursively, then this process is called recursion.

    The iterators can be an option to solve problems, but recursion is recommended to the programmers to deal with complex problems because it is an effective approach of problem-solving technique. It requires less time and code to evaluate the same complex task.

    Recursion makes many calls to the same function; however, there should be a base case to terminate the recursion.

    Recursion uses the divide and conquers technique to solve a complex mathematical computation task. It divides the large task into small chunks.

    Recursion is not recommended to solve all types of problems. However, it is best for a few questions such as searching, sorting, Inorder/Preorder/Postorder, Tree Traversal, and DFS of Graph algorithms. But, while using recursion, it must be implemented carefully; otherwise, it turns into the infinite loop.

    What is base condition in recursion?
    void main() {
    int factorial(int num){

    if(num<=1) { // base case
    return 1;
    else{
    return n*fact(n-1);
    }
    }
    }
    }
    In the above example, the base case is defined as n<=1, and a larger value of a number can be solved by changing to a lesser one till the base case is matched.

    Note - The base case or valid terminating condition is required in recursion function; otherwise, it will turn into an infinite loop.
    Dart Recursive Function
    Recursive functions are quite similar to the other functions, but difference is to calling itself recursively. A recursive function repeats multiple times until it returns the final output. It allows programmers to solve complex problems with minimal code.

    How does recursion works?
    Let's understand the concept of the recursion of the example of a factorial of a given number. In the following example, we will evaluate the factorial of n numbers. It is the series of the multiplication as follows.

    Factorial of n (n!) = n*(n-1)*(n-2)........1

    Dart Recursion
    Characteristics of Recursive Function
    The characteristics of the recursive function are given below.

    A recursive function is a unique form of a function where function calls itself.
    A valid base case is required to terminate the recursive function.
    It is slower than the iteration because of stack overheads.
    Let's have a look at recursion syntax:

    Syntax:

    void recurse() {
    //statement(s)
    recurse();
    //statement(s);
    }
    void main(){
    //statement(s)
    recurse();
    //statement(s)
    }
    Let's understand the following example.

    Example - 1
 *
 * */

int fact(int num){
  //base case
 if(num<=1){
   return 1;
 }else{
   return num*fact(num-1); //here we have called function itself.
 }
}
void main(){
  var num=5;
  //storing function call result in fact variavle.

  var fac =fact(num);
  print("Factorial of 5 is:${fac}");

  /***
   *Explanation:

      In the above example, the factorial() is a recursive function as it call itself. When we called the factorial() function by passing the integer value 5, it will recursively call itself by decreasing the number.

      The factorial() function will be called every time until it matched the base condition, or it is equal to one. It multiplied the number with factorial of the number. Consider the following explanation of the recursive call.

      factorial(5)              # 1st call with 5
      5 * factorial(4)          # 2nd call with 4
      5 * 4 * factorial(3)      # 3rd call with 3
      5 * 4 * 3 * factorial(2)  # 4th call with 2
      5 * 4 * 3 * 2 * 1         # return from 2nd call
      120                    # return from 1st call
      The recursion is ended when the number reduced to 1, and it is the base condition of recursion.

      A recursion function must have a base condition to avoid to infinite call.

      Disadvantage of Recursion
      The recursive calls consume a lot of memory; that's why these are inefficient.
      The recursive functions are difficult to debug.
      Sometimes, It is hard to follow the logic behind the recursion.
   * */
}
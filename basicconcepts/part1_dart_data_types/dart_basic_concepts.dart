//this is my first program in dart.

void main(){
  /*here main method for start the execution of the program and
  print() is for show the desired output on terminal screen here.*/
  print("hello this is dart");

  //dart print and string interpolation.
//variable with value.
  var name = "vishal";
  var salary = 265985;

  int i,j,k; // all has it default value null.

  print("my name is $name and my salary id $salary");

  // this is the example of single line comments.

  /* this is multiple
  * lines
  * comment*/

  ///this
  ///is
  ///documentation types of comment.

    //Dart data types
  /*
  *
  * Number
  * String
  * Boolean
  * Lists
  * Maps
  * Runes
  * Symbols
  *
  * let' see one by one with example
  * */

  int age = 40; //used to store the whole numbers.

  double pi=3.14; //used to store floating numbers.

  //dart string

  var msg = "this is double quotes string."; //used to show messages.

  var  str = 'this is single quotes string.';

  //dart boolean

  bool isTrue = false; //used for denote boolean type.

  bool isFalse = true;

  //dart list is ordered values separated by comma inside square braces.

  var listName = [1,2,0];

  //dart Maps used to store the value in key associated with value form.

  var students= {'name':'ram','age':23,};

  /*For example - The special heart character ♥ is equivalent to Unicode code \u2665, where \u means Unicode, and the numbers are hexadecimal integer. If the hex value is less or greater than 4 digits, it places in a curly bracket ({}). For example - An emoji 😀 is represented as \u{1f600}.
   The example is given below.*/

  var heart_sym = '\u2665';
  var laugh_sym = '\u{1f600}';

  print(heart_sym);
  print(laugh_sym);

//final and const.
final me = "vishu"; //without type annotation.
final String error="internet error"; //final variable with type annotation.

//const
const Pi = 3.14;


}
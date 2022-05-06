void main(){
//Dart Constants
  /***
   * Dart Constants
      Dart Constant is defined as an immutable object, which means it can't be changed or modified during the execution of the program. Once we initialize the value to the constant variable, it cannot be reassigned later.

      Defining/Initializing Constant in Dart
      The Dart constant can be defined in the following two ways.

      Using the final keyword
      Using the const keyword
      It is beneficial when we want to keep the value unchanged in the whole program. The keywords final and const are used to create a constant variable. Both keywords final and const are used as a conjunction with the data-type. Dart will throw an exception if we try to modify the constant variable.

      A const keyword represents the compile-time constant, and the final variable can be set only once.

      Define Constant Using final Keyword
      We can define the constant by using the final keyword. The syntax is given below.

      Syntax:

      final const_name;
      or
      final data_type const_name
      Let's understand the following example.
   *
   *
   * */

  final a =10;
  final a1=20;
  print(a);
  print(a1);

  /**
   * Define Constants Using const Keyword
      We can define constant using the const keyword. The syntax is given below.

      Syntax -

      const const_name
      Or
      const data_type const_name
      Let's understand the following example.
   *
   * */

  const name="Dart James";
  print(name);


  //Dart Number

  int r=5;
  double pi =3.14;
  double res=4*pi*r*r;
  print("the area of sphere=${res}");

  /**
   * Dart parse() function
      The parse() function converts the numeric string to the number. Consider the following example -

      Example -
   * */

  var c = num.parse("200.65");
  var d = num.parse("60.65");

  var e = c+d;
  print("the sum is= ${e}");

  /**
   * Explanation -

      In the above example, we converted the numeric strings into the numbers by using parse() method then stored in the variables. After the successful conversion, we performed add operation and printed the output to the screen.

      Number Properties
      Properties	Description
      hashcode	It returns the hash code of the given number.
      isFinite	If the given number is finite, then it returns true.
      isInfinite	If the number infinite it returns true.
      isNan	If the number is non-negative then it returns true.
      isNegative	If the number is negative then it returns true.
      sign	It returns -1, 0, or 1 depending upon the sign of the given number.
      isEven	If the given number is an even then it returns true.
      isOdd	If the given number is odd then it returns true.
      Number Methods
      The commonly used methods of number are given below.

      Method	Description
      abs()	It gives the absolute value of the given number.
      ceil()	It gives the ceiling value of the given number.
      floor()	It gives the floor value of the given number.
      compareTo()	It compares the value with other number.
      remainder()	It gives the truncated remainder after dividing the two numbers.
      round()	It returns the round of the number.
      toDouble()	It gives the double equivalent representation of the number.
      toInt()	Returns the integer equivalent representation of the number.
      toString()	Returns the String equivalent representation of the number
      truncate()	Returns the integer after discarding fraction digits.
   * */

//Dart String

/**
 * Dart String
    Dart String is a sequence of the character or UTF-16 code units. It is used to store the text value. The string can be created using single quotes or double-quotes. The multiline string can be created using the triple-quotes. Strings are immutable; it means you cannot modify it after creation.

    In Dart, The String keyword can be used to declare the string. The syntax of the string declaration is given below.

    Syntax:
    String msg = 'Welcome to JavaTpoint';
    or
    String msg1 = "This is double-quoted string example.";
    or
    String msg2 = ' ' ' line1
    line2
    line3'''
    Printing String
    The print() function is used to print the string on the screen. The string can be formatted message, any expression, and any other object. Dart provides ${expression}, which is used to put the value inside a string. Let' have at look at the following example.
 * */


  String s1= "this is an example of single line string";
  String s2= "this is an example of a double-"
      "quotes and multiple line string.";

  String s3 = """this is a multiple line
  string using the triple-quotes""";

  print(s1);
  print(s2);
  print(s3);

print("the sum is = ${a+a1}");

/**
 *String Concatenation
    The + or += operator is used to merge the two string. The example is given below.
 * */

String s4="welcome To";
String s5="Jurassic Park";
String s6= s4+s5;
print(s6);

/**
 *String Interpolation
    The string interpolation is a technique to manipulate the string and create the new string by adding another value. It can be used to evaluate the string including placeholders, variables, and interpolated expression. The ${expression} is used for string interpolation. The expressions are replaced with their corresponding values. Let's understand by the following example.
 * */

var v1= 34;
var v2=67;

print("the result is =${v1%v2}");

var name1 = "Jhon Deo";
var salary = 2688546;

print("his name is ${name1}, his salary is ${salary}");

/***
 *Explanation -

    In the above code, we have declared two strings variable, created a new string after concatenation, and printed the result.

    We have created two variables that hold integer value then performed the mod operation and we printed the result using the string interpolation.

    We can use the string interpolation as a placeholder, as we have shown in the above example.

    String Properties
    The Dart provides the following string properties.

    Property	Description
    codeUnits	It returns an unmodified list of the UTF-16 code units of this string.
    isEmpty	If the string is empty, it returns true.
    Length	It returns the length of the string including whitespace.
    String Methods
    The Dart provides an extensive range of methods. The list of a few essential methods is given below.

    Methods	Descriptions
    toLowerCase()
    It converts all characters of the given string in lowercase.
    toUpperCase()
    It converts all characters of the given string in uppercase.
    trim()
    It eliminates all whitespace from the given string.
    compareTo()
    It compares one string from another.
    replaceAll()
    It replaces all substring that matches the specified pattern with a given string.
    split()
    It splits the string at matches of the specified delimiter and returns the list of the substring.
    substring()
    It returns the substring from start index, inclusive to end index.
    toString()
    It returns the string representation of the given object.
    codeUnitAt()
    It returns the 16-bits code unit at the given index.
 * */




}
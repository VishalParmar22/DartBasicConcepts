void main(){

  ///*
  /// Dart Operators
  ///An operator is a symbol that is used to manipulating the values or performs operations on its operand. The given expression: 5+4, in this expression, 5 and 4 are operands and "+" is the operator.

  ///Dart provides an extensive set of built-in operators to accomplish various types of operations. Operators can be unary or binary, which means unary take only on operand and binary take two operands with operators. There are several types of operators. Following is the list of Dart Operators.

  ///Types of Operators
  ///Dart supports the following types of operators.

  ///Arithmetic Operators
  ///Assignment Operators
  ///Relational Operators
  ///Type test Operators
  ///Logical Operators
  ///Bitwise Operator
  ///Conditional Operators
  ///Casecade notation(..) Operators
  ///

//dart arithmetic operators used to perform basic operation like addition subtraction division module and  multiplication.

print ("example of assignment operators:");
var n1 = 10;
var n2 = 20;
 print("n1+n2=${n1+n2}");
 print("n1-n2=${n1-n2}");
 print("n1*n2=${n1*n2}");
 print("n1/n2=${n1/n2}");
 print("n1%n2=${n1%n2}");

 /*
 * Dart Unary Operators (post and pre)
In Java, there are ++ and -- operators are known as increment and decrement operators and also known as unary operators, respectively. Unary operators, operate on single operand where ++ adds 1 to operands and -- subtract 1 to operand respectively.

The unary operators can be used in two ways - postfix and prefix. If ++ is used as a postfix(like x++), it returns the value of operand first then increments the value of x. If -- is used as a prefix(like ++x), it increases the value of x.

Sr.	Operator Name	Description	Example
1.	++(Prefix)	It increment the value of operand.	++x
2.	++(Postfix)	It returns the actual value of operand before increment.	x++
3.	--(Prefix)	It decrement the value of the operand.	--x
4.	--(Postfix)	It returns the actual value of operand before decrement.	x--
Let's understand the following example -
 *
 * */

  var x=30;

  print(x++); //the post fix value

  var y =354;
  print(++y); //prifix

  var z = 787;
  print(--z); //prifix

  var u =575;
  print(u--);//postfix


/**
 * Assignment Operator
    Assignment operators are used to assigning value to the variables. We can also use it combined with the arithmetic operators. The list of assignment operators is given below. Suppose a holds value 20 and b holds 10.

    Operators	Name	Description
    = (Assignment Operator)	It assigns the right expression to the left operand.
    +=(Add and Assign)	It adds right operand value to the left operand and resultant assign back to the left operand. For example - a+=b → a = a+b → 30
    -=(Subtract and Assign)	It subtracts right operand value from left operand and resultant assign back to the left operand. For example - a-=b → a = a-b → 10
 *=(Multiply and Assign)	It multiplies the operands and resultant assign back to the left operand. For example - a*=b → a = a*b → 200
    /=(Divide and Assign)	It divides the left operand value by the right operand and resultant assign back to the left operand. For example - a%=b → a = a%b → 2.0
    ~/=(Divide and Assign)	It divides the left operand value by the right operand and integer remainder quotient back to the left operand. For example - a%=b → a = a%b → 2
    %=(Mod and Assign)	It divides the left operand value by the right operand and remainder assign back to the left operand. For example - a%=b → a = a%b → 0
    <<=(Left shift AND assign)	The expression a<<=3 is equal to a = a<<3
    >>=(Right shift AND assign)	The expression a>>=3 is equal to a = a>>3
    &=(Bitwise AND assign)	The expression a&=3 is equal to a = a&3
    ^=(Bitwise exclusive OR and assign)	The expression a^=3 is equal to a = a^3
    |=(Bitwise inclusive OR and assign)	The expression a|=3 is equal to a = a|3
    Let's understand the following example -
 *
 * */
print("example of assignment operators:");
var p1=10;
var p2=50;

p1+=p2;
print("p1+=p2=${p1}");

p1-=p2;
print("p1-=p2=${p1}");

p1*=p2;
print("p1*=p2=${p1}");

p1~/=p2;
print("p1~/=p2=${p1}");

p1%=p2;
print("p1%=p2=${p1}");

/**
 * Relational Operator
    Relational operators or Comparison operators are used to making a comparison between two expressions and operands. The comparison of two expressions returns the Boolean true and false. Suppose a holds 20 and b hold 10 then consider the following table.

    Sr.	Operator	Description
    1.	>(greater than)	a>b will return TRUE.
    2.	<(less than)	a<b will return FALSE.
    3.	>=(greater than or equal to)	a>=b will return TRUE.
    4.	<=(less than or equal to)	a<=b will return FALSE.
    5.	==(is equal to)	a==b will return FALSE.
    6.	!=(not equal to)	a!=b will return TRUE.
    Let's understand the following example -

    Example -
 *
 * */

  print("the example of relational operator:");
var k1=34;
var k2=56;

var r0 =k1>k2;
print("k1 is greater than k2:"+r0.toString());


var r1 =k1<k2;
print("k1 is less than k2:"+r1.toString());

var r2 =k1>=k2;
print("k1 is greater or equal than k2:"+r2.toString());

var r3 =k1>=k2;
print("k1 is less than or equal to k2:"+r3.toString());


var r4 =k1!=k2;
print("k1 is not equal to k2:"+r4.toString());


var r5 =k1==k2;
print("k1 is equal to k2:"+r5.toString());

/**
 *
 * Dart Type Test Operators
    The Type Test Operators are used to testing the types of expressions at runtime. Consider the following table.

    Sr.	Operator	Description
    1.	as	It is used for typecast.
    2.	is	It returns TRUE if the object has specified type.
    3.	is!	It returns TRUE if the object has not specified type.
    Let's understand the following example.
 * */

  var om=90;

var vikey= "doctor";

print(om is int);
print(vikey is! String);


/***
 * Dart Logical Operators
    The Logical Operators are used to evaluate the expressions and make the decision. Dart supports the following logical operators.

    Sr.	Operator	Description
    1.	&&(Logical AND)	It returns if all expressions are true.
    2.	||(Logical OR)	It returns TRUE if any expression is true.
    3.	!(Logical NOT)	It returns the complement of expression.
    Let's understand the following example.
 *
 * */

  bool bool_val1 =true,  bool_val2 =false;

print("example of the logical operators:");

var b1 =bool_val1 && bool_val2; //logical AND
print(b1);


var b2 =bool_val1 || bool_val2; //logical OR
print(b2);

var b3 =!(bool_val1 || bool_val2); //logical Not
print(b3);

/**
 * Dart Bitwise Operators
    The Bitwise operators perform operation bit by bit on the value of the two operands. Following is the table of bitwise operators.

    Let's understand the following example.

    If a = 7
    b = 6
    then binary(a) = 0111
    binary(b) = 0011
    Hence a & b = 0011, a|b = 0111 and a^b = 0100

    Sr.	Operators	Description
    1.	&(Binary AND)	It returns 1 if both bits are 1.
    2.	|(Binary OR)	It returns 1 if any of bit is 1.
    3.	^(Binary XOR)	It returns 1 if both bits are different.
    4.	~(Ones Compliment)	It returns the reverse of the bit. If bit is 0 then the compliment will be 1.
    5.	<<(Shift left)	The value of left operand moves left by the number of bits present in the right operand.
    6.	>>(Shift right)	The value of right operand moves left by the number of bits present in the left operand.
    Let's understand the following example -
 *
 * */

 print("example of the bitwise operator:");

var v1=575;
var v2= 49;
var v3 =0;

print("v1 & v2 = ${v1&v2}"); //bitwise AND

print("v1 | v2 = ${v1|v2}"); //bitwise OR

print("v1 ^ v2 = ${v1^v2}"); //bitwise XOR

print("~ v1 = ${~v1}"); // complement operator

v3=v1<<2;
print("v1<<2 = ${v3}"); //binary right shift operator

v3=v1>>2;
print("v>>2 = ${v3}"); //binary left shift operator



/**
 *Dart Conditional Operators (?:)
    The Conditional Operator is same as if-else statement and provides similar functionality as conditional statement. It is the second form of if-else statement. It is also identified as "Ternary Operator". The syntax is given below.

    Syntax 1 -

    condition ? exp1 : exp2
    If the given condition is TRUE then it returns exp1 otherwise exp2.

    Syntax 2 -

    exp1 ?? expr2
    If the exp1 is not-null, returns its value, otherwise returns the exp2's value.

    Let's understand the following example.
 *
 * */

var c1 = null;
var c2 =98;
var c3 = c1 ?? c2;
print(c3);

print("let's have a look at another scenario");

var x1=30;
var x2 = x1>34 ? "value greater than 10" : "value lesser than equal to 30";
print(x2);
}
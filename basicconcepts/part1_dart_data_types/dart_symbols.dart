/**
 *
 *Dart Symbol
    Symbol object is used to specify an operator or identifier declared in a Dart programming language. Generally, we do not need to use symbols while Dart programming, but they are helpful for APIs. It usually refers to identifiers by name, because identifier names can vary but not identifier symbols.

    Dart symbols are dynamic string name that is used to derive the metadata from a library. It mainly accumulates the connection between human-readable strings that are enhanced to be used by computers.

    Symbols have a term which is called Reflection; it is a technique that used to the metadata of at run-time, for example - the number of methods used in class, a number of constructors in a class, or numbers of arguments in a function.

    The dart:mirrors library has all of the reflection related classes. It can be used with the command-line applications as well as web applications.

    Syntax -

    The hash(#) symbol, followed by the name is used to define Symbol in Dart. The syntax is given below.

    Syntax -

    Symbol obj = new Symbol("name")
    Here, the valid identifier such as function, valid class, public member name, or library name can be used in place of name value.

    #radix
    #bar
    Let's understand the following example.

    Example -
 * */



library foo_lib;

//library name can be symbol
class Foo{
  //class name can be a symbol
  m1(){
    //method name can be symbol
    print("inside m1");
  }

  m2(){
    print("inside m2");


  }
m3(){
    print("inside m3");

}
}
/**
 *In the above code, we have declared a class Foo in a library foo_lib. The class contains the methods m1, m2, and m3. We save the above file as foo.dart.

    Now, we are creating new file FooSymbol.dart and run the following code.

    FooSystem.dart
 *
 * */


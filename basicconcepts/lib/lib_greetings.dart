library Greetings;
/**
 * Encapsulation in Libraries
    Dart provides the facility to encapsulate or restrict access the content of the dart library. It can be done by using the _(underscore), followed by the identifier. The _(underscore) symbol makes the library's content completely private. The syntax is given below.

    Syntax:
    _identifier
    Example -
    We define a library called Greetings that has a private function.
 * */
//we define a library called Greetings that has a private function.

void _sayHi(msg){
  print("We will access this method in another program:${msg}");
}

void sayHi2(msg){
  print("We will access this method in another program:${msg}");
}
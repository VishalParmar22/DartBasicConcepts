import 'dart:core';
import 'dart:mirrors';
import 'dart_symbols.dart'; //the created library file.

void main(){

  Symbol lib = new Symbol("foo_lib");
  //library name store as symbol

  /**
   * Dart Convert Symbol to String
      We can convert the Dart symbol into the string by using a built-in class MirrorClass, which is provided by the dart:mirror package. Let's understand the following example.

      Example -
   * */

  String name_of_lib=MirrorSystem.getName(lib);

  print(lib);
  print(name_of_lib);
  
}

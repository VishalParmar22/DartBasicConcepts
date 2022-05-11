import 'dart:collection';

/**
 * Dart Generics
    Dart Generics are the same as the Dart collections,
    which are used to store the homogenous data.
    As we discussed in the Dart features, it is an optionally typed language.

    By default, Dart Collections are the heterogeneous type.
    In other words, a single Dart collection can hold the values of
    several data types. However, a Dart collection can be also stored
    the homogenous values or same type values.

    The Dart Generics provides the facility to enforce a limit on
    the data type of the values that can be stored by the collection.
    These collections can be referred to as the type-safe collections.

    Type safety is a unique feature of the Dart programming,
    which makes sure that a memory block can only contain the data of
    a specific data type.

    The generics are a way to support type-safety implementation for
    all Dart collections. The pair of the angular bracket is used
    to declare the type-safe collection. The angular bracket consists of
    the data-types of the collection. The syntax is given below.

    Syntax -
    Collection_name <data_type> identifier = new Collection_name<data_type>
    We can do the type-safe implementation of various Dart objects such
    as List, Queue, Map, and Set.
    It is also supported by all implementation of the above define
    collection types. The syntax is given below.

    Example - Generics List
 * */

void main(){
  //Example - Generics List.
  var logStr = List.filled(1, "",growable: true);
  logStr.add("CHECK");
  logStr.add("ERROR");
  logStr.add("INFO");

  //iterating across list.
  for (String i in logStr) {
print(i);
  }
/**
 * Explanation:
    We created a list that holds the string type-safe and used the add element into it by using add() function.

    If we try to insert the other than the specified value then it will through a compilation error. Let's understand the following example -

    Example - 2 please uncomment below line than run a program to see error.
 * */
//  logStr.add(512);

//Let's understand another example -
//
// Example - Generic Set.
Set<int> numSet=new Set<int>();
  numSet.add(10);
  numSet.add(20);
  numSet.add(30);
  numSet.add(40);
  numSet.add(50);
  //numSet.add("");
//uncomment above line gives you compilation error.

print("Default implementation :${numSet.runtimeType}");

for(var i in numSet) {
  print(i);
}
//Example - Generics Queue

Queue<int> q = new Queue<int>();
q.addLast(100);
q.addLast(205);
q.addLast(315);
q.addLast(470);

//remove the first element of the queue.
q.removeFirst();
print("Example of generic queue:");
for(int i in q){
  print(i);

}
/**
 * Generic Map
    As we know that declaring map require the key and value.
    The syntax is given below.

    Syntax:
    Map <Key_type, value_type>
    Example -
 * */

  Map<String,String> m={"name":"Vishal","salary":"12545"};
print("Map:${m}");
}
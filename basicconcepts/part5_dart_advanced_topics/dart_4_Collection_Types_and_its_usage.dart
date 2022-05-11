import 'dart:collection';
/**
 *Dart Collection
    Dart doesn't support the array to store the data, unlike the other programming language. We can use the Dart collection in place of array data structure. We can enable the other classes of the collection in our Dart script by using the dart::core library.

    Dart collection can be classified as follows.

    Dart Collection	Description
    List	A list is the collection of the ordered group of collection. The dart::core library offers the list class that allows us to create and modify the list. It provides the following types of lists.
    Fixed Length List - We cannot change the list's length at runtime.
    Growable List - We can change the length of the list at run-time.
    Set	A set is the collection of the objects in which each object can be declared at once. The dart::core library offers the Set class to use its facilities.
    Maps	The maps are the collection of the key-value pair of data. Each value is stored with a particular key. The key and value can be any type in the dart. A Map is a dynamic collection. We can say that map can be modified at the run-time. The dart::core library makes available the Map class to work with it.
    Queue	A queue is the collection of the where data stores in the first-in-first-out format. It can be manipulated at both ends. Simply, we can enter the element from one end and delete it from another end.
    Iterating Collections
    The dart::core library provides the iterator class, which enables the easy collection traversal. As we know that, every collection contains an iterator property. This property returns an iterator that point to the objects in the collection. Let's understand the following example.

    Example -
 * */
void main(){
  Queue q = new Queue();
  q.addAll([10,20,30]);
  Iterator i =q.iterator;
  while(i.moveNext()){
    print(i.current);
  }
  /**
   * Explanation:
      In the above code, the moveNext() function returned the
      Boolean value that indicating whether there is a subsequent entry.
      The current property of the returns the object of
      that iterator currently points to.

      HashMap <K, V Class>
      The HashMap class is based on the implementation of the Map.
      As we discussed earlier, the key must be unique and must have
      consistent Object == (equal to operator) and Object.hashCode
      implementations. We can also use null as a key. The elements in
      the Map may in any order. The iteration order only changes if
      the map is modified. If we iterate the map, the value of the map
      is iterated in the same order as their associated key.


   * */
}
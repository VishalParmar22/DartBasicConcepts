void main() {
  /**
   * Dart Map
      Dart Map is an object that stores data in the form of a key-value pair. Each value is associated with its key, and it is used to access its corresponding value. Both keys and values can be any type. In Dart Map, each key must be unique, but the same value can occur multiple times. The Map representation is quite similar to Python Dictionary. The Map can be declared by using curly braces {} ,and each key-value pair is separated by the commas(,). The value of the key can be accessed by using a square bracket([]).

      Declaring a Dart Map
      Dart Map can be defined in two methods.

      Using Map Literal
      Using Map Constructor
      The syntax of declaring Dart Map is given below.

      Using Map Literals
      To declare a Map using map literal, the key-value pairs are enclosed within the curly braces "{}" and separated by the commas. The syntax is given below.

      Syntax -

      var map_name = {key1:value1, key2:value2 [.......,key_n: value_n]}
      Example - 1:
   * */

  var map1 = {'name': 'vishal', 'salary': 4521552};
  print(map1);

  /**Example - 2: Adding value at runtime
   * */

  map1['degree'] = 'human being';

  print(map1);

  /**
   * Explanation -

      In the above example, we declared a Map of a student name. We added the value at runtime by using a square bracket and passed the new key as a course associated with its value.

      Using Map Constructor
      To declare the Dart Map using map constructor can be done in two ways. First, declare a map using map() constructor. Second, initialize the map. The syntax is given below.

      Syntax -

      var map_name = new map()
      After that, initialize the values.

      map_name[key] = value
      Example - 1: Map constructor
   * */

  var map2 = new Map();
  map2["name"] = "vishal";
  map2["salary"] = 45625;
  print(map2);

  /**
   * Note - A map value can be any object including NULL.
      Map Properties
      The dart:core:package has Map class which defines following properties.

      Properties	Explanation
      Keys	It is used to get all keys as an iterable object.
      values	It is used to get all values as an iterable object.
      Length	It returns the length of the Map object.
      isEmpty	If the Map object contains no value, it returns true.
      isNotEmpty	If the Map object contains at least one value, it returns true.
      Example -
   * */

  //get all keys

  print("The all keys are from map1 : ${map1.keys}");
  //get all values

  print("the all value are from map2: ${map2.values}");

  //get the length of map

  print("the length of map 1 : ${map1.length}");

  //use and check is map empty ?

  print(map2.isEmpty);

  //use of isNotEmpty
  print(map1.isNotEmpty);

  /**
   * Map Methods
      The commonly used methods are given below.

      addAll() - It adds multiple key-value pairs of other. The syntax is given below.

      Syntax -

      Map.addAll(Map<Key, Value> other)
      Parameter:

      other - It denotes a key-value pair. It returns a void type.
      Let's understand the following example.

      Example -
   *
   * */

  Map map3 = {"key1": "val1", "key2": "val2"};
  print('Map:${map3}');

  map3.addAll({"key3": "val3", "key4": "val4"});

  print("Map after adding key-values: ${map3}");

  /**
   * clear() - It eliminates all pairs from the map. The syntax is given below.

      Syntax -

      Map.clear()
      Let's have a look at following example.
   * */

  Map map5 = {"key1": "val1", "key2": "value2"};
  print(map5);
  map5.clear();
  print("Map5 after clear all key-values : ${map5}");

  /**
   *remove() - It removes the key and its associated value if it exists in the given map. The syntax is given below.

      Syntax -

      Map.remove(Object key)
      Parameter -

      Keys - It deletes the given entries. It returns the value associated with the specified key.
      Let's understand the following example.

      Example -
   *
   * */

  Map map4 ={"Key1":"val1","Key2":"val2"};
  print(map4);
  map4.remove("Key2");
  print(map4);

  /**
   * forEach() - It is used to iterate the Map's entries. The syntax is given below.

      Syntax -

      Map.forEach(void f(K key, V value));

     f(K key, V value)  It denotes the key-value pair of the map.
      Let's understand the following example.
      Example -
   * */

  Map map7 = {"Vishal":"Okay","Age":28};
  print('Map : ${map7}');
  map7.forEach((key, value) {
    print('${key}:${value}');
  });




}

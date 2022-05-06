void main() {
  //Dart sets

  /**
   * Dart Sets
      The Dart Set is the unordered collection of the different values of the same type. It has much functionality, which is the same as an array, but it is unordered. Set doesn't allow storing the duplicate values. The set must contain unique values.

      It plays an essential role when we want to store the distinct data of the same type into the single variable. Once we declare the type of the Set, then we can have an only value of the same type. The set cannot keep the order of the elements.

      Dart Initializing Set
      Dart provides the two methods to declare/initialize an empty set. The set can be declared by using the {} curly braces proceeded by a type argument, or declare the variable type Set with curly braces {}. The syntax of declaring set is given below.

      Syntax -

      var setName = <type>{};
      Or
      Set<type> setname = {};
      The setname refers to the name of the set variable, and type refers to the data type of the set.

      Note - It should be remembered that the syntax of the set is much similar to the map literals. If we forget to define the type annotation with {} or with the variable it's assigned to; then, Dart compiler will create Map object instead of Set.
      Let's have a look at the following example of set declaration -

      Example -
   * */

  print("initializing set");

  var names = <String>{"jamens", "dwan", "ram", "Kishor"};
  print(names);

  /**
   * Add Element into Set
      The Dart provides the two methods add() and addAll() to insert an element into the given set. The add() method is used to add the single item into the given set. It can add one at a time when the addAll() method is used to add the multiple elements to an existing set. The syntax is given below.

      Syntax:

      Set_name.add(<value>);
      Or
      Set_name.addAll(val1,val2....valN)
      Consider the following example -

      Example -
   * */

  print("inserrt element into the set:");

  var names1 = {"James", "Ricky", "Devansh", "Adam"};

  //Decalring empty set
  var emp = <String>{};
  emp.add("Emp1");
  print(emp);

  //adding multiple names

  emp.addAll(names1);
  print(emp);

  /**
   * Explanation -

      We have declared two sets of names and emp. The set names consisted of few elements, while emp is an empty set. We added the single element "Jonathan" by using the add() method then; we called the addAll() method and passed another set names as an argument. It added the multiple values to the emp set.

      Access the Set Element
      Dart provides the elementAt() method, which is used to access the item by passing its specified index position. The set indexing starts from the 0 and goes up to size - 1, where size is the number of the element exist in the Set. It will throw an error if we enter the bigger index number than its size. The syntax is given below.

      Syntax:

      Set_name.elementAt(index)
      Consider the following example.

      Example -
   * */

  print("Access the element of the set :");

  var names2 = {"vishal", "akshay", "Om", "hari"};
  print(names2);

  var x = names2.elementAt(3);
  print(x);

  /**
   * Explanation -

      In the above example, we have set names. We applied the elementAt() method and passed index position 3 as an argument. We created a variable x, which holds the assessed value, and then we printed the result.

      Dart Finding Element in Set
      Dart provides the contains() method, which is used to find an element in the set. It accepts the single item as an argument ad return the result in Boolean type. If the given element present in the set, it returns true otherwise false. The syntax is given below.

      Syntax:

      set_name.contains(value);
      Example -
   *
   * */
  print("Example-Find element in the given set:");

  var names3 = <String>{"Vishal", "Umang", "Harsh", "Akshay"};

  if (names3.contains("Umang")) {
    print("Element found");
  } else {
    print("Element not found");
  }

  /**
   * Explanation -

      In the above program, to find the element in the given set, we called contains() method and passed value "Ricky" as an argument. We used the conditional statement to find out whether an element belongs to the given set or not. The given element present in the set then condition became true, it printed if block statement.

      Note - We will learn conditional statement in the next section.
      Dart Remove Set Element
      The remove() method is used to eliminate or remove an element from the given set. It takes the value as an argument; the value is to be removed in the given set. The syntax is given below.

      Syntax -

      set_names.remove(value)
      Example -
   * */

  print("Example - Remove element from the given set:");
  var names4 = <String>{"Vishal", "Harsh", "Umang", "Akshay"};
  print("Before remove : ${names4}");

  names4.remove("Vishal");
  print("After remove : ${names4}");

  /**
   * Explanation -

      In the above program, we removed the "Peter" from the given set by using the remove() method. It returned the newly modified set object.

      Dart Iterating Over a Set Element
      In Dart, the set element can be iterated using the forEach method as following -

      Example -
   * */

  print("Example - iterating over set elements: ");

  var names5 = <String>{"Vishal", "Harrsh", "Raj"};

  names5.forEach((element) {
    print('Value: $element');
  });

  /**
   * Dart Remove All Set Element
      We can remove entire set element by using the clear() methods. It deletes or removes all elements to the given set and returns an empty set. The syntax is as follow-

      Syntax -

      set_name.clear();
      Example -
   * */
  print("Example- Remove all elements from the given set:");
  var name6 = <String>{"Vishal", "Hash", "Umang", "akshay"};
  print(name6);
  name6.clear();
  print(name6);
   /**
    * TypeCast Set to List
       The Set object can convert into the List Object using the toList() method. The syntax is as follows.

       Note - The type of List must be the same as the type of Set.
       Syntax -

       List<type> <list_name> = <set_name>. toList();
       Dart Set Operations
       Dart Set provides the facility to perform following set operations. These operations are given below.

       Union - The union is set to combine the value of the two given sets a and b.

       Intersection - The intersection of the two set a and b returns all elements, which is common in both sets.

       Subtracting - The subtracting of two sets a and b (a-b) is the element of set b is not present in the set a.

       Let's understand the following example.

       Example -
    * */


   var x1=<int>{10,11,12,13,14,15};
   var x2 = <int>{12,18,29,43};
   var x3 = <int>{2,45,87,96,75};

   print("Example- Set Operations:");

   print("x1 union x2 is= ");
   print(x1.union(x2));

  print("x1 intersect x2 is= ");
  print(x1.intersection(x2));


  print("x2 difference x3 is= ");
  print(x2.difference(x3));

  /**
   * Dart Set Properties
      The few properties of the Dart set as follows.

      Properties	Explanations
      first	It is used to get the first element in the given set.
      isEmpty	If the set does not contain any element, it returns true.
      isNotEmpty	If the set contains at least one element, it returns true
      length	It returns the length of the given set.
      last	It is used to get the last element in the given set.
      hashcode	It is used to get the hash code for the corresponding object.
      Single	It is used to check whether a set contains only one element.
   * */

}

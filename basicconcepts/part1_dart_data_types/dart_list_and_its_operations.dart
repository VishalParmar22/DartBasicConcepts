void main() {
  /**
   *Dart Lists
      Dart List is similar to an array, which is the ordered collection of the objects. The array is the most popular and commonly used collection in any other programming language. The Dart list looks like the JavaScript array literals. The syntax of declaring the list is given below.

      var list1 = [10, 15, 20,25,25]
      The Dart list is defined by storing all elements inside the square bracket ([]) and separated by commas (,).

      Let's understand the graphical representation of the list -

      Dart Lists
      list1 - It is the list variable that refers to the list object.

      Index - Each element has its index number that tells the element position in the list. The index number is used to access the particular element from the list, such as list_name[index]. The list indexing starts from 0 to length-1 where length denotes the numbers of the element present in the list. For example, - The length of the above list is 4.

      Elements - The List elements refers to the actual value or dart object stored in the given list.

      Types of Lists
      The Dart list can be categorized into two types -

      Fixed Length List
      Growable List
      Fixed Length List
      The fixed-length lists are defined with the specified length. We cannot change the size at runtime. The syntax is given below.

      Syntax - Create the list of fixed-size

      var list_name = new List(size)
      The above syntax is used to create the list of the fixed size. We cannot add or delete an element at runtime. It will throw an exception if any try to modify its size.

      The syntax of initializing the fixed-size list element is given below.

      Syntax - Initialize the fixed size list element

      list_name[index] = value;
      Let's understand the following example.

      Example -
   * */

  var list1 = new List.filled(5, 5, growable: false);
  print(list1);

  /**
   *Explaination -

      In the above example, we have created a variable list1 that refers the list of fixed size. The size of the list is five and we inserted the elements corresponding to its index position where 0th index holds 10, 1st index holds 12, and so on.

      Growable List
      The list is declared without specifying size is known as a Growable list. The size of the Growable list can be modified at the runtime. The syntax of the declaring Growable list is given below.

      Syntax - Declaring a List

      // creates a list with values
      var list_name = [val1, val2, val3]
      Or
      // creates a list of the size zero
      var list_name = new List()
      Syntax - Initializing a List

      list_name[index] = value;
      Consider the following example -

      Example - 1
   *
   * */
  var list2 = [10, 20, 30, 40, 50, 60, 70];
  print(list2);

  /**
   *List Properties
      Below are the properties of the list.

      Property	Description
      first	It returns the first element case.
      isEmpty	It returns true if the list is empty.
      isNotEmpty	It returns true if the list has at least one element.
      length	It returns the length of the list.
      last	It returns the last element of the list.
      reversed	It returns a list in reverse order.
      Single	It checks if the list has only one element and returns it.
      Inserting Element into List
      Dart provides four methods which are used to insert the elements into the lists. These methods are given below.

      add()
      addAll()
      insert()
      insertAll()
      The add() Method
      This method is used to insert the specified value at the end of the list. It can add one element at a time and returns the modified list object. Let's understand the following example -

      Syntax -

      list_name.add(element);
      Example -
   * */
  var list3 = [1, 3, 5, 7, 9];

  print(list3);
  list3.add(11);
  print(list3);

  /***
   *
   * Explanation -

      In the above example, we have a list named odd_list, which holds odd numbers. We inserted a new element 11 using add() function. The add() function appended the element at the end of the list and returned the modified list.

      The addAll() Method
      This method is used to insert the multiple values to the given list. Each value is separated by the commas and enclosed with a square bracket ([]). The syntax is given below.

      Syntax -

      list_name.addAll([val1,val2,val3,?..valN]);
      Let's understand the following example -
   * */
  var odd_list = [1, 3, 5, 7, 9];

  print(odd_list);
  odd_list.addAll([11, 13, 15, 17, 19]);
  print(odd_list);

  /**
   * Explaination -

      In the above example, we don't need to call the add() function multiple times. The addAll() appended the multiple values at once and returned the modified list object.

      The insert() Method
      The insert() method provides the facility to insert an element at specified index position. We can specify the index position for the value to be inserted in the list. The syntax is given below.

      list_name.insert(index,value);
      Let's understand the following example -
   * */

  var list4 = [3, 15, 48, 9];
  print(list4);
  list4.insert(2, 220);
  print(list4);

  /***
   * Explanation -

      In the above example, we have a list of the random numbers. We called the insert() function and passed the index 2nd value 10 as an argument. It appended the value at the 2nd index and returned the modified list object.

      The insertAll() Method
      The insertAll() function is used to insert the multiple value at the specified index position. It accepts index position and list of values as an argument. The syntax is given below.

      Syntax -

      list_name.insertAll(index, iterable_list_of_value)
      Let's understand the following example -

      Example -
   *
   *
   */
  var lis5 = [3, 4, 5, 6];

  print(lis5);

  lis5.insertAll(0, [53, 7, 9, 90]);
  print(lis5);

  /**
   * Explanation -

      In the above example, we have appended the list of values at the 0th index position using the insertAll() function. It returned the modified list object.

      Updating List
      The Dart provides the facility to update the list and we can modify the list by simply accessing its element and assign it a new value. The syntax is given below.

      Syntax -

      list_name[index] = new_value;
      Let's understand the following example -

      Example -
   * */

  var lis7 = [10, 20, 30, 40, 50, 60];
  print("List before update: ${lis7}");
  lis7[3] = 55;
  print("List after update: ${lis7}");

  /**
   * Explanation -

      In the above example, we have accessed the 3rd index and assigned the new value 55 then printed the result. The previous list updated with the new value 55.

      replaceRange() - The Dart provides replaceRange() function which is used to update within the given range of list items. It updates the value of the elements with the specified range. The syntax is given below.

      Syntax -

      list_name.replaceRange(int start_val, int end_val, iterable);
      Let's understand the following example -

      Example -
   * */
  var lis8 = [10, 55, 87, 96, 87];
  print("list before apply replace range function: ${lis8} ");
  lis8.replaceRange(0, 3, [12, 13, 45, 78]);

  print("List after use of replace range function : ${lis8}");

  /**
   * Explanation -

      In the above example, we called the replaceRange() to the list which accepts the three arguments. We passed the starting index 0th, end index 4 and the list of the elements to be replaced as a third arguments. It returned the new list with the replaced element from the given range.

      Removing List Elements
      The Dart provides following functions to remove the list elements.

      remove()
      removeAt()
      removeLast()
      removeRange()
      The remove() Method
      It removes one element at a time from the given list. It accepts element as an argument. It removes the first occurrence of the specified element in the list if there are multiple same elements. The syntax is given below.

      Syntax -

      list_name.remove(value)
      Let's understand the following example -

      Example -
   * */

  var lis9 = [23, 45, 67, 89, 09];
  print("List before use of remove() :${lis9}");
  lis9.remove(45);
  print("List after use of remove() :${lis9}");

  /**
   * Explanation -

      In the above example, we called the remove() function to the list and passed the value 20 as an argument. It removed the 20 from the given list and returned the new modified list.

      The removeAt() Method
      It removes an element from the specified index position and returns it. The syntax is given below.

      Syntax -

      list_name.removeAt(int index)
      Example -
   * */

  var lis11 = [57, 57, 3, 5, 7, 0];
  print("List before removeAt() use : ${lis11}");
  lis11.removeAt(4);
  print("List after removeAt() use : ${lis11}");

  /**
   * Explanation -

      In the above example, we passed the 3rd index position as an argument to the removeAt() function and it removed the element 13 from the list.

      The removeLast() Method
      The removeLast() method is used to remove the last element from the given list. The syntax is given below.

      Syntax-

      list_name.removeLast()
      Let's understand the following example.

      Example -
   * */
  var lis12 = [45, 56, 7, 8, 90];
  print("List before removeLast() use: ${lis12}");
  lis12.removeLast();
  print("List after removeLast() use: ${lis12}");

  /**
   *
   * In the above example, we called the removeLast() method, which removed and returned the last element 80 from the given list.

      The removeRange() Method
      This method removes the item within the specified range. It accepts two arguments - start index and end index. It eliminates all element which lies in between the specified range. The syntax is given below.

      Syntax -

      list_name. removeRange();
      Example -
   * */

  var lis13=[23,34,4,5,6,7,8,9];
  print("List before use of removeRange() : ${lis13}");
  lis13.replaceRange(1, 3,[1,2] );
  print("List after use of removeRange() : ${lis13}");


  /**
   *
   * Explanation -

      In the above example, we called the removeRange() method and passed start index position 1 and end index position 3 as an arguments. It removed all elements which were belonging in between the specified position.

      Dart Iterating List elements
      The Dart List can be iterated using the forEach method. Let's have a look at the following example.

      Example -
   * */
  
  var lis14=["vishal","radhe","om"];
  print("iterating the list elements:");
  lis14.forEach((element) { 
    print("${lis14.indexOf(element)}:$element");

  });


}

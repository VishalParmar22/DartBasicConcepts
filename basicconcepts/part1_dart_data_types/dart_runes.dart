void main(){

  /**
   *Dart Runes
      As we discussed earlier,
      Dart String is a sequence of characters, letters, numbers, and unique characters.
      It is the sequence of UTF - 16 Unicode characters where Dart Runes are the sequence UTF - 32 Unicode code points. It is a UTF-32 string which is used to print the special symbol. For example - The theta (Θ) symbol is signified by using the corresponding Unicode equivalent \u0398; here '\u' refers to Unicode, and the numbers are in the hexadecimal. Sometimes the hex digits are the more than 4 digits then it should be placed in curly brackets ({}). Let's understand it by the following example.

      Example -
   *
   * */

  var heart_rune = '\u2665';
  var theta_rune = '\u{1f600}';

  print(heart_rune);
  print(theta_rune);

  /**
   * The Dart provides the dart: core library which has the Dart Runes. The String code unit can be retrieved in the following three methods.

      Using String.codeUnitAt() Method
      Using String.codeUnits property
      Using String.runes property
      String.codeUnitAt() Method
      We can access the character's code unit in the given string by using the codeUnitAt() method. It accepts the index position as an argument and returns the 16-bit UTF-16 code unit at the passed index position of the string. The syntax is the given below.

      Syntax -
      String.codeUnitAt(int index);

      let's see an example-
   * */

  String s1 = "Dart is Language for code";
  print("Wel code no have bugs");
  print(s1.codeUnitAt(3));

  /**
   * Explanation -

      In the above code, the variable str holds string value "JavaTpoint". We called the codeuUnitAt() function and passed index position. It returned the code unit of 0th index character.

      String.codeUnits Property
      The codeUnits property returns UTF-16 code units for given string in the form of a list. The syntax is given below.

      Syntax -

      String.codeUnits;
      Let's have a look at following example -

      Example -
   * */

  String s2 = "Vishal Parmar";
  print("well code bug free code");
  print(s2.codeUnits);

  /**
   * Explanation -

      The codeUnits returned the list of the code unit corresponding to the given character.

      String.runes Property
      The runes property is used to iterate the given string though the UTF-16 code unit. The Syntax is given below.

      Syntax -

      String.runes
      Consider the following example.

      Example -
   *
   * */

  "Vishal Parmar".runes.forEach((element) {
    var char =new String.fromCharCode(element);
    print(char);
  });


}
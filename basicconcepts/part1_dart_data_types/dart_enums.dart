/**
 * Dart Enumeratio
    An enumeration is a set of values called as elements, members, etc. This is essential when we carried out the operation with the limited set of values available for variable. For example - you can think of the days of the month can only be one of the seven days - Sun, Mon, Tue, Wed, Thur, Fri, Sat.

    Initializing an Enumeration
    The enumeration is declared using the enum keyword, followed by the comma-separated list of the valid identifiers. This list is enclosed within the curly braces {}. The syntax is given below.

    Syntax -

    enum <enum_name> {
    const1,
    const2,
    ....., constN
    }
    Here, the enum_name denotes the enum type name and list of the identifiers enclosed within the curly bracket.

    Each of the identifier in the enumeration list has its index position. The index of the first enumeration is 0; the second enumeration is 1, and so on.

    Example -

    Let's define an enumeration for months of the year.
 *
 * */

enum days { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

enum Process_Status { none, running, stopped, paused }

void main() {
  print("dart enumeration example:");

  print(days.values);
  days.values.forEach((element) {
    print("value:$element, index: ${element.index}");
  });

  print(Process_Status.values);
  Process_Status.values.forEach((v) {
    "value: $v, index:${v.index}";
  });

  print("running :${Process_Status.running},${Process_Status.running.index}");
  print("running index: ${Process_Status.values[1]}");


}

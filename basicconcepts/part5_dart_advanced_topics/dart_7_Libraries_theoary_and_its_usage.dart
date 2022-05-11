import 'dart:math';
import '../lib/lib_greetings.dart' as w;
import '../lib/lib_calculator.dart';
import '../lib/hellogreetings.dart' as gret;
import 'dart_2_Typedef_and_its_usage.dart';
/**
 *
 *Dart Libraries
    In Dart, the library is the collection of the routine or set of
    programming instructions. Dart consists of many sets of
    built-in libraries that are beneficial to hold routines
    (functions, set of classes, etc.), and regularly used.
    A Dart library contains constants, functions, properties, exceptions,
    and typedefs, and set of classes.


    Importing a library
    To work with the library, we must import it into the current program.
    The Dart provides the import keyword, which is used to make
    the library available in the current file. We can use multiple libraries
    in a single file.

    For example - Dart built-in library URIs is used as dart scheme
    to refer to a library. Other libraries can use a file system path or
    the package: scheme to specify its URIs. The package manager pub in
    Dart provides the libraries and uses the package scheme.

    We are describing some commonly used libraries below.

    Sr.	Library	Description
    1.	dart:io	This library consists of File, HTTP, socket, and other I/O support for server applications. This library is not suitable for browser-based applications. We don't need to import explicitly because it is imported by default.
    2.	Dart:core	This library consists of Collection, built-in types, and other core functionality for each dart program. It is imported by default.
    3.	Dart: math	This library consists of the rich mathematical functions, constant, and random number generator.
    4.	Dart: convert	It is used to Encoders and decoders for converting the different data representations such as JSON and UTF
    5.	Dart: typed_data	It represents the lists that store the fixed-sized data efficiently (for example - unsigned 8-byte integer).
    Let's understand the following example of importing and using a library function.

    Example - Importing and using a Library
 * */
void main(){
  print("Square root of 36 is:${sqrt(36)}");

  /**
   * Explanation:
      In the above code, we imported the built-in library 'dart:math'.
      It provides the many built-in mathematical function, here we used
      the sqrt() function with number. It takes a number as an argument
      that we want to find its square root of. We passed an integer number 25
      in sqrt() function,
      and it retuned an output as 5.
   * */
 // w._sayHi("Hello Vishal");

  /**
   * After running the above code, it throws an error because we have declared the library with the private method and try to access it in other file.

      Unhandled exception:
      No top-level method 'w._sayHi' declared.
      NoSuchMethodError: method not found: 'w._sayHi'
      Receiver: top-level
      Arguments: [...]
      #0 NoSuchMethodError._throwNew (dart:core-patch/errors_patch.dart:184)
      #1 main (file:///C:/Users/Administrator/WebstormProjects/untitled/Assertion.dart:6:3)
      #2 _startIsolate.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:261)
      #3 _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:148)

   * */
//Now we import the above custom file in current file called 'lib_calculator.dart'.
  var n1=90;
  var n2=80;
  var sum =add(20, 50);
  var sub =subtraction(40, 80);
  var mod=modulus(50, 10);
  var mul=multiplication(40, 60);
  var div = division(100, 10);

  print("$n1+$n2=$sum");
  print("$n1-$n2=$sub");
  print("$n1*$n2=$mul");
  print("$n1%$n2=$mod");
  print("$n1/$n2=$div");
  w.sayHi2("Dart");

  //Now, we import the above libraries with the as prefix.
  gret.sayHi3("Vishal");//to eliminate the name conflict.





}
/**
 *Note - The custom library must be imported by its saved file name such as
 *  we imported it in the current working file with the calculator_simple
 *  name.
    Name Alias of Library
    Dart allows us to import multiple libraries into the current working
    file, but if we create the same function name within the different
    libraries, it will create conflict while accessing these functions.
    The Dart compiler might be confused to identify the particular function
    in different library. To overcome this scenario, Dart provides the as
    keyword for specifying the prefix. The syntax is given below.

    Syntax:
    import 'library_uri' as prefix
    Let's understand the following example -

    Example -
    First, we define a library: greeting.dart go to lib folder
    Next, we define the new library: hellogreetings.dart to lib folder
 *
 * */
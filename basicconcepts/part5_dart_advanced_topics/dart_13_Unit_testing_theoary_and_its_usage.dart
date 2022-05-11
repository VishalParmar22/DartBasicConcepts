import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

/**
 *What is Unit Testing?
    Unit testing is a part of the software development process where particular unit/components of an application are tested. Unit testing of each component is necessary to enhance the application performance. We can say that a unit is the smallest testable chunk of a program that can be logically isolated in a system. In various programming languages, the individual program, a subroutine, a function, a method, or a class can be represented as a Unit. There can be many individual units within the module. In object-oriented programming, the method that belongs to base class/superclass, an abstract class can be represented as smaller units. Below image displays the type of testing.

    Dart Unit Testing
    Unit Testing Task
    The unit testing task is given below.

    Unit Test Plan
    Prepare
    Review
    Rework
    Baseline
    Unit Test Cases/Scripts
    Prepare
    Review
    Rework
    Baseline
    Unit Test
    Perform
    Advantage of Unit Testing
    Few advantages of unit testing are given below.

    We can maintain code easily
    It makes code more reusable.
    It makes development faster.
    The code can be easily debugged.
    It detects the cost of testing and fixing defects, because any error is captured in the early stage.
    Dart Unit Testing
    In Dart, we required to include an external library named "test", which facilitates a standard way of writing and running individual unit test. Unit testing can be achieved using the following steps.

    Step - 1: Installing "test" package

    To include the unit testing in our project, we must install a third-party packages "test" in our current working project. Let's open the pubspec.yaml in the our project and type the following statement.

    dependencies:
    test:
    Now, right-click on pubspec.yaml file and click on Pub: get dependencies. This will install the "test" package in our project.

    Dart Unit Testing
    We can also install it by using the following command.

    pub get
    Step - 2: Importing "test" package

    Type the following line to import the "test" package in your project.

    import "package:test/test.dart";
    Step - 3: Writing Test Cases

    The top-level test() function is added by the Test cases.
    In the test() function,
    we make the test assertion using the expect() function.
    The expert() function takes two arguments actualValue and MatchValue.

    Syntax:

    test("Test Description", () {
    expert(actualValue, matchingValue)
    });
    Group of Test Cases
    We can create a group of multiple test cases using the group() function.
    It helps grouping of test cases based on some criteria.
    The description of each group is specified in the beginning of its
    test's description.

    Syntax:
    The syntax is given below.

    group("Test_Group_Name", () {
    test("test_case_name_1", () {
    expect(actual, equals(exptected));
    });
    test("test_case_name_2", () {
    expect(actual, equals(expected));
    });
    })
    Example - 1(Passing Test)
    Here is the example where we define an add() method for unit test.
    It accepts two parameters as an integer values and returns an integer
    representing the sum. To test the add() method, understand the following
    example -

    Step - 1: We import the test package.

    Step -2: We define the test using the test() function and it uses
    the expert() function to impose an assertion.
 * */

int add(int x,int y){
  //this function to be tested.
  return x+y;
}
//this is failed case example just uncomment return line of code below:
int sub(int x,int y){
  return x-y;
  //return x-y-1;
  /**In the above example, the add() function is tested successfully but
   * the sub() function failed the unit test due to logical error.
   * */
}

void  main(){
  //Defining the test function.
  //this is emaple of success type test case.
  test("test to check add method", (){
    //Arrange
    var excepted=30;

    //Act
    var actual =add(10,20);

    //Assets
    expect(actual, excepted);
  });
//this is example of failed type of test case.
  test("test to check the sub method", (){
    var expected=10;
    //arrange

    var actual =sub(30,20);
    //act
    expect(actual, expected);
  });

  //this is example of group type of test case.
  group("String", (){

    //First case
    test("testing on split() of string class", (){
      var string= "Hii,this is group test";
      expect(string.split(","), equals(["Hii","this is group test"]));
    });

    //second test case
    test("testing on trim() method of string class", (){
      var string=" Hii,Vishal";
      expect(string.trim(), equals("Hii,Vishal"));
    });
  });
}
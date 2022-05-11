/**
 * Dart Getters and Setters
    Getters and setters are the special class method that is used to read and write access to an object's properties. The getter method is used to reads the value of the variable or retrieve the value and setter method is used to set or initialize respective class fields. By default, all classes are associated with getter and setter method. However, we can override the default methods by defining getter and setter method explicitly.

    Defining a getter
    We can define the getters method by using the get keyword with no parameter a valid return type.

    Syntax:
    return_type get field_name{
    }
    Defining a setter
    We can declare the setter method using the set keyword with one parameter and without return type.

    Syntax:
    set field_name {
    }
    Example:
 * */
class Student{
   String sName;
    String branch;
    int no;
  //all getter method definition.
  String get stdName{
    return sName;
  }
  String get stdBranch{
    return branch;
  }
  int get stdNo{
    return  no;
  }
 // all setter method definition.
  void set stdName(String name){
    this.sName = name;
  }

  void set stdBranch(String branch){
    this.branch = branch;
  }

  void set stdNo(int no) {
    if (no >= 20) {
      print("Student age should be greater than 20");
    } else {
      this.no = no;
    }
  }

}
/**
 * We can also place the getter and setter method just after the. Now, let's understand the following example:

    Example - 2
 * */
class Car {
    String makeDate;
    String modelName;
    int manufactureYear;
    int carAge;
    String color;

  //Getter method.
int get age{
  return carAge;
}

//setter method.
void set age(int currentYear){
  carAge = currentYear-manufactureYear;
}
//defining parameterized constructor.
Car({ this.makeDate, this.modelName,  this.manufactureYear,  this.color});


}
//Age here is both a getter and a setter. let's see how we can use it.


void main(){
  Student std = new Student();
  std.stdName="Vishal";
  std.stdNo=10;
  std.stdBranch ="Development";

  print("Student name is: ${std.stdName}");
  print("Student no is: ${std.stdNo}");
  print("Student branch is: ${std.stdBranch}");

  Car c= Car(makeDate: "Renault 20/03/2020", modelName: "Duster", manufactureYear: 2011, color: "Dark Brown0");
  print("The car company is: ${c.makeDate}");
  print("The modelName is:${c.modelName}");
  print("The color is :${c.color}");
  c.carAge =2020;
  print(c.carAge);
}
/**
 * In the above code, we defined the getter and setter methods before the constructor.
 * */

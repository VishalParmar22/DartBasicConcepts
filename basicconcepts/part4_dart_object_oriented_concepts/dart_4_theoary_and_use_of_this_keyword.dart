/**
 *Dart this Keyword
    The this keyword is used to refer the current class object.
    It indicates the current instance of the class, methods, or constructor.
    It can be also used to call the current class methods or constructors.
    It eliminates the uncertainty between class attributes and
    the parameter names are the same.
    If we declare the class attributes same as the parameter name,
    that situation will create ambiguity in the program,
    then the this keyword can remove the ambiguity by prefixing
    the class attributes. It can be passed as an argument in
    the class method or constructors.

    Let's understand the following example of how this keyword works.

    Example - Without using this keyword
 * */

class Mobile{
   String modelName;
   int manYear;

  //creating a constructor.
  Mobile(String modelName,int manYear){
    modelName =modelName;
    manYear=manYear;
    print("Mobile's model name is:${modelName} and its manufactured in :${manYear} ");

  }

}

void main(){
  Mobile m1= new Mobile("Galaxy", 2022);
  Mobile1 m2= new Mobile1(14698.56);

}

/***
 * Explanation:
    In the above program, we created a class called Mobile, which has two attributes modelname and man_year. Then, we created a constructor and passed parameters the same as the class attributes name.

    In the constructor body, the class variables (attributes) on the left side are assigned by the constructor parameters with the same name. When we create the instance of a class, the constructor automatically called the constructor and printed the result.

    The Dart compiler might get confused if there are a number of the same name parameters. The result is the compiler will create ambiguity. That's why we use the this keyword to refer the current class object.

    Example - 2: Using this keyword
 * */
class Mobile1{
   double price;
  Mobile1(double price){
   this.price=price; //here we have made use of this keyword to refer the instance of the current class.
    print("Price is:${price}");
  }
}
/**
 * Explanation:
    The above example is the same as the previous program, but the only difference of this keyword.

    this.price = price;

    We have used the this keyword to the different instance or class variable from the local variable.

    Points to Remember
    The this keyword is used to point the current class object.
    It can be used to refer to the present class variables.
    We can instantiate or invoke the current class constructor using this keyword.
    We can pass this keyword as a parameter in the constructor call.
    We can pass this keyword as a parameter in the method call.
    It removes the ambiguity or naming conflict in the constructor or method of our instance/object.
    It can be used to return the current class instance.

    Local Variable
    Local variables are defined in the methods, constructors, or blocks. It is created when we create a method or constructor, and it has scope only inside them. We cannot use a local variable outside the method, constructor, or block.

    Class Variable
    Class variable is also known as the static member variable, which is used to declare using the static keyword. It is declared in the class, but outside a constructor, method or a block. All instances share one copy of the class variable or we can say that class variables are common to all instances of that class.

    Instance Variable
    Instance variable is also known as the non-static, variable which is used to declare without the static keyword. The instance variables are specific by an object. These variables can be accessed using the instance of that class.

    Difference Between Class Variable and Instance Variable
    The following are the difference between the class variable and instance variable

    Sr.	Class Variable	Instance Variable
    1.	The class variable is declared using the static keyword in a class, but not in method and constructor.	The instance variable is declared in a class without using the static keyword.
    2.	The class variable can be accessed using the class name.
    Syntax:
    ClassName.variableName
    The instance variable can be accessed using the instance of that class.
    Syntax:
    ObjectRefernce.variableName
    3	The class variables are common to all instances of that class. All instances of the class share one copy of the static variable.	The instance variables are not common to all instance of class. Each object of particular will preserve its own copy of the instance variables.
    4	These are created when the program is started and destroys when the program is terminated.	The instance variables are created when an object of the particular class created using the new() keyword and destroys when the object is destroyed.

 * */

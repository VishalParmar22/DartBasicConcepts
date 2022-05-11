///
/// Dart Object-Oriented Concepts
/// Dart is an object-oriented programming language, and it supports all the concepts of object-oriented programming such as classes, object, inheritance, mixin, and abstract classes. As the name suggests, it focuses on the object and objects are the real-life entities. The Object-oriented programming approach is used to implement the concept like polymorphism, data-hiding, etc. The main goal of oops is to reduce programming complexity and do several tasks simultaneously. The oops concepts are given below.
///
/// Class
/// Object
/// Inheritance
/// Polymorphism
/// Interfaces
/// Abstract class
/// Below is the brief introduction of these oops concepts.
///
/// Class
/// Dart classes are defined as the blueprint of the associated objects. A Class is a user-defined data type that describes the characteristics and behavior of it. To get all properties of the class, we must create an object of that class. The syntax of the class is given below.
////
/// Syntax:
///
/// class ClassName {
///     <fields>
///     <getter/setter>
///     <constructor>
///     <functions>
/// }
/// Object
/// An object is a real-life entity such as a table, human, car, etc. The object has two characteristics - state and behavior. Let's take an example of a car which has a name, model name, price and behavior moving, stopping, etc. The object-oriented programming offers to identify the state and behavior of the object.
///
/// We can access the class properties by creating an object of that class. In Dart, The object can be created by using a new keyword followed by class name. The syntax is given below.
///
/// Syntax:
///
/// var objectName = new ClassName(<constructor_arguments>)
/// Inheritance
/// Dart supports inheritance, which is used to create new classes from an existing class. The class that to be extended is called parent /superclass, and the newly created class is called child/subclass. Dart provides extends keyword to inherit the properties of parent class in child class. The syntax is given below.
///
/// Syntax:
///
/// class child_class_name extends parent_class_name
/// Polymorphism
/// Polymorphism is an object-oriented programming concept where one thing has many forms. It can be two types - Runtime polymorphism and Compile time polymorphism. For example - A function has the same name but with a different behavior or class. Another example is the shape() class, and all the class inherited from the Rectangle, Triangle, and circle.
///
/// Interfaces
/// The interface is defined as a blueprint of the class. We can declare methods and variables inside the interface just like the class but in interface only abstract declaration of methods is provided. We can only define the function signature but not its body. Another class can implement the interface. It is basically used for data-hiding.
///
/// Abstract Class
/// A class that contains one or more abstract method is called an abstract class. We can declare the abstract class using the abstract keyword followed by class declaration. The syntax is given below.
///
/// Syntax:
///
/// abstract class ClassName {
///   //Body of abstract class
/// }
/// The above introductions give the basic idea of oops concepts. We will have a detailed discussion in upcoming tutorials.

/**
 *JavaTpoint
    Dart Packages
    Dart package is the collection of a well-organized, independent, and reusable code unit. Applications might be needed to implement third-party libraries or packages. The package generally contains a set of classes, functions, or unit of code for specific tasks along with the compiled program and sample data. Dart provides an extensive set of default packages that load automatically when the dart console starts. However, if we need packages other than the default packages then its need to installed and loaded explicitly in order to use. When a package is loaded, it can be used in the whole Dart environment.

    Dart Package Manager
    Every language provides the functionality for handling the external packages such as Nuget for .NET, Gradle or Maven for Java, npm for Node.js, etc. Dart has the inbuilt package manager, which is called a pub. It is basically used to organize, manage the third-party libraries, tools, dependencies, and also used to install the packages in the repository. Every Dart application consists of a pubspec.yaml file which includes the metadata of the file. The metadata of the package holds the author, version, application name, and description. The full form of the yaml is a Yet Another Markup Language. The pubspec.yaml is used to download the various libraries that application needs during programming. The pubspec.yaml file must look like as follows.

    name: 'vector_victor'
    version: 0.0.1
    description: An absolute bare-bones web app.
    ...
    dependencies: browser: '>=0.10.0 <0.11.0'
    The Dart IDE's provides the inbuilt support for using the pub that consist of creating, downloading, updating, and publishing packages, Otherwise we can use the pub command line. The following is the list of the few important pub commands.

    Sr. No	Description
    pub get	It is used to get all packages of application dependent on.
    pub upgrade	It is used to upgrade all application dependencies to the modern version.
    pub build	It is used to construct your web application, and it will create a build folder, with all related scripts in it.
    pub help	It is used to get help related to all pub commands or when we stuck while programming.
    Installing a Package
    The following steps are defining the installation of the package in the project.

    Step - 1: Write the package name in the dependencies section of project's pubspec.yaml file. Then run the below command to find the package installed in project.

    pub get
    The above command will download the package under the packages folder in the application directory.

    Example -
    name: TestApp
    version: 0.0.1
    description: A simple dart application
    dependencies:
    xml:
    We have added the xml to the project dependencies. Now we can use Dart XML package in the project by importing it. It can be imported as follows.

    import 'package:xml/xml.dart' as xml;
    Read XML String
    We can read XML string and authenticate the input; Dart XML provides a parse() method to read the string input. The syntax is given below.

    xml. parse(String input):
    Let's have a look at the following example:

    Example - Parsing XML String Input
    In the following example, we display the parsing XML string input.
 * */

void main(){
  print("xml");
  var bookStoreXml = ''' <?xml version="1.0"?> 
  <bookstore>
  <book>
  <title lang="English">Who will cry when you die</title>
  <price>150.30</price>
  </book>
  <book>
  <title lang="English">The Alchemist</title>
  <price>190.30</price>
  </book>
  </bookstore>
  ''';

 // var document =xml.parse(bookStoreXml);
  //print(document.toString());
}
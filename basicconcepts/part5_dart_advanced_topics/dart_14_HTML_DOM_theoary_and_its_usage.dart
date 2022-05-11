import 'dart:html';

/***
 * Dart HTML DOM
    Every webpage can be considered as object and it exists inside a browser window. We can access the webpage using the web browser and it needed connected to the internet. The DOM is the acronyms of Document object model. A Document object denotes the HTML document that is displayed in that window. The document object model consists of several properties that refer to the other objects which give the facility to modify the document content.

    The process that a content of document is accessed is called the Document Object Model, or DOM. The Objects are organized in a hierarchy. The hierarchical structure uses to the organization of objects in a web document.

    Window - It is the first in the hierarchy. It the outmost element of the object hierarchy.
    Document - When a HTML document loads into a window that it becomes a window object. The document includes the contents of the page.
    Elements - It denotes the content on the webpage. For example - Title, text box etc.
    Nodes - These are often elements, but they also be attributes, comments, text and other DOM types.
    Below is the hierarchy of the few important DOM objects.

    Dart HTML DOM
    We can manipulate the objects and element in the DOM by using the dart:html library. Console-based application cannot use the dart:html library. In work with the HTML library in the web application, we need to import the dart:html.

    import 'dart.html';
    Let's understand the DOM operation in the following section.

    Finding DOM Elements
    A document can contain many attributes sometime we need to search particular attribute. The dart:html library provides the querySelector function to search element in the DOM.

    Element querySelector(String selector);
    The querySelector() function returns the first element that matches the specified group of the selector. Let's understand the.

    following syntax.

    var element1 = document.querySelector('.className');
    var element2 = document.querySelector('#id');
    Let's understand the following example.

    Example -
    We create a HTML file name index.html and also create a dart file.

    We create a HTML file name index.html and also create a dart file.

    <!DOCTYPE html>
    <html>
    <head>
    <meta charset = "utf-8">
    <meta http-equiv = "X-UA-Compatible" content = "IE = edge">
    <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
    <meta name = "scaffolded-by" content = "https://github.com/google/stagehand">
    <title>DemoWebApp</title>
    <link rel = "stylesheet" href = "styles.css">
    <script defer src = "main.dart" type = "application/dart"></script>
    <script defer src = "packages/browser/dart.js"></script>
    </head>

    <body>
    <h1>
    <div id = "output"></div>
    </h1>
    </body>
    </html>
    Main.dart
    import 'dart:html';
    void main() {
    querySelector('#output').text = 'Your Dart web dom app is running!!!.';
    }
    Event Handling
    The dart:html library provides the onClick event for DOM Elements. The syntax shows how an element could handle a stream of click events.

    querySelector('#Id').onClick.listen(eventHanlderFunction);
    The querySelector() function returns the element from the given DOM and onClick.listen() will take an eventHandler method which will be invoked when a click event is raised. The syntax of eventHandler is given below ?

    void eventHanlderFunction (MouseEvent event){ }
    Let us now take an example to understand the concept of Event Handling in Dart.

    TestEvent.html

    <!DOCTYPE html>
    <html>
    <head>
    <meta charset = "utf-8">
    <meta http-equiv = "X-UA-Compatible" content = "IE = edge">
    <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
    <meta name = "scaffolded-by" content ="https://github.com/google/stagehand">
    <title>DemoWebApp</title>
    <link rel = "stylesheet" href = "styles.css">
    <script defer src = "TestEvent.dart" type="application/dart"></script>
    <script defer src = "packages/browser/dart.js"></script>
    </head>
    <body>
    <div id = "output"></div>
    <h1>
    <div>
    Enter you name : <input type = "text" id = "txtName">
    <input type = "button" id = "btnWish" value="Wish">
    </div>
    </h1>
    <h2 id = "display"></h2>
    TestEvent.dart

    import 'dart:html';
    void main() {
    querySelector('#btnWish').onClick.listen(wishHandler);
    }
    void wishHandler(MouseEvent event){
    String name = (querySelector('#txtName')  as InputElement).value;
    querySelector('#display').text = 'Hello Mr.'+ name;
    }
 * */

void main(){
  querySelector('#output').text="Your Dart web dom app is running";

}
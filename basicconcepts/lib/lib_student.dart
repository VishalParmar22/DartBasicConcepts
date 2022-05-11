/**
 * Creating Metadata Annotation
    In Dart, we can define our own metadata annotations.

    Let's understand the following example -

    Example -
    Here's an example of defining a @student annotation that takes two arguments -
 * */
library student;
class Student{
   final String studentName;
   final String rollNo;
  const Student(this.studentName,this.rollNo);
}
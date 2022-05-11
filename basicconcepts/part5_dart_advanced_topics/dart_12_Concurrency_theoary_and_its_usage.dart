import 'dart:isolate';

/**
 * What is Concurrency?
    The Dart concurrency allows us to run multiple programs or
    multiple parts of a program simultaneously. It executes the
    several instructions at the same time. Dart provides the Isolates as a
    tool for doing works for parallel. The concurrency makes
    the program highly effective and throughput by utilizing
    the unused capabilities of essential operating system and machine hardware.

    How to achieve concurrency?
    In Dart, we can achieve concurrency by using the Isolates.
    We have discussed Dart isolates in previous tutorial.
    Here we will understand the brief introduction of it.
    Dart isolate is a version of the thread.
    But there is key difference between the common implementation
    of "Thread" or "Isolates". The isolate works differently in
    comparison of Thread. The isolates are independent workers that
    do not share memory, but instead interconnect by passing message
    over channels. Since isolates completes its task by passing message
    thus it need a way to serialize a message.

    The communication between the isolates is done by the message passing
    as a client and server. It helps the program to take advantage of
    multicore microprocessor out of the box.

    Dart provides the dart:isolate package to apply the isolate in
    our program. It provides the solution to taking single-threaded
    Dart code and allowing application to make greater use of the
    hardware available.

    Let's understand the following example -

    Example -
 * */

void sayHii(var msg){
  
  print("execution from sayHii..the message is:${msg}");
}

void main(){
  Isolate.spawn(sayHii,"Vishal");
  Isolate.spawn(sayHii,"Umang");
  Isolate.spawn(sayHii,"Harsh");

  print("Execution from main1");
  print("Execution from main2");
  print("Execution from main3");
/**
 * The concept of the above code is similar to the dart isolates.
 * If we run the above program multiple times,
 * then output will be varied every time.
 * */
}
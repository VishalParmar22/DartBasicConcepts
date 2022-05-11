import 'dart:async';
import 'dart:io';
import 'dart:isolate';

/**
 * Dart Isolates
    Dart allows us to asynchronous programming which runs our program
    without getting blocked. The asynchronous programming is used
    to achieve concurrency. Dart isolate is a version of the thread.
    But there is key difference between the common implementation of
    "Thread" or "Isolates". The isolate works differently in comparison of
    Thread. The isolates are independent workers that do not share memory,
    but instead interconnect by passing message over channels.
    Since isolates completes its task by passing message thus it need a way
    to serialize a message.

    The communication between the isolates is done by the message passing
    as a client and server. It helps the program to take advantage of
    multicore microprocessor out of the box.

    Dart provides the dart:isolate package to apply the isolate
    in our program. It provides the solution to taking single-threaded
    Dart code and allowing application to make greater use of
    the hardware available.

    Create and Start an Isolate
    Dart provides the spawn() method to create an isolate.
    It must be declared with an 'entry point' with a single parameter.
    This parameter displays a port which isolate use
    to refer back notification message.

    Let's understand the following example -

    Example -
 * */

void sayHii(var msg){
  print("execution from sayHii....the message is:${msg}");
}

 Isolate isolate;
 start()async{
  ReceivePort rcvPort = ReceivePort();
  //Port for isolate to receive message.
  isolate =await Isolate.spawn(runTimer,rcvPort.sendPort);
rcvPort.listen((message) {
  stdout.write("Receiving:"+message+",");
});
}

void runTimer(SendPort sendPort){
  int count=0;
  Timer.periodic(new Duration(seconds: 1),(Timer t){
    count++;
    String msg="Notification"+count.toString();
    stdout.write("Sending:"+msg+"-");
    sendPort.send(msg);
  });
}

/***
 * Explanation:
    In the above code, we created an asynchronous method start()
    which creates a port and spawn an isolate. We signified the
    start method as async because of wan can await the response from
    the spawning of the isolates and to store a reference to
    the new isolate.
    It is essential when we want to kill the running isolates.
    We passed the two parameters in the spawn() method,
    the first parameter runTimer method, that is a callback
    function to execute runTimer() and second parameter sendPort
    which is a callback function and it will used to send message back
    to the caller. The start() method starts listening the receiverPort
    for message from isolate. Once it will receive the message
    then it will print as a console output.

    The runTimer() method begins a timer that fires every second in order
    to update a counter. It sends a notification message via
    the port which it received when the isolate was spawned.

    Stop an Isolate
    The dart: isolates package provides the kill() method which is used
    to stop a running isolate.

    Let's understand the following example.

    Example -
 * */
void stop(){
  if(isolate !=null){
    stdout.writeln("Stopping Isolate");
    isolate.kill(priority: Isolate.immediate);
    isolate=Null as Isolate;
  }
}
void main() async{
  Isolate.spawn(sayHii,"Vishal");
  Isolate.spawn(sayHii,"Umang");
  Isolate.spawn(sayHii,"Harsh");

  print("execution from  main1");
  print("execution from  main2");
  print("execution from  main3");

  /**
   * Explanation:
      In the above program, the spawn method of the isolate class
      executed a function sayhii in parallel of remaining code.
      It takes two parameters.

      The function that we want to spawned and the string
      that will be passed to the spawned function.
      We have two functions sayhii() and main() function might not
      run in the same order each time. If you run the above program,
      then the output will be different each time as we can see in
      second output.

      Note - We can also pass NULL value if there is no object
      to pass in spawned function.
      Let's understand the another example -

      Example - 2
   * */
  stdout.writeln("Starting Isolate....");
  await start();
  stdout.writeln("Hit enter key to quit");

  await stdin.first;
  stop();
  stdout.writeln("Okay!");
  exit(0);
}
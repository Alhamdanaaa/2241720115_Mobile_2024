import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Alhamdana',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  late StreamSubscription subscription2;
  String values = '';

  late StreamSubscription subscription;
  late StreamTransformer transformer;

  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  void stopStream() {
    numberStreamController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Alhamdana'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(values),
            ElevatedButton(
              onPressed: addRandomNumber,
              child: Text('New Random Number'),
            ),
            ElevatedButton(
                onPressed: () => stopStream(),
                child: const Text('Stop Subscription')),
          ],
        ),
      ),
    );
  }

  void changeColor() async {
    // await for (var eventColor in colorStream.getColors()) {
    //   setState(() {
    //     bgColor = eventColor;
    //   });
    // }

    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  @override
  void initState() {
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream.asBroadcastStream();
    subscription = stream.listen((event) {
      setState(() {
        values += '$event - ';
      });
    });
    subscription2 = stream.listen((event) {
      setState(() {
        values += '$event - ';
      });
    });
    subscription.onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });
    subscription.onDone(() {
      print('OnDone was called');
    });
    super.initState();
  }
  // @override
  // void initState() {
  //   transformer = StreamTransformer<int,int>.fromHandlers(
  //     handleData: (value, sink) {
  //       sink.add(value * 10);
  //     },
  //     handleError: (error, trace, sink) {
  //       sink.add(-1);
  //     },
  //     handleDone: (sink) => sink.close()
  //   );

  //   numberStream = NumberStream();
  //   numberStreamController = numberStream.controller;
  //   Stream stream = numberStreamController.stream;
  //   // stream.listen((event) {
  //   //   setState(() {
  //   //     lastNumber = event;
  //   //   });
  //   // }).onError((error) {
  //   //   setState(() {
  //   //     lastNumber = -1;
  //   //   });
  //   // });
  //   stream.transform(transformer).listen((event) {
  //     setState(() {
  //       lastNumber = event;
  //     });
  //   }).onError((error){
  //     setState(() {
  //       lastNumber = -1;
  //     });
  //   });
  //   super.initState();
  // }

  @override
  void dispose() {
    numberStreamController.close();
    super.dispose();
    subscription.cancel();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
  }
}

import 'package:flutter/material.dart';





class GSKWaitScreenMessages {
  final Map<String, String> _waitMessages = {};
  void addANewMessage(String waitKey, waitMessages) {
    print(_waitMessages.length);
    _waitMessages[waitKey] = waitMessages;
    print(_waitMessages);
    /*setState(() {
    });*/
  }
  void removeAMessage (String waitKey) {
    _waitMessages.remove(waitKey);
  }
  int messagesLength () {
    return _waitMessages.length;
  }
}

class GSKWaitScreen extends StatefulWidget {

  GSKWaitScreen({Key key, this.endWidget, this.waitMessages}) : super(key: key);
  final Widget endWidget;
  final GSKWaitScreenMessages waitMessages;


  final GlobalKey<_GSKWaitScreenState> gskWaitScreenStateKey = GlobalKey<_GSKWaitScreenState>();


  @override
  _GSKWaitScreenState createState() => _GSKWaitScreenState();
}

class _GSKWaitScreenState extends State<GSKWaitScreen> {


  void refresh() {
    setState(() {
      
    });
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.gskWaitScreenStateKey,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: (widget.waitMessages.messagesLength()==0 ? 
          
          widget.endWidget
          : 
          Text('Loading'))
        ),
    );
  }






}
import 'package:flutter/material.dart';

void main() {
  runApp( new FriendlyChatApp());
}

class FriendlyChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext widget) {
    return new MaterialApp(
      home: new ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext widget) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text('Fiendly Chat app'),
    ),
    );
  }
}

// Add the following class definition to main.dart.

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text});
  final String text;
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: new CircleAvatar(child: new Text(_name[0])),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name, style: Theme.of(context).textTheme.subhead),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: new Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

const String _name = "Ram";

class ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = <ChatMessage>[];             // new
  final TextEditingController _textController = new TextEditingController();

  Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(title: new Text("Friendlychat")),
    body: new Column(                                        //modified
      children: <Widget>[                                         //new
        new Flexible(                                             //new
          child: new ListView.builder(                            //new 
            padding: new EdgeInsets.all(8.0),                     //new
            reverse: true,                                        //new
            itemBuilder: (_, int index) => _messages[index],      //new
            itemCount: _messages.length,                          //new
          ),                                                      //new
        ),                                                        //new
        new Divider(height: 1.0),                                 //new
        new Container(                                            //new
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor),                  //new
          child: _buildTextComposer(),                       //modified
        ),                                                        //new
      ],                                                          //new
    ),                                                            //new
  );
}

}

// Modify the code in the _handleSubmitted method definition.

void _handleSubmitted(String text) {
  _textController.clear();
    ChatMessage message = new ChatMessage(                         //new
      text: text,                                                  //new
    );                                                             //new
    setState(() {                                                  //new
      _messages.insert(0, message);                                //new
    });                                                            //new
 }
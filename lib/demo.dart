import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
//creating instances
io.Socket? socket;

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  //init state
  @override
  void initState() {
    super.initState();
    initSocket();
  }
  //dispose state .closing state
  @override
  void dispose() {
    socket?.disconnect();
    socket?.dispose();
    super.dispose();
  }

  initSocket() {
    socket = io.io("http://192.168.1.159", <String, dynamic>{
      'autoConnect': true,
      'transports': ['websocket'],
    });
    socket?.connect();
    socket?.onConnect((_) {
      print('websocket Connection established');
    });
    socket?.onDisconnect((_) => print('websocket Connection Disconnection'));
    socket?.onError((err) {
      print("websocket Error is $err");
    });

    // Add this line to enable debug logs
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: GestureDetector(
          onTap: (){
            socket?.emit("message", "Hello");
          }
          ,child: const Text("Flutter"))),
    );
  }
}

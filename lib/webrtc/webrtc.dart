import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class Webrtc extends StatefulWidget {
  const Webrtc({super.key});

  @override
  State<Webrtc> createState() => _WebrtcState();
}

class _WebrtcState extends State<Webrtc> {
  final RTCVideoRenderer _localRenderer = RTCVideoRenderer();
  final RTCVideoRenderer _remoteRenderer = RTCVideoRenderer();

  @override
  void initState() {
    _localRenderer.initialize();
    _remoteRenderer.initialize();
    super.initState();
  }

  @override
  void dispose() {
    _localRenderer.dispose();
    _remoteRenderer.dispose();
    super.dispose();
  }
  enableUserMediaStream(){

  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: enableUserMediaStream, child: const Text("Turn Camera On"));
  }
}

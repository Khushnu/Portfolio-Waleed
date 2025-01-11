// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RTMPStreamPage extends StatefulWidget {
  const RTMPStreamPage({super.key});

  @override
  _RTMPStreamPageState createState() => _RTMPStreamPageState();
}

class _RTMPStreamPageState extends State<RTMPStreamPage> {
  int? _textureId;
  static const MethodChannel _channel = MethodChannel('com.example.rtmp');

  @override
  void initState() {
    super.initState();
    _initializeStream();
  }

  Future<void> _initializeStream() async {
    try {
      final textureId = await _channel.invokeMethod<int>('createTexture');
      setState(() {
        _textureId = textureId;
      });
    } catch (e) {
      print("Error initializing texture: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RTMP Streaming")),
      body: Column(
        children: [
          Expanded(
            child: _textureId != null
                ? Texture(textureId: _textureId!)
                : Center(child: CircularProgressIndicator()),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () async {
                final rtmpUrl = "rtmp://your.rtmp.server/live/stream_key";
                await _channel.invokeMethod('startStream', {'url': rtmpUrl});
              },
              child: Text("Start Stream"),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await _channel.invokeMethod('stopStream');
            },
            child: Text("Stop Stream"),
          ),
        ],
      ),
    );
  }
}

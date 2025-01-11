
import 'dart:convert';

// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:haishin_kit/audio_source.dart';
import 'package:haishin_kit/rtmp_connection.dart';
import 'package:haishin_kit/rtmp_stream.dart';
import 'package:haishin_kit/stream_view_texture.dart';
import 'package:haishin_kit/video_source.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;


class IosLiveStreamWidget extends StatefulWidget {
  const IosLiveStreamWidget({super.key});

  @override
  IosLiveStreamWidgetState createState() => IosLiveStreamWidgetState();
}

class IosLiveStreamWidgetState extends State<IosLiveStreamWidget> {
  RtmpConnection? _connection;
  RtmpStream? _stream;
  bool _isStreaming = false;
  bool _isLoading = false;
  bool isCameraOpen = false;
   String? _streamUrl;
  // CameraController? _cameraController;
  // String _streamUrl = "rtmp://a.rtmp.youtube.com/live2/b6yj-tz3x-ua25-tje8-c9r1";

  @override
  void initState() {
    super.initState();
    _initializeStreaming();
  }

  Future<void> _initializeStreaming() async {
    await Permission.camera.request();
    await Permission.microphone.request();

    final connection = await RtmpConnection.create();
    connection.eventChannel.receiveBroadcastStream().listen((event) {
     print(event["data"]["code"]);
       switch (event["data"]["code"]) {
        case 'NetConnection.Connect.Closed':
          setState(() {
            _isStreaming = false;
          });
          _stopStreaming();
          break;
        
    //  print("Events $event");
      }

  //    final parsedData = jsonDecode(event);
  // debugPrint('Parsed JSON: $parsedData');
      debugPrint("RTMP Event: $event");
    });

    final stream = await RtmpStream.create(connection);
    stream.attachAudio(AudioSource());
    stream.attachVideo(VideoSource(position: CameraPosition.back));

    setState(() {
      _connection = connection;
      _stream = stream;
    });
  }

  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  Future<void> _startStreaming() async {
    // if (_connection == null || _stream == null) {
    //   _showError("Streaming setup is incomplete.");
    //   return;
    // }

    try {
       _connection!.connect("rtmp://a.rtmp.youtube.com/live2");
      await _stream!.publish("rkac-40w3-9v0y-zzgd-8gf1");
      setState(() {
        _isStreaming = true;
      });
      _showSuccess("Streaming started successfully!");
    } catch (e) {
      _showError("Failed to start streaming: $e");
    }
  }

//   Future<void> _startStreaming() async {
//      final pageNotifier = Provider.of<PageNotifier>(context, listen: false);
// //  if (_cameraController == null || !(_cameraController!.value.isInitialized ?? false)) {
// //     showError("Camera is not initialized.");
// //     return;
// //   }
//     if (pageNotifier.streamData.isEmpty) {
//       showError("Stream details are not available. Fetch the data first.");
//       return;
//     }

//     final streamDetails = pageNotifier.streamData;
//     final ingestionUrl = streamDetails['stream_url']?['ingestionAddress'];
//     final streamName = streamDetails['stream_url']?['streamName'];

//     if (ingestionUrl == null || streamName == null) {
//       showError("Missing ingestion URL or stream name.");
//       return;
//     }

//     _streamUrl = "$ingestionUrl/$streamName";

//     // if (_cameraController == null ||
//     //     !(_cameraController!.value.isInitialized )) {
//     //   showError("Camera is not initialized.");
//     //   return;
//     // }
//     if (_connection == null || _stream == null) {
//       _showError("Streaming setup is incomplete.");
//       return;
//     }
  
//     try {
//        _connection!.connect(ingestionUrl);
//       await _stream!.publish(streamName);
//       setState(() {
//         _isStreaming = true;
//       });
//       _showSuccess("Streaming started successfully!");
//     } catch (e) {
//       _showError("Failed to start streaming: $e");
//     }
//   }

  Future<void> _stopStreaming() async {
    try {
       _connection?.close();
      setState(() {
        _isStreaming = false;
      });
      _showSuccess("Streaming stopped.");
    } catch (e) {
      _showError("Failed to stop streaming: $e");
    }
  }

  // Future<void> _fetchStreamData() async {
  //   final pageNotifier = Provider.of<PageNotifier>(context, listen: false);

  //   final liveStreamUrl = pageNotifier.liveStreamUrl;
  //   final accessToken = pageNotifier.accessToken;

  //   if (liveStreamUrl.isEmpty || accessToken.isEmpty) {
  //     showError('LiveStream URL or Access Token is missing.');
  //     return;
  //   }

  //   setState(() {
  //     _isLoading = true;
  //   });

  //   try {
  //     final response = await http.get(
  //       Uri.parse('$liveStreamUrl?access_token=$accessToken'),
  //     );

  //     if (response.statusCode == 200) {
  //       final responseData = json.decode(response.body);
  //       final streamData = responseData;
  //       pageNotifier.setStreamData(streamData);
  //       debugPrint('Stream data fetched successfully.');
  //     } else {
  //       showError('HTTP Error: ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     showError('Failed to fetch stream data: $e');
  //   } finally {
  //     setState(() {
  //       _isLoading = false;
  //     });
  //   }
  // }

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  @override
  void dispose() {
    _stream?.dispose();
    _connection?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if(isCameraOpen)
        if (_stream != null) SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        
          child:
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Container(height: 80, width: 80, child: Icon(Icons.close, color: Colors.white,),),
            // ),
             StreamViewTexture(_stream!), 
             
            ),
             
        Padding(
          padding: const EdgeInsets.all(8.0).copyWith(bottom: 40),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //  GestureDetector(
                // onTap: (){
                
                // },
                // child: 
                // Container(height: 80, width: 80, child: Icon(Icons.close, color: Colors.white,),))
                  FloatingActionButton(
                  onPressed: (){
                      setState(() {
                    isCameraOpen = !isCameraOpen;
                  });
                  },
                  tooltip: 'Fetch Stream Data',
                  child: Icon(isCameraOpen ? Icons.close :Icons.camera),
                ),
                SizedBox(height: 15),

                //   FloatingActionButton(
                //   onPressed: _fetchStreamData,
                //   tooltip: 'Fetch Stream Data',
                //   child: _isLoading
                //       ? const CircularProgressIndicator(color: Colors.white)
                //       : const Icon(Icons.cloud_download),
                // ),
                SizedBox(height: 15),
                FloatingActionButton(
                  onPressed: _isStreaming ? _stopStreaming : _startStreaming,
                  tooltip: _isStreaming ? 'Stop Streaming' : 'Start Streaming',
                  child: Icon(_isStreaming ? Icons.stop : Icons.videocam),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
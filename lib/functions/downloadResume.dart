// ignore_for_file: unused_local_variable

// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:typed_data';
import 'package:flutter_application_2/functions/notifySnackBar.dart';
import 'package:http/http.dart' as http;

// Function to convert normal GitHub link to raw link
String convertToRawLink(String url) {
  // Check if the URL is a valid GitHub link
  if (url.contains('github.com') && url.contains('/blob/')) {
   
    String rawLink = url
        .replaceFirst('github.com', 'raw.githubusercontent.com')
        .replaceFirst('/blob/', '/');
    // print(rawLink);
    return rawLink;
  } else {
    // Return the original URL if it's not in the expected format
    return 'Invalid GitHub file link';
  }
}

// Function to download a file from a URL
Future<void> downloadResume(String url) async {
  // Convert the URL to raw format if it's a GitHub link
  String downloadUrl = convertToRawLink(url);

  // Check if the URL is valid for download
  if (downloadUrl == 'Invalid GitHub file link') {
    const AnimatedSnackBar(message: 'Invalid URL format');
    return;
  }

  // Fetch the PDF file as bytes
  final response = await http.get(Uri.parse(downloadUrl));

  if (response.statusCode == 200) {
    // Convert the response body to Uint8List
    final bytes = Uint8List.fromList(response.bodyBytes);

    // Create a blob from the bytes
    final blob = Blob([bytes]);

    // Create an object URL for the blob
    final url = Url.createObjectUrlFromBlob(blob);

    // Create an anchor element to trigger the download
    final anchorElement = AnchorElement(href: url)
      ..download = "Waleed_Flutter_Resume.pdf" // File name for download
      ..click();

    // Clean up the object URL after download
    Url.revokeObjectUrl(url);
  } else {
    AnimatedSnackBar(
      message: 'Failed to download file: ${response.statusCode}',
    );
  }
}

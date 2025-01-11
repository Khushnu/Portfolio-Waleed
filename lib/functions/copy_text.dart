
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/functions/notifySnackBar.dart';

void copyTextToClipboard(BuildContext context, String text) {
  Clipboard.setData(ClipboardData(text: text));
  notifySnackBar(context, "Text copied to clipboard");
}

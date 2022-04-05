import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckYourPlatform {
  static yourPlatform() {
  if (Platform.isAndroid) {
    return const CircularProgressIndicator();
  } else if (Platform.isIOS) {
    return const CupertinoActivityIndicator();
  } else {
    return const Text("Please wait!");
  }
}
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogBuilder {
  static buildDialog({String title, String content, List<Widget> actions}) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: actions,
    );
  }
}

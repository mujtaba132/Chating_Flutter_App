import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:flutter/material.dart';

Widget statusIcon(MessageStatus status) {
  switch (status) {
    case MessageStatus.pending:
      return const Icon(
        Icons.timer_sharp,
        size: 15,
        color: Colors.grey,
      );

    case MessageStatus.sent:
      return const Icon(
        Icons.check,
        size: 15,
        color: Colors.grey,
      );

    case MessageStatus.delivered:
      return const Icon(
        Icons.done_all,
        size: 15,
        color: Colors.grey,
      );

    case MessageStatus.read:
      return const Icon(
        Icons.done_all,
        size: 15,
        color: Colors.blue,
      );
  }
}
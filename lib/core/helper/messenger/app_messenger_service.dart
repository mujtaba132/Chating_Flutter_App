import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:flutter/material.dart';

import 'app_message.dart';
import 'app_messenger.dart';


class AppMessengerService {
  AppMessengerService._();

  static final AppMessengerService instance =
      AppMessengerService._();

  ScaffoldMessengerState? get _messenger =>
      scaffoldMessengerKey.currentState;

  void show({
    required String message,
    required AppMessageType type,
    String? title,
    IconData? icon,
    Duration duration = const Duration(seconds: 3),
    SnackBarAction? action,
  }) {
    final messenger = _messenger;

    if (messenger == null) return;

    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: AppMessage(
            message: message,
            title: title,
            type: type,
            icon: icon,
          ),
          duration: duration,
          behavior: SnackBarBehavior.floating,
          elevation: 0,
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.zero,
          margin: const EdgeInsets.fromLTRB(
            16,
            0,
            16,
            20,
          ),
          action: action,
        ),
      );
  }

  void success(
    String message, {
    String? title,
    Duration duration = const Duration(seconds: 3),
  }) {
    show(
      message: message,
      title: title,
      type: AppMessageType.success,
      duration: duration,
    );
  }

  void error(
    String message, {
    String? title,
    Duration duration = const Duration(seconds: 4),
  }) {
    show(
      message: message,
      title: title,
      type: AppMessageType.error,
      duration: duration,
    );
  }

  void warning(
    String message, {
    String? title,
    Duration duration = const Duration(seconds: 3),
  }) {
    show(
      message: message,
      title: title,
      type: AppMessageType.warning,
      duration: duration,
    );
  }

  void info(
    String message, {
    String? title,
    Duration duration = const Duration(seconds: 3),
  }) {
    show(
      message: message,
      title: title,
      type: AppMessageType.info,
      duration: duration,
    );
  }

  void hide() {
    _messenger?.hideCurrentSnackBar();
  }
}
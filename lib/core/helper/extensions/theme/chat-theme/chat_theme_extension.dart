import 'package:flutter/material.dart';

@immutable
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  // ===========================================================================
  // BACKGROUND
  // ===========================================================================

  final Color background;
  final Color backgroundSecondary;

  // ===========================================================================
  // SURFACE
  // ===========================================================================

  final Color surface;
  final Color surfaceSecondary;
  final Color surfaceElevated;

  // ===========================================================================
  // TEXT
  // ===========================================================================

  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textDisabled;
  final Color textOnPrimary;

  // ===========================================================================
  // BORDER / DIVIDER
  // ===========================================================================

  final Color border;
  final Color borderFocused;
  final Color divider;

  // ===========================================================================
  // INTERACTIVE
  // ===========================================================================

  final Color primary;
  final Color primaryContainer;
  final Color onPrimary;

  // ===========================================================================
  // STATUS
  // ===========================================================================

  final Color success;
  final Color warning;
  final Color error;
  final Color info;

  // ===========================================================================
  // STATE
  // ===========================================================================

  final Color disabled;
  final Color selected;
  final Color pressed;
  final Color hover;

  // ===========================================================================
  // CHAT
  // ===========================================================================

  final Color chatBackground;

  final Color sentMessageBubble;
  final Color receivedMessageBubble;

  final Color sentMessageText;
  final Color receivedMessageText;

  final Color messageTime;

  final Color messageSent;
  final Color messageDelivered;
  final Color messageRead;

  final Color online;
  final Color offline;
  final Color typing;

  final Color unreadBadge;

  final Color chatInputBackground;
  final Color chatInputBorder;

  const AppThemeExtension({
    // Background
    required this.background,
    required this.backgroundSecondary,

    // Surface
    required this.surface,
    required this.surfaceSecondary,
    required this.surfaceElevated,

    // Text
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textDisabled,
    required this.textOnPrimary,

    // Border
    required this.border,
    required this.borderFocused,
    required this.divider,

    // Interactive
    required this.primary,
    required this.primaryContainer,
    required this.onPrimary,

    // Status
    required this.success,
    required this.warning,
    required this.error,
    required this.info,

    // State
    required this.disabled,
    required this.selected,
    required this.pressed,
    required this.hover,

    // Chat
    required this.chatBackground,
    required this.sentMessageBubble,
    required this.receivedMessageBubble,
    required this.sentMessageText,
    required this.receivedMessageText,
    required this.messageTime,
    required this.messageSent,
    required this.messageDelivered,
    required this.messageRead,
    required this.online,
    required this.offline,
    required this.typing,
    required this.unreadBadge,
    required this.chatInputBackground,
    required this.chatInputBorder,
  });

  // ===========================================================================
  // COPY WITH
  // ===========================================================================

  @override
  AppThemeExtension copyWith({
    Color? background,
    Color? backgroundSecondary,

    Color? surface,
    Color? surfaceSecondary,
    Color? surfaceElevated,

    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? textDisabled,
    Color? textOnPrimary,

    Color? border,
    Color? borderFocused,
    Color? divider,

    Color? primary,
    Color? primaryContainer,
    Color? onPrimary,

    Color? success,
    Color? warning,
    Color? error,
    Color? info,

    Color? disabled,
    Color? selected,
    Color? pressed,
    Color? hover,

    Color? chatBackground,
    Color? sentMessageBubble,
    Color? receivedMessageBubble,
    Color? sentMessageText,
    Color? receivedMessageText,
    Color? messageTime,
    Color? messageSent,
    Color? messageDelivered,
    Color? messageRead,
    Color? online,
    Color? offline,
    Color? typing,
    Color? unreadBadge,
    Color? chatInputBackground,
    Color? chatInputBorder,
  }) {
    return AppThemeExtension(
      background: background ?? this.background,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,

      surface: surface ?? this.surface,
      surfaceSecondary: surfaceSecondary ?? this.surfaceSecondary,
      surfaceElevated: surfaceElevated ?? this.surfaceElevated,

      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      textDisabled: textDisabled ?? this.textDisabled,
      textOnPrimary: textOnPrimary ?? this.textOnPrimary,

      border: border ?? this.border,
      borderFocused: borderFocused ?? this.borderFocused,
      divider: divider ?? this.divider,

      primary: primary ?? this.primary,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      onPrimary: onPrimary ?? this.onPrimary,

      success: success ?? this.success,
      warning: warning ?? this.warning,
      error: error ?? this.error,
      info: info ?? this.info,

      disabled: disabled ?? this.disabled,
      selected: selected ?? this.selected,
      pressed: pressed ?? this.pressed,
      hover: hover ?? this.hover,

      chatBackground: chatBackground ?? this.chatBackground,
      sentMessageBubble: sentMessageBubble ?? this.sentMessageBubble,
      receivedMessageBubble:
          receivedMessageBubble ?? this.receivedMessageBubble,

      sentMessageText: sentMessageText ?? this.sentMessageText,
      receivedMessageText: receivedMessageText ?? this.receivedMessageText,

      messageTime: messageTime ?? this.messageTime,

      messageSent: messageSent ?? this.messageSent,
      messageDelivered: messageDelivered ?? this.messageDelivered,
      messageRead: messageRead ?? this.messageRead,

      online: online ?? this.online,
      offline: offline ?? this.offline,
      typing: typing ?? this.typing,

      unreadBadge: unreadBadge ?? this.unreadBadge,

      chatInputBackground: chatInputBackground ?? this.chatInputBackground,
      chatInputBorder: chatInputBorder ?? this.chatInputBorder,
    );
  }

  // ===========================================================================
  // LERP
  // ===========================================================================

  @override
  AppThemeExtension lerp(
    covariant ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) {
      return this;
    }

    return AppThemeExtension(
      background: Color.lerp(background, other.background, t)!,
      backgroundSecondary: Color.lerp(
        backgroundSecondary,
        other.backgroundSecondary,
        t,
      )!,

      surface: Color.lerp(surface, other.surface, t)!,
      surfaceSecondary: Color.lerp(
        surfaceSecondary,
        other.surfaceSecondary,
        t,
      )!,
      surfaceElevated: Color.lerp(surfaceElevated, other.surfaceElevated, t)!,

      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      textDisabled: Color.lerp(textDisabled, other.textDisabled, t)!,
      textOnPrimary: Color.lerp(textOnPrimary, other.textOnPrimary, t)!,

      border: Color.lerp(border, other.border, t)!,
      borderFocused: Color.lerp(borderFocused, other.borderFocused, t)!,
      divider: Color.lerp(divider, other.divider, t)!,

      primary: Color.lerp(primary, other.primary, t)!,
      primaryContainer: Color.lerp(
        primaryContainer,
        other.primaryContainer,
        t,
      )!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,

      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
      info: Color.lerp(info, other.info, t)!,

      disabled: Color.lerp(disabled, other.disabled, t)!,
      selected: Color.lerp(selected, other.selected, t)!,
      pressed: Color.lerp(pressed, other.pressed, t)!,
      hover: Color.lerp(hover, other.hover, t)!,

      chatBackground: Color.lerp(chatBackground, other.chatBackground, t)!,

      sentMessageBubble: Color.lerp(
        sentMessageBubble,
        other.sentMessageBubble,
        t,
      )!,

      receivedMessageBubble: Color.lerp(
        receivedMessageBubble,
        other.receivedMessageBubble,
        t,
      )!,

      sentMessageText: Color.lerp(sentMessageText, other.sentMessageText, t)!,

      receivedMessageText: Color.lerp(
        receivedMessageText,
        other.receivedMessageText,
        t,
      )!,

      messageTime: Color.lerp(messageTime, other.messageTime, t)!,

      messageSent: Color.lerp(messageSent, other.messageSent, t)!,

      messageDelivered: Color.lerp(
        messageDelivered,
        other.messageDelivered,
        t,
      )!,

      messageRead: Color.lerp(messageRead, other.messageRead, t)!,

      online: Color.lerp(online, other.online, t)!,
      offline: Color.lerp(offline, other.offline, t)!,
      typing: Color.lerp(typing, other.typing, t)!,

      unreadBadge: Color.lerp(unreadBadge, other.unreadBadge, t)!,

      chatInputBackground: Color.lerp(
        chatInputBackground,
        other.chatInputBackground,
        t,
      )!,

      chatInputBorder: Color.lerp(chatInputBorder, other.chatInputBorder, t)!,
    );
  }
}

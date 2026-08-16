import 'package:chat_app/core/helper/extensions/theme/chat-theme/chat_theme_extension.dart';

import '../../app_colors.dart';

abstract final class LightThemeExtension {
  static AppThemeExtension get light {
    return AppThemeExtension(
     
      background: AppColors.lightBackground,
      backgroundSecondary: AppColors.lightSurfaceVariant,


      surface: AppColors.lightSurface,
      surfaceSecondary: AppColors.lightSurfaceVariant,
      surfaceElevated: AppColors.lightSurface,

      

      textPrimary: AppColors.lightTextPrimary,
      textSecondary: AppColors.lightTextSecondary,
      textTertiary: AppColors.lightTextTertiary,
      textDisabled: AppColors.lightTextTertiary,
      textOnPrimary: AppColors.white,

     
      border: AppColors.lightBorder,
      borderFocused: AppColors.primary,
      divider: AppColors.lightDivider,


      primary: AppColors.primary,
      primaryContainer: AppColors.primaryContainerLight,
      onPrimary: AppColors.white,

 
      success: AppColors.success,
      warning: AppColors.warning,
      error: AppColors.error,
      info: AppColors.info,

      
      disabled: AppColors.lightTextTertiary,
      selected: AppColors.primaryContainerLight,
      pressed: AppColors.primaryContainerLight,
      hover: AppColors.primaryContainerLight,

      chatBackground: AppColors.lightChatBackground,

      sentMessageBubble: AppColors.lightSentBubble,
      receivedMessageBubble: AppColors.lightReceivedBubble,

      sentMessageText: AppColors.lightTextPrimary,
      receivedMessageText: AppColors.lightTextPrimary,

      messageTime: AppColors.lightTextTertiary,

      messageSent: AppColors.messageSent,
      messageDelivered: AppColors.messageDelivered,
      messageRead: AppColors.messageRead,

      online: AppColors.online,
      offline: AppColors.offline,
      typing: AppColors.typing,

      unreadBadge: AppColors.primary,

      chatInputBackground: AppColors.lightSurface,
      chatInputBorder: AppColors.lightBorder,
    );
  }
}

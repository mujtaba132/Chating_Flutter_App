import 'package:chat_app/core/config/theme/app_colors.dart';
import 'package:chat_app/core/helper/extensions/theme/chat-theme/chat_theme_extension.dart';

abstract final class DarkThemeExtension{
    
    static AppThemeExtension get dark{
         return   AppThemeExtension(

    background: AppColors.darkBackground,
    backgroundSecondary: AppColors.darkSurfaceVariant,

    surface: AppColors.darkSurface,
    surfaceSecondary: AppColors.darkSurfaceVariant,
    surfaceElevated: AppColors.darkSurface,

    textPrimary: AppColors.darkTextPrimary,
    textSecondary: AppColors.darkTextSecondary,
    textTertiary: AppColors.darkTextTertiary,
    textDisabled: AppColors.darkTextTertiary,
    textOnPrimary: AppColors.darkBackground,

    border: AppColors.darkBorder,
    borderFocused: AppColors.primaryLight,
    divider: AppColors.darkDivider,

    primary: AppColors.primaryLight,
    primaryContainer: AppColors.primaryContainerDark,
    onPrimary: AppColors.darkBackground,

    success: AppColors.successLight,
    warning: AppColors.warningLight,
    error: AppColors.errorLight,
    info: AppColors.info,

    disabled: AppColors.darkTextTertiary,
    selected: AppColors.primaryContainerDark,
    pressed: AppColors.primaryContainerDark,
    hover: AppColors.primaryContainerDark,

    chatBackground: AppColors.darkChatBackground,

    sentMessageBubble: AppColors.darkSentBubble,
    receivedMessageBubble: AppColors.darkReceivedBubble,

    sentMessageText: AppColors.darkTextPrimary,
    receivedMessageText: AppColors.darkTextPrimary,

    messageTime: AppColors.darkTextSecondary,

    messageSent: AppColors.messageSent,
    messageDelivered: AppColors.primaryLight,
    messageRead: AppColors.primaryLight,

    online: AppColors.successLight,
    offline: AppColors.offline,
    typing: AppColors.successLight,

    unreadBadge: AppColors.primaryLight,

    chatInputBackground: AppColors.darkSurface,
    chatInputBorder: AppColors.darkBorder,
  );

    } 

}
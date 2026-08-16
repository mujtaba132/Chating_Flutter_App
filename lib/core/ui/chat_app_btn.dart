import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/config/theme/app_radius.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,

    // Actions
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,

    // Content
    this.prefix,
    this.suffix,
    this.child,

    // State
    this.isLoading = false,
    this.enabled = true,

    // Layout
    this.width,
    this.height = AppDimensions.buttonHeightLarge,
    this.padding,

    // Styling
    this.backgroundColor,
    this.foregroundColor,
    this.disabledBackgroundColor,
    this.disabledForegroundColor,
    this.borderColor,
    this.borderWidth = 1,
    this.radius,
    this.elevation,

    // Interaction
    this.focusNode,
    this.autofocus = false,
    this.tooltip,

    // Accessibility
    this.semanticLabel,
  });


  final String text;

  /// Optional widget displayed before the text.
  final Widget? prefix;

  /// Optional widget displayed after the text.
  final Widget? suffix;

  /// Completely custom button content.
  ///
  /// If provided, [child] takes priority over [text], [prefix], and [suffix].
  final Widget? child;


  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;


  final bool isLoading;
  final bool enabled;


  final double? width;
  final double height;
  final EdgeInsetsGeometry? padding;


  final Color? backgroundColor;
  final Color? foregroundColor;

  final Color? disabledBackgroundColor;
  final Color? disabledForegroundColor;

  final Color? borderColor;
  final double borderWidth;

  final double? radius;
  final double? elevation;


  final FocusNode? focusNode;
  final bool autofocus;
  final String? tooltip;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;

    final bool isEnabled = enabled && !isLoading;

    final Color background = backgroundColor ?? colors.primary;

    final Color foreground = foregroundColor ?? colors.textOnPrimary;

    final Color disabledBackground = disabledBackgroundColor ?? colors.disabled;

    final Color disabledForeground =
        disabledForegroundColor ?? colors.textDisabled;

    final Color border = borderColor ?? Colors.transparent;

    Widget button = SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        onLongPress: isEnabled ? onLongPress : null,
        onHover: onHover,
        onFocusChange: onFocusChange,
        focusNode: focusNode,
        autofocus: autofocus,

        style: ElevatedButton.styleFrom(
          backgroundColor: background,
          foregroundColor: foreground,

          disabledBackgroundColor: disabledBackground,

          disabledForegroundColor: disabledForeground,

          elevation: elevation ?? 0,

          padding:
              padding ??
              const EdgeInsets.symmetric(horizontal: AppDimensions.spacing20),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? AppRadius.radius12),
            side: BorderSide(color: border, width: borderWidth),
          ),

          splashFactory: InkRipple.splashFactory,
        ),

        child: _buildChild(context),
      ),
    );


    if (tooltip != null) {
      button = Tooltip(message: tooltip!, child: button);
    }

 

    if (semanticLabel != null) {
      button = Semantics(button: true, label: semanticLabel, child: button);
    }

    return button;
  }

  Widget _buildChild(BuildContext context) {
  

    if (child != null) {
      return child!;
    }



    if (isLoading) {
      return const SizedBox(
        width: AppDimensions.iconSmall,
        height: AppDimensions.iconSmall,
        child: CircularProgressIndicator(strokeWidth: 2.2),
      );
    }

  

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (prefix != null) ...[
          prefix!,
          const SizedBox(width: AppDimensions.spacing8),
        ],

        Flexible(
          child: Text(text, maxLines: 1, overflow: TextOverflow.ellipsis),
        ),

        if (suffix != null) ...[
          const SizedBox(width: AppDimensions.spacing8),
          suffix!,
        ],
      ],
    );
  }
}

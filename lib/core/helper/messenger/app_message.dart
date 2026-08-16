import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:flutter/material.dart';


class AppMessage extends StatelessWidget {
  final String message;
  final String? title;
  final AppMessageType type;
  final IconData? icon;

  const AppMessage({
    super.key,
    required this.message,
    required this.type,
    this.title,
    this.icon,
  });

  IconData get _defaultIcon {
    switch (type) {
      case AppMessageType.success:
        return Icons.check_circle_rounded;

      case AppMessageType.error:
        return Icons.error_rounded;

      case AppMessageType.warning:
        return Icons.warning_rounded;

      case AppMessageType.info:
        return Icons.info_rounded;
    }
  }

  Color _iconColor(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    switch (type) {
      case AppMessageType.success:
        return Colors.green;

      case AppMessageType.error:
        return colorScheme.error;

      case AppMessageType.warning:
        return Colors.orange;

      case AppMessageType.info:
        return colorScheme.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Material(
      color: colorScheme.surface,
      elevation: 4,
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAlias,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: colorScheme.outline.withValues(alpha: 0.12),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: _iconColor(context).withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon ?? _defaultIcon,
                color: _iconColor(context),
                size: 21,
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (title != null) ...[
                    Text(
                      title!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 3),
                  ],

                  Text(
                    message,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

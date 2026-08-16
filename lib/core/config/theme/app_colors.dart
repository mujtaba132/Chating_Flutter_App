import 'package:flutter/material.dart';

abstract final class AppColors {
  // ---------------------------------------------------------------------------
  // Brand
  // ---------------------------------------------------------------------------

  static const primary = Color(0xFF2563EB);
  static const primaryLight = Color(0xFF60A5FA);
  static const primaryContainerLight = Color(0xFFDBEAFE);
  static const primaryContainerDark = Color(0xFF1E3A5F);

  // ---------------------------------------------------------------------------
  // Light Theme
  // ---------------------------------------------------------------------------

  static const lightBackground = Color(0xFFF8FAFC);
  static const lightSurface = Color(0xFFFFFFFF);
  static const lightSurfaceVariant = Color(0xFFF1F5F9);

  static const lightTextPrimary = Color(0xFF0F172A);
  static const lightTextSecondary = Color(0xFF475569);
  static const lightTextTertiary = Color(0xFF64748B);

  static const lightBorder = Color(0xFFE2E8F0);
  static const lightDivider = Color(0xFFE2E8F0);

  // Chat
  static const lightChatBackground = Color(0xFFF1F5F9);
  static const lightSentBubble = Color(0xFFDBEAFE);
  static const lightReceivedBubble = Color(0xFFFFFFFF);

  // ---------------------------------------------------------------------------
  // Dark Theme
  // ---------------------------------------------------------------------------

  static const darkBackground = Color(0xFF0F172A);
  static const darkSurface = Color(0xFF1E293B);
  static const darkSurfaceVariant = Color(0xFF273449);

  static const darkTextPrimary = Color(0xFFF8FAFC);
  static const darkTextSecondary = Color(0xFFCBD5E1);
  static const darkTextTertiary = Color(0xFF94A3B8);

  static const darkBorder = Color(0xFF334155);
  static const darkDivider = Color(0xFF334155);

  // Chat
  static const darkChatBackground = Color(0xFF111827);
  static const darkSentBubble = Color(0xFF1E40AF);
  static const darkReceivedBubble = Color(0xFF1E293B);

  // ---------------------------------------------------------------------------
  // Semantic
  // ---------------------------------------------------------------------------

  static const success = Color(0xFF16A34A);
  static const successLight = Color(0xFF4ADE80);

  static const error = Color(0xFFEF4444);
  static const errorLight = Color(0xFFF87171);

  static const warning = Color(0xFFF59E0B);
  static const warningLight = Color(0xFFFBBF24);

  static const info = Color(0xFF0EA5E9);

  // ---------------------------------------------------------------------------
  // Chat Status
  // ---------------------------------------------------------------------------

  static const online = Color(0xFF22C55E);
  static const offline = Color(0xFF94A3B8);
  static const typing = Color(0xFF22C55E);

  // ---------------------------------------------------------------------------
  // Message Status
  // ---------------------------------------------------------------------------

  static const messageSent = Color(0xFF64748B);
  static const messageDelivered = Color(0xFF2563EB);
  static const messageRead = Color(0xFF2563EB);

  // ---------------------------------------------------------------------------
  // Common
  // ---------------------------------------------------------------------------

  static const transparent = Colors.transparent;
  static const white = Colors.white;
  static const black = Colors.black;
}
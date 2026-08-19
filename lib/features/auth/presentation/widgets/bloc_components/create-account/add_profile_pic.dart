import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/core/helper/messenger/app_messenger.dart';
import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:chat_app/core/ui/chat_app_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/config/theme/app_dimensions.dart';
import '../../../../../../core/config/theme/app_text_styles.dart';
import '../../../bloc/create-account/create_account_bloc.dart';

class AddProfilePic extends StatelessWidget {
  const AddProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;
    return Column(
      children: [
        BlocConsumer<CreateAccountBloc, CreateAccountState>(
          listenWhen: (previous, current) => previous.imageUploadStatus != current.imageUploadStatus,
          listener: (context, state) {
            if (state.imageUploadStatus == ExceptionStatus.error) {
              return messenger.error(state.errorMessage!);
            }
          },
          builder: (context, state) {
            final ExceptionStatus imageStatus = state.imageUploadStatus;
            final imagePath = state.profileImage;

            return Center(
              child: GestureDetector(
                onTap: () {
                  context.read<CreateAccountBloc>().add(
                    CreateAccountEvent.pickProfileImage(),
                  );
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 104,
                      height: 104,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colors.surfaceSecondary,
                        border: Border.all(color: colors.border, width: 1.5),
                      ),
                      child: ClipOval(child: _showLoadedImage(imageStatus, colors.textTertiary,imagePath: imagePath)),
                    ),

                    Positioned(
                      right: -2,
                      bottom: 2,
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          color: colors.primary,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: colors.background,
                            width: 3,
                          ),
                        ),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 17,
                          color: colors.textOnPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),

        const SizedBox(height: AppDimensions.spacing12),

        Center(
          child: Text(
            'Add profile photo',
            style: AppTextStyles.labelMedium.copyWith(
              color: colors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        SizedBox(height: AppDimensions.spacing24),
      ],
    );
  }
}

Widget _showLoadedImage(
  ExceptionStatus status,
  Color color, {
  String? imagePath,
}) {
  switch (status) {
    case ExceptionStatus.loading:
      return AppLoader(size: 2);
    case ExceptionStatus.success:
      return Image.network(imagePath!, fit: BoxFit.cover);
    default:
      return Icon(Icons.person_outline_rounded, size: 48, color: color);
  }
}


import 'dart:io';

import 'package:chat_app/core/backend/services/media-picker-service/media_picker_interface.dart';
import 'package:image_picker/image_picker.dart';

class MediaPickerService implements MediaPickerPlatform{

  final ImagePicker _imagePicker = ImagePicker();

  @override
  Future<File?> pickImageFromGallery() async{
  
           final XFile? image = await _imagePicker.pickImage(
            source: ImageSource.gallery,
            imageQuality: 100,
            );

            return File(image!.path);
  }

}
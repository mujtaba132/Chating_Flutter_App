
import 'dart:io';

import 'package:chat_app/core/backend/services/media-picker-service/media_picker_interface.dart';
import 'package:image_picker/image_picker.dart';

class MediaPickerServiceImpl implements MediaPickerService{

  final ImagePicker _imagePicker = ImagePicker();

  @override
  Future<File?> pickImageFromGallery() async{
  
           final XFile? image = await _imagePicker.pickImage(
            source: ImageSource.gallery,
            imageQuality: 100,
            );
            
            if(image==null){
              throw Exception('Please select image to process!');
            }

            return File(image.path);
  }

}
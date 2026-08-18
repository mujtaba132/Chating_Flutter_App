import 'dart:io';
import 'package:chat_app/core/backend/services/media-picker-service/media_picker_interface.dart';


class PickImageUseCase {
     
     final MediaPickerService _mediaPickerService;
     PickImageUseCase(this._mediaPickerService);

     Future<File?> call(){
              return _mediaPickerService.pickImageFromGallery();
     } 

}
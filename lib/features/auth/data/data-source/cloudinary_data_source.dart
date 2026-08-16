import 'dart:io';
import 'package:chat_app/core/backend/services/cloudinary-service/cloudinary_service_impl.dart';
import 'package:cloudinary_public/cloudinary_public.dart';

class CloudinaryDataSource {
     
     final CloudinaryServiceImpl _cloudinaryServiceImpl;
     CloudinaryDataSource(this._cloudinaryServiceImpl);


     Future<CloudinaryResponse> uploadImageFile(File file){
            
            return _cloudinaryServiceImpl.uploadImageToCloudinary(file);
     }

     
}
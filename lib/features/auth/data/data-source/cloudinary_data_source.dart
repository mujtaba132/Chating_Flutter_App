import 'dart:io';
import 'package:cloudinary_public/cloudinary_public.dart';
import '../../../../core/backend/services/cloudinary-service/cloudinary_service_interface.dart';

class CloudinaryDataSource {
     
     final CloudinaryService _cloudinaryService;
     CloudinaryDataSource(this._cloudinaryService);


     Future<CloudinaryResponse> uploadImageFile(File file){
            
            return _cloudinaryService.uploadImageToCloudinary(file);
     }

     
}
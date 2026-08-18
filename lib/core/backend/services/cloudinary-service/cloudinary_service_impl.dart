import 'dart:io';
import 'package:chat_app/core/backend/services/cloudinary-service/cloudinary_service_interface.dart';
import 'package:cloudinary_public/cloudinary_public.dart';

class CloudinaryServiceImpl implements CloudinaryService{
   
  final CloudinaryPublic _cloudinary;
  CloudinaryServiceImpl(this._cloudinary);

  //Upload User Image to Cloudinary Platform
  @override
  Future<CloudinaryResponse> uploadImageToCloudinary(File file){
            
            final cloudinaryfile = CloudinaryFile.fromFile(
              file.path,
              resourceType: CloudinaryResourceType.Image
              );

              print(cloudinaryfile);

          return  _cloudinary.uploadFile(cloudinaryfile);

  }
  
}
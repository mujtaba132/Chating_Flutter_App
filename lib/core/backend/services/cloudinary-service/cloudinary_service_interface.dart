import 'dart:io';

import 'package:cloudinary_public/cloudinary_public.dart';

abstract interface class CloudinaryService {
      
      Future<CloudinaryResponse> uploadImageToCloudinary(File file);

}
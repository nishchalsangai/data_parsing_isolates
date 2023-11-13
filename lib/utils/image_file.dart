// /// File for get images from users
// /// The image we get is already compressed
// /// it also handles the permission denied dialog
// /// How to use?
// /// final image = ImageFromCamera();
// /// singleImage(image, context);
// /// That's it. The single image function will return a image

// import 'package:bullymetaverse/core/utils/toast.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';


// abstract class ServiceForSingleImage {
//   final ImagePicker picker = ImagePicker();
//   dynamic pickImageError;
//   XFile? imgCamFile;
//   Future<XFile?> singleImage(BuildContext context);
// }

// class ImageFromCamera extends ServiceForSingleImage {
//   @override
//   Future<XFile?> singleImage(BuildContext context) async {
//     try {
//       final photo = await picker.pickImage(source: ImageSource.camera);

//       imgCamFile = photo;
//     } on PlatformException {
//       showSnackBar("You denied camera access", snackType: SnackType.info);
//     } catch (e) {
//       pickImageError = e;
//       showSnackBar(pickImageError, snackType: SnackType.error);
//     }
//     return imgCamFile;
//   }
// }

// Future<XFile?> singleImage(ServiceForSingleImage image, BuildContext context) =>
//     image.singleImage(context);

// class ImageFromGallery extends ServiceForSingleImage {
//   @override
//   Future<XFile?> singleImage(BuildContext context) async {
//     try {
//       final photo = await picker.pickImage(
//           source: ImageSource.gallery,);
//       imgCamFile = photo;
//     } catch (e) {
//       pickImageError = e;
//       debugPrint(pickImageError);
//       showSnackBar(pickImageError, snackType: SnackType.error);
//     }
//     return imgCamFile;
//   }
// }

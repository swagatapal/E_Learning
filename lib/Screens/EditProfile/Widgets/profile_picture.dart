// import 'dart:html';
// import 'dart:typed_data';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// class ProfilePicture extends StatefulWidget {
//   const ProfilePicture({super.key});
//
//   @override
//   State<ProfilePicture> createState() => _ProfilePictureState();
// }
//
// class _ProfilePictureState extends State<ProfilePicture> {
//   Uint8List? _image;
//   // List<int> _image = [];
//   File? selectedImage;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Stack(
//           children: [
//             // Profile Picture
//             _image != null
//                 ? CircleAvatar(
//                     radius: MediaQuery.of(context).size.width * 0.2,
//                     backgroundImage: MemoryImage(_image!),
//                   )
//                 : CircleAvatar(
//                     radius: MediaQuery.of(context).size.width * 0.2,
//                     backgroundColor: Colors.white,
//                     child: CircleAvatar(
//                       radius: MediaQuery.of(context).size.width * 0.2,
//                       foregroundImage: const NetworkImage(
//                         "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
//                       ),
//                     ),
//                   ),
//             Positioned(
//               bottom: 0,
//               right: 0,
//               child: CircleAvatar(
//                 radius: MediaQuery.of(context).size.width * 0.07,
//                 backgroundColor: Colors.white,
//                 child: CircleAvatar(
//                   radius: MediaQuery.of(context).size.width * 0.065,
//                   backgroundColor: Colors.teal[600],
//                   child: GestureDetector(
//                     onTap: () {
//                       showImagePickerOption(context);
//                     },
//                     child: Icon(
//                       Icons.camera_alt,
//                       size: MediaQuery.of(context).size.width * 0.06,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void showImagePickerOption(BuildContext context) {
//     showModalBottomSheet(
//       shape: const BeveledRectangleBorder(),
//       backgroundColor: Colors.white,
//       context: context,
//       builder: (builder) {
//         return Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: SizedBox(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height / 2.8,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Profile photo",
//                   style: Theme.of(context).textTheme.bodyLarge,
//                 ),
//                 const SizedBox(height: 40),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Todo: Gallery
//                       InkWell(
//                         onTap: () {
//                           _pickImageFromGallery();
//                         },
//                         child: Column(
//                           children: [
//                             CircleAvatar(
//                               radius: MediaQuery.of(context).size.width * 0.06,
//                               backgroundColor: Colors.white,
//                               child: CircleAvatar(
//                                 radius:
//                                     MediaQuery.of(context).size.width * 0.07,
//                                 backgroundColor: Colors.deepPurpleAccent,
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     //showImagePickerOption(context);
//                                   },
//                                   child: Icon(
//                                     Icons.photo_size_select_actual_outlined,
//                                     size: MediaQuery.of(context).size.width *
//                                         0.06,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 4),
//                             const Text("Gallery"),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(width: 50),
//                       // Todo: Camera
//                       InkWell(
//                         onTap: () {
//                           _pickImageFromCamera();
//                         },
//                         child: Column(
//                           children: [
//                             CircleAvatar(
//                               radius: MediaQuery.of(context).size.width * 0.06,
//                               backgroundColor: Colors.white,
//                               child: CircleAvatar(
//                                 radius:
//                                     MediaQuery.of(context).size.width * 0.07,
//                                 backgroundColor: Colors.lightBlue,
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     //showImagePickerOption(context);
//                                   },
//                                   child: Icon(
//                                     Icons.camera_alt_rounded,
//                                     size: MediaQuery.of(context).size.width *
//                                         0.06,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 4),
//                             const Text("Camera"),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 10.0),
//                 // Todo: Remove
//                 SizedBox(
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 3.0, top: 16.0),
//                     child: InkWell(
//                       onTap: () {
//                         //_deleteFile(selectedImage!);
//                         selectedImage = null;
//                         //_image=null;
//                       },
//                       child: Column(
//                         children: [
//                           CircleAvatar(
//                             radius: MediaQuery.of(context).size.width * 0.06,
//                             backgroundColor: Colors.white,
//                             child: CircleAvatar(
//                               radius: MediaQuery.of(context).size.width * 0.07,
//                               backgroundColor: Colors.red[600],
//                               child: GestureDetector(
//                                 onTap: () {},
//                                 child: Icon(
//                                   Icons.delete,
//                                   size:
//                                       MediaQuery.of(context).size.width * 0.06,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           const Text("Remove photo"),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   Future _pickImageFromGallery() async {
//     final picker = ImagePicker();
//     final pickedImage = await picker.getImage(source: ImageSource.gallery);
//     if (pickedImage != null) {
//       setState(() {
//         selectedImage = File(pickedImage.path);
//         _image = File(pickedImage.path).readAsBytesSync();
//       });
//     }
//   }
//
//   Future _pickImageFromCamera() async {
//     final returnedImage =
//         await ImagePicker().pickImage(source: ImageSource.camera);
//     if (returnedImage == null) {
//       return null;
//     }
//     setState(() {
//       selectedImage = File(returnedImage.path);
//       _image = File(returnedImage.path).readAsBytesSync();
//     });
//     Navigator.of(context).pop();
//   }
// }

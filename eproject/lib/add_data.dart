import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



final FirebaseStorage storage =FirebaseStorage.instance;
final FirebaseFirestore _firebaseFirestore=FirebaseFirestore.instance;
class StoreData
{
Future<String>uploadImageToStorage(String imgname, Uint8List file)
async {
  Reference ref= storage.ref().child(imgname);
  UploadTask uploadTask=ref.putData(file);
  TaskSnapshot snapshot=await uploadTask;
  String downloadUrl=await snapshot.ref.getDownloadURL();
return downloadUrl;
}
Future<String>saveData(
  {
    required String name,
    required String fname,
    required String email,
    required String password,
    required Uint8List file,
  }
)
async
{
  String resp="error";
  try {
    if (name.isNotEmpty || fname.isNotEmpty || email.isNotEmpty || password.isNotEmpty) {
      String imgUrl = await uploadImageToStorage("profileImage", file);
   await _firebaseFirestore.collection("UserProfile").add({'name':name,'fathername':fname,'email':email,'password':password,'ImgLink':imgUrl});
   resp="Success";
    } 
  } catch (err) {
    resp=err.toString(); 
  }
  return resp;
}
}
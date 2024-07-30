
import 'package:image_picker/image_picker.dart';
pickImage(ImageSource)
async {
  final ImagePicker imagePicker= ImagePicker();
  XFile? file = await imagePicker.pickImage(source: ImageSource);
  if (file !=null) {
    return await file.readAsBytes();
  }
  print("No Image");
}
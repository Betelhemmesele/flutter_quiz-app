import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
Reference get firebaseStorage=>FirebaseStorage.instance.ref();

class FirebaseStorageService extends GetxService{
  Future<String?>getImage(String? imgName) async {
    if (imgName==null){
      return null;
    }
    try{
      var urlRef=await firebaseStorage.child(imgName).getDownloadURL();

      return urlRef;
    }catch(e){
      return null;
    }
  }

}
import 'package:image_picker/image_picker.dart';
import 'package:ncut_bbs/logic/api/base.dart';
import 'package:ncut_bbs/logic/api/manager.dart';

class ImageTool {
  static ImageTool _instance;

  static ImageTool get instance {
    if (_instance == null) {
      _instance = ImageTool._init();
    }
    return _instance;
  }

  ImageTool._init();

  final picker = ImagePicker();

  Future<PickedFile> pickOneImageFromGallery() =>
      picker.getImage(source: ImageSource.gallery);

  Future<String> uploadImage(String filePath) async {
    var req = MultipartRequest("POST", Uri.parse("$baseURL/upload"))
      ..files.add(await MultipartFile.fromPath("file", filePath));
    var res = await ApiManager.instance.client.send(req);
    return await res.stream.bytesToString();
  }
}

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CameraApp(),
    );
  }
}

class CameraApp extends StatelessWidget {
  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _openCamera() async {
    final pickedImage = await _imagePicker.getImage(source: ImageSource.camera);
    
    if (pickedImage != null) {
      // Kamera ile seçilen resmi işlemek için burada kullanabilirsiniz.
      print("Resim seçildi: ${pickedImage.path}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kamera Örneği'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _openCamera,
          child: Text('Kamerayı Aç'),
        ),
      ),
    );
  }
}

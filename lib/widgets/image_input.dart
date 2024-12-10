import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _storedImage;

  void _takePictureHandler() async {
    final imagePicker = ImagePicker();
    final image =
        await imagePicker.pickImage(source: ImageSource.camera, maxWidth: 600);

    if (image == null) {
      return;
    }

    setState(() {
      _storedImage = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = TextButton.icon(
      icon: const Icon(Icons.camera),
      label: const Text('Add Image'),
      onPressed: _takePictureHandler,
    );

    if (_storedImage != null) {
      content = GestureDetector(
        onTap: _takePictureHandler,
        child: Image.file(
          _storedImage!,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
        ),
      ),
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      child: content,
    );
  }
}

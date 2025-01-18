import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageField extends StatefulWidget {
  const ImageField({super.key,required this.onValueChanged});
  final ValueChanged<File>? onValueChanged;

  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  bool isLoding = false;
  File? pickeImage;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoding,
      child: GestureDetector(
        onTap: () async {
          isLoding = true;
          setState(() {});
          try {
            await pickImage();
          } catch (e) {
            isLoding = false;
            setState(() {});
          }
          isLoding = false;
          setState(() {});
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 3),
                  borderRadius: BorderRadius.circular(16)),
              child: pickeImage != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.file(pickeImage!))
                  : const Icon(
                      Icons.image_outlined,
                      size: 150,
                    ),
            ),
            Visibility(
              visible: pickeImage != null,
              child: IconButton(
                  onPressed: () {
                    pickeImage = null;
                    setState(() {});
                    widget.onValueChanged!(pickeImage!);
                  },
                  icon: const Icon(
                    Icons.close_sharp,
                    color: Colors.red,
                  )),
            )
          ],
        ),
      ),
    );
  }

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    pickeImage = File(image!.path);
    widget.onValueChanged!(pickeImage!);
  }
}

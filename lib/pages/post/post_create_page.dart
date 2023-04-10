import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../data/entity/subject/Subject.dart';
import '../../utils/general_background.dart';
import '../../utils/theme_color_constant.dart';

class PostCreatePage extends StatefulWidget {
  const PostCreatePage({Key? key}) : super(key: key);

  @override
  _PostCreatePageState createState() => _PostCreatePageState();
}

class _PostCreatePageState extends State<PostCreatePage> {
  final _formKey = GlobalKey<FormState>();
  String? _imageUrl;
  File? _imageFile;
  final _titleController = TextEditingController();
  final _subtitleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Subject mainSubject = ModalRoute.of(context)!.settings.arguments as Subject;
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
            decoration: GeneralBackground().getGeneralMainBackground()),
        title: const Text('Gönderi Oluştur'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: GeneralBackground().getGeneralBackground(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Konu: ${mainSubject.getName() ?? ""} ',
                    softWrap: true,
                    style: const TextStyle(
                      fontSize: 18,
                      color: ThemeColorConstant.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                  TextFormField(
                    controller: _titleController,
                    style: const TextStyle(color: ThemeColorConstant.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        labelText: 'Başlık',
                        hintText: 'Lütfen Başlık giriniz',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 0.5,
                            ))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Lütfen Başlık giriniz';
                      }
                      return null;
                    },
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                  TextFormField(
                    controller: _subtitleController,
                    style: const TextStyle(color: ThemeColorConstant.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        labelText: 'Açıklama',
                        hintText: 'Lütfen açıklama giriniz',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 0.5,
                            ))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Lütfen açıklama giriniz';
                      }
                      return null;
                    },
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                  TextFormField(
                    controller: _descriptionController,
                    style: const TextStyle(color: ThemeColorConstant.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        labelText: 'İçerik',
                        hintText: 'Lütfen İçerik giriniz',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 0.5,
                            ))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Lütfen İçerik giriniz';
                      }
                      return null;
                    },
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () async {
                      final pickedFile = await ImagePicker()
                          .getImage(source: ImageSource.gallery);
                      setState(() {
                        _imageFile = pickedFile as File?;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(333, 90),
                        backgroundColor: ThemeColorConstant.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    child: const Text('Görsel Yükle'),
                  ),
                  const SizedBox(height: 16.0),
                  _imageFile == null
                      ? const Text(
                          'Görsel Seçilmedi',
                          style: TextStyle(color: ThemeColorConstant.white),
                        )
                      : Image.file(File(_imageFile!.path)),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final form = _formKey.currentState;
          if (form!.validate()) {
            Navigator.of(context).pushNamed("/post", arguments: mainSubject);
          }
        },
        tooltip: 'Postu Yükle',
        child: const Icon(Icons.add),
      ),
    );
  }

  /*Future<void> _createPost() async {
    final form = _formKey.currentState;
    if (form!.validate() && _imageFile != null) {
      form.save();
      final storageRef = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('posts')
          .child('${DateTime.now().millisecondsSinceEpoch}.jpg');
      final uploadTask = storageRef.putFile(File(_imageFile!.path));
      final snapshot = await uploadTask.whenComplete(() => null);
      final downloadUrl = await snapshot.ref.getDownloadURL();
      setState(() {
        _imageUrl = downloadUrl;
      });
      final post = {
        'title': _titleController.text,
        'subtitle': _subtitleController.text,
        'description': _descriptionController.text,
        'imageUrl': _imageUrl,
      };
      Navigator.of(context).pushNamed("/post");
    }
  }*/
}

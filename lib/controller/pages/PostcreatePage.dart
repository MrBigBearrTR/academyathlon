import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class PostForm extends StatefulWidget {
  const PostForm({Key? key}) : super(key: key);

  @override
  _PostFormState createState() => _PostFormState();
}
class _PostFormState extends State<PostForm> {
  final _formKey = GlobalKey<FormState>();
  String? _imageUrl;
  File? _imageFile;
  final _titleController = TextEditingController();
  final _subtitleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87 ,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('POST OLUŞTUR' ),

      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    hintText: 'Lütfen Başlık girin',
                    labelStyle:
                    TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white ,
                      fontSize: 10,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _subtitleController,
                  decoration: InputDecoration(
                    labelText: 'Subtitle',
                    hintText: 'Lütfen altbaşlık girin',
                    labelStyle:
                    TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white ,
                      fontSize: 10,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a subtitle';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    hintText: 'Lütfen Açıklama girin',
                    labelStyle:
                    TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white ,
                      fontSize: 10,
                    ),


                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  },
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () async {
                    final pickedFile =
                    await ImagePicker().getImage(source: ImageSource.gallery);
                    setState(() {
                      _imageFile = pickedFile as File?;
                    });
                  },
                  child: Text('Choose Image'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(333, 90),
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),

                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 16.0),
                _imageFile == null
                    ? Text('No image selected')
                    : Image.file(File(_imageFile!.path)),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createPost,
        tooltip: 'Create Post',
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _createPost() async {
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
      Navigator.pop(context, post);
    }
  }
}

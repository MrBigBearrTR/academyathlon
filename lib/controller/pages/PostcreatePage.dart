import 'package:flutter/material.dart';

class PostForm extends StatefulWidget {
  const PostForm({Key? key}) : super(key: key);

  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final _formKey = GlobalKey<FormState>();
  String? _imageUrl;
  final _titleController = TextEditingController();
  final _subtitleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('POST OLUŞTUR'),
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
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white,
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
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white,
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
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white,
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
                  onPressed: ()  {

                  },
                  child: Text('Choose Image'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(333, 90),
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Create Post',
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  final String name;
  final String imageUrl;
  final String postUrl;

  MyCard({required this.name, required this.imageUrl, required this.postUrl});

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool _isLiked = false;
  int _likeCount = 0;
  bool _isSaved = false;

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
      _likeCount += _isLiked ? 1 : -1;
    });
  }

  void _toggleSave() {
    setState(() {
      _isSaved = !_isSaved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white54,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(widget.imageUrl),
                ),
                title: Text(widget.name),
              ),
              Image.network(widget.postUrl),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      _isLiked ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: _toggleLike,
                  ),
                  Text('$_likeCount'),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0.0,
            right: 8.0,
            child: IconButton(
              icon: Icon(
                _isSaved ? Icons.bookmark : Icons.bookmark_border,
                color: Colors.black87,
              ),
              onPressed: _toggleSave,
            ),
          ),
        ],
      ),
    );
  }
}

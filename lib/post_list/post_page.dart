import 'package:academyathlon/post_list/post_card.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: ListView(
          children: [
            MyCard(
              name: 'Akademi Bursiyeri 1',
              imageUrl: 'https://fm-haxball.co.uk/community/download/file.php?avatar=369_1396185433.gif',
              postUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f4bd7a6-f763-4518-9b81-bdfd40ce3fc9/d27o7yl-da44ee0b-8f38-43ef-99d5-8ddf162b5eb7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzVmNGJkN2E2LWY3NjMtNDUxOC05YjgxLWJkZmQ0MGNlM2ZjOVwvZDI3bzd5bC1kYTQ0ZWUwYi04ZjM4LTQzZWYtOTlkNS04ZGRmMTYyYjVlYjcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ivVpRmjCVU1SXKsA1MIg4hXiUu2_6QjjZKayhlDK10s',
            ),
            MyCard(
              name: 'Akademi Bursiyeri 2',
              imageUrl: 'https://fm-haxball.co.uk/community/download/file.php?avatar=369_1396185433.gif',
              postUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f4bd7a6-f763-4518-9b81-bdfd40ce3fc9/d27o7yl-da44ee0b-8f38-43ef-99d5-8ddf162b5eb7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzVmNGJkN2E2LWY3NjMtNDUxOC05YjgxLWJkZmQ0MGNlM2ZjOVwvZDI3bzd5bC1kYTQ0ZWUwYi04ZjM4LTQzZWYtOTlkNS04ZGRmMTYyYjVlYjcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ivVpRmjCVU1SXKsA1MIg4hXiUu2_6QjjZKayhlDK10s',
            ),
            MyCard(
              name: 'Akademi Bursiyeri 3',
              imageUrl: 'https://fm-haxball.co.uk/community/download/file.php?avatar=369_1396185433.gif',
              postUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f4bd7a6-f763-4518-9b81-bdfd40ce3fc9/d27o7yl-da44ee0b-8f38-43ef-99d5-8ddf162b5eb7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzVmNGJkN2E2LWY3NjMtNDUxOC05YjgxLWJkZmQ0MGNlM2ZjOVwvZDI3bzd5bC1kYTQ0ZWUwYi04ZjM4LTQzZWYtOTlkNS04ZGRmMTYyYjVlYjcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ivVpRmjCVU1SXKsA1MIg4hXiUu2_6QjjZKayhlDK10s',
            ),
            MyCard(
              name: 'Akademi Bursiyeri 4',
              imageUrl: 'https://fm-haxball.co.uk/community/download/file.php?avatar=369_1396185433.gif',
              postUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f4bd7a6-f763-4518-9b81-bdfd40ce3fc9/d27o7yl-da44ee0b-8f38-43ef-99d5-8ddf162b5eb7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzVmNGJkN2E2LWY3NjMtNDUxOC05YjgxLWJkZmQ0MGNlM2ZjOVwvZDI3bzd5bC1kYTQ0ZWUwYi04ZjM4LTQzZWYtOTlkNS04ZGRmMTYyYjVlYjcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ivVpRmjCVU1SXKsA1MIg4hXiUu2_6QjjZKayhlDK10s',
            ),
            MyCard(
              name: 'Akademi Bursiyeri 5',
              imageUrl: 'https://fm-haxball.co.uk/community/download/file.php?avatar=369_1396185433.gif',
              postUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f4bd7a6-f763-4518-9b81-bdfd40ce3fc9/d27o7yl-da44ee0b-8f38-43ef-99d5-8ddf162b5eb7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzVmNGJkN2E2LWY3NjMtNDUxOC05YjgxLWJkZmQ0MGNlM2ZjOVwvZDI3bzd5bC1kYTQ0ZWUwYi04ZjM4LTQzZWYtOTlkNS04ZGRmMTYyYjVlYjcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ivVpRmjCVU1SXKsA1MIg4hXiUu2_6QjjZKayhlDK10s',
            ),
            MyCard(
              name: 'Akademi Bursiyeri 6',
              imageUrl: 'https://fm-haxball.co.uk/community/download/file.php?avatar=369_1396185433.gif',
              postUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f4bd7a6-f763-4518-9b81-bdfd40ce3fc9/d27o7yl-da44ee0b-8f38-43ef-99d5-8ddf162b5eb7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzVmNGJkN2E2LWY3NjMtNDUxOC05YjgxLWJkZmQ0MGNlM2ZjOVwvZDI3bzd5bC1kYTQ0ZWUwYi04ZjM4LTQzZWYtOTlkNS04ZGRmMTYyYjVlYjcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ivVpRmjCVU1SXKsA1MIg4hXiUu2_6QjjZKayhlDK10s',
            ),
            MyCard(
              name: 'Akademi Bursiyeri 7',
              imageUrl: 'https://fm-haxball.co.uk/community/download/file.php?avatar=369_1396185433.gif',
              postUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f4bd7a6-f763-4518-9b81-bdfd40ce3fc9/d27o7yl-da44ee0b-8f38-43ef-99d5-8ddf162b5eb7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzVmNGJkN2E2LWY3NjMtNDUxOC05YjgxLWJkZmQ0MGNlM2ZjOVwvZDI3bzd5bC1kYTQ0ZWUwYi04ZjM4LTQzZWYtOTlkNS04ZGRmMTYyYjVlYjcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ivVpRmjCVU1SXKsA1MIg4hXiUu2_6QjjZKayhlDK10s',
            ),
          ],
        ),
      ),
    );
  }
}

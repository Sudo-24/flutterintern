import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  // void getData() async {
  //   Response response =
  //       await get('https://jsonplaceholder.typicode.com/photos' as Uri);
  //   print(response);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ignore: prefer_const_constructors
            Text(
              'Type below',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Comment',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              autofocus: true,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: button(),
            ),
          ],
        ),
      ),
    );
  }

  FloatingActionButton button() {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(new Radius.circular(20)),
      ),
      child: Text(
        'Add',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      //mini: constraints.maxWidth < 56.0,
      backgroundColor: Color(0xFF5F40F1),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}

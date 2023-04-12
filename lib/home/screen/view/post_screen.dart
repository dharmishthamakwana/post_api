import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/post_provider.dart';

class Postscreen extends StatefulWidget {
  const Postscreen({Key? key}) : super(key: key);

  @override
  State<Postscreen> createState() => _PostscreenState();
}

class _PostscreenState extends State<Postscreen> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtjob = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Post Api call"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtname,
                decoration: InputDecoration(
                    label: Text("Enter your name"),
                    enabled: true,
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtjob,
                decoration: InputDecoration(
                    label: Text("Enter your job"),
                    enabled: true,
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                String name = txtname.text;
                String job = txtjob.text;
                String msg = await Provider.of<Post>(context, listen: false)
                    .Chenge(name, job);
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("$msg")));
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}


import 'dart:convert';

import 'package:flutter/material.dart';

import '../model/post_model.dart';
import '../service/http_service.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {

  TextEditingController userIdController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  void doUpdate() {
    String userId = userIdController.text.trim();
    String title = titleController.text.trim();
    String body = bodyController.text.trim();
    Post post = Post(userId: int.parse(userId), title: title, body: body);

    Network.POST(Network.API_CREATE, Network.paramsCreate(post)).then((value) => {
      post = Post.fromJson(jsonDecode(value!)),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update"),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: userIdController,
                decoration: const InputDecoration(
                  label: Text("ID"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: userIdController,
                decoration: const InputDecoration(
                  label: Text("User ID"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  label: Text("Title"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: bodyController,
                decoration: const InputDecoration(
                  label: Text("Body"),
                ),
              ),
            ),
            MaterialButton(
              onPressed: (){},
              minWidth: double.infinity,
              color: Colors.blue,
              child: const Text("Update", style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(height: 10,),
            const Text("Response:", style: TextStyle(fontSize: 18, color: Colors.red),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                Text("ID: ", style: const TextStyle(fontSize: 18),),
                const SizedBox(height: 10,),
                Text("User ID: ", style: const TextStyle(fontSize: 18),),
                const SizedBox(height: 10,),
                Text("Title: ", style: const TextStyle(fontSize: 18),),
                const SizedBox(height: 10,),
                Text("Body: ", style: const TextStyle(fontSize: 18),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("User ID"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Title"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Body"),
                ),
              ),
            ),
            MaterialButton(
              onPressed: (){},
              minWidth: double.infinity,
              color: Colors.blue,
              child: const Text("Create", style: TextStyle(color: Colors.white),),
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

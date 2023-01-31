import 'package:flutter/material.dart';
import 'package:todo/componet/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  DialogBox({Key? key, required this.controller,required this.onSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      elevation: 25,
      content: Card(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(2.0),
        // ),
        elevation: 8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Add a new task'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: const Text('Cancel',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ElevatedButton(onPressed: onSaved, child: const Text('Save',style: TextStyle(color: Colors.white),)),
                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class EditTask extends StatefulWidget {
  final String previousName;
  final int index;
  final Function(int, String) editCallBack;

  EditTask(this.previousName, this.index, this.editCallBack);

  @override
  _EditTaskState createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  late String newName;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    newName = widget.previousName;
    controller.text = widget.previousName;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Edit taskname'),
      content: Column(
        children: [
          TextField(
            controller: controller,
            onChanged: (value) {
              setState(() {
                newName = value;
              });
            },
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
            ),
            onPressed: () {
              widget.editCallBack(widget.index, newName);
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

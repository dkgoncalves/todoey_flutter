import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task_data.dart';

class TaskAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 35.0,
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                 fontSize: 20.0,
                 fontWeight: FontWeight.bold,
                 color: Colors.lightBlueAccent,
                ),
                decoration: InputDecoration(
                  focusColor: Colors.lightBlueAccent,
                ),
                onChanged: (value) {
                  taskTitle = value;
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.lightBlueAccent,
                onPressed: (){
                  Provider.of<TaskData>(context, listen: false).addTask(taskTitle);
                  Navigator.pop(context);
                },
                child: Text(''
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

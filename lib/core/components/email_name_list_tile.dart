import '../../features/comments/model/comments_model.dart';
import 'package:flutter/material.dart';

class EmailNameListTile extends StatelessWidget {
  final CommentsModel model;

  const EmailNameListTile({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(model.name ?? ""),
        subtitle: Text(model.email ?? ""),
        leading: CircleAvatar(
          child: Text(
            model.id.toString(),
          ),
        ),
        trailing: Icon(Icons.chevron_right_outlined),
      ),
    );
  }
}

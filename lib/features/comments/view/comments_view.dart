import '../../../core/components/email_name_list_tile.dart';
import '../viewmodel/comments_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CommentsView extends StatelessWidget {
  final CommentsViewModel _viewModel = CommentsViewModel();
  @override
  Widget build(BuildContext context) {
    if (_viewModel.context == null) {
      _viewModel.setContext(context);
    }

    return Scaffold(
      body: _buildListViewBuilder,
    );
  }

  Observer get _buildListViewBuilder => Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: _viewModel.items.length,
            itemBuilder: (context, index) {
              return Observer(
                builder: (_) {
                  return EmailNameListTile(model: _viewModel.items[index]);
                },
              );
            },
          );
        },
      );
}

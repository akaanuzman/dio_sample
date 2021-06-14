import '../../../core/init/network/network_manager.dart';
import '../model/comments_model.dart';
import '../service/ICommentsService.dart';
import '../service/comments_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'comments_view_model.g.dart';

class CommentsViewModel = _CommentsViewModelBase with _$CommentsViewModel;

abstract class _CommentsViewModelBase with Store {
  BuildContext? context;
  late ICommentsService commentsService;

  @observable
  List<CommentsModel> items = [];

  _CommentsViewModelBase() {
    commentsService = CommentsService(NetworkManager.instance.dio);
  }

  void setContext(BuildContext context) {
    this.context = context;
    fetchItems();
  }

  @action
  Future<void> fetchItems() async {
    items = await commentsService.fetchAllTask();
  }

  
}

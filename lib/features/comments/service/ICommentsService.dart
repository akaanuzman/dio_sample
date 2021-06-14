import 'package:dio/dio.dart';
import '../model/comments_model.dart';

abstract class ICommentsService {
  final Dio dio;

  ICommentsService(this.dio);

  Future<List<CommentsModel>> fetchAllTask();
}

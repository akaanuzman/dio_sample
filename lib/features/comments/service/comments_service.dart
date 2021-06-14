import 'dart:io';


import 'package:dio/dio.dart';
import '../model/comments_model.dart';
import 'ICommentsService.dart';
import 'comments_service_endpoints.dart';

class CommentsService extends ICommentsService {
  CommentsService(Dio dio) : super(dio);

  @override
  Future<List<CommentsModel>> fetchAllTask() async {
    final response = await dio.get(CommentsServiceEndPoints.COMMENTS.rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => CommentsModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}

enum CommentsServiceEndPoints { COMMENTS }

extension CommentsServiceExtension on CommentsServiceEndPoints {
  String get rawValue {
    switch (this) {
      case CommentsServiceEndPoints.COMMENTS:
        return '/comments';
    }
  }
}

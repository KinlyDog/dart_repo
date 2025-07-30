enum ContentType {
  article(5),
  video(45),
  podcast(60);

  final int _estimatedTime;

  const ContentType(int estimatedTime) :
        _estimatedTime = estimatedTime;

  bool isLongForm() {
    return _estimatedTime > 30;
  }
}

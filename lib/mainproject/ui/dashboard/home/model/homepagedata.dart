class HomePageData {
  final String title;
  final String content;
  // Add more fields as needed

  HomePageData({
    required this.title,
    required this.content,
  });

  factory HomePageData.fromJson(Map<String, dynamic> json) {
    return HomePageData(
      title: json['title'],
      content: json['content'],
    );
  }
}
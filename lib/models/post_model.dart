class PostModel {
  String? title;
  String? body;

  PostModel({this.title, this.body});

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      PostModel(title: json['title'] as String?, body: json['body'] as String?);

  Map<String, dynamic> toJson() => {'title': title, 'body': body};
}

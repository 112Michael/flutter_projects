
class Datamodel {
  int? userId;
  int? id;
  String? title;
  String? body;

  Datamodel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory Datamodel.fromJson(Map<String, dynamic> json) => Datamodel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}

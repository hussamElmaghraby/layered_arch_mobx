class ItemModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  ItemModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;

    return data;
  }

  ItemModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
}

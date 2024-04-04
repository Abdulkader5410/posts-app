// ignore_for_file: must_be_immutable

import 'package:posts_app/features/post/domain/entities/post_entity.dart';


class PostModel extends PostEntity {
  PostModel({ int? id, required  String title, required  String body})
      : super(id: id, title: title, body: body);

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(id: json['id'], title: json['title'], body: json['body']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'body': body};
  }
}

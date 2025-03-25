import 'package:cloud_firestore/cloud_firestore.dart';

class ItemData {
  final String title; // 글 제목
  final String content; // 글 내용
  final String id; // 글 고윳값
  final String image; // 글에 표시될 이미지
  final int kind; // 수공예품 종류
  final String price; // 가격
  final bool sell; // 판매 여부 확인
  final List<dynamic> tag; // 태그
  final dynamic timestamp; // 등록 시간
  final String user; // 등록한 사용자 이메일
  ItemData(
    this.title,
    this.content,
    this.id,
    this.image,
    this.kind,
    this.price,
    this.sell,
    this.tag,
    this.timestamp,
    this.user,
  );

  static ItemData fromStoreData(DocumentSnapshot snapshot) {
    var data = snapshot.data() as Map<String, dynamic>;
    return ItemData(
      data['title'],
      data['content'],
      data['id'],
      data['image'],
      data['kind'],
      data['price'],
      data['sell'],
      data['tag'],
      data['timestamp'],
      data['user'],
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> item = {};
    item['title'] = title;
    item['content'] = content;
    item['id'] = id;
    item['image'] = image;
    item['kind'] = kind;
    item['price'] = price;
    item['sell'] = sell;
    item['tag'] = tag;
    item['timestamp'] = timestamp;
    item['user'] = user;
    return item;
  }
}

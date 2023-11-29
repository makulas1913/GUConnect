/**
NewsEventClub	- Content
- Image
- Approval status	- Post content
- Request approval
- Get all events , posts
*/

class NewsEventClub {
  late String content;
  late String image;
  late bool isApproved;
  late DateTime createdAt;

  NewsEventClub({
    required this.content,
    required this.image,
    required this.isApproved,
    required this.createdAt,
  });

  NewsEventClub.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    image = json['image'];
    isApproved = json['isApproved'];
    createdAt = DateTime.parse(json['createdAt']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = content;
    data['image'] = image;
    data['isApproved'] = isApproved;
    data['createdAt'] = createdAt.toString();
    return data;
  }

  @override
  String toString() {
    return 'content: $content, image: $image, isApproved: $isApproved , createdAt: ${createdAt.toString()}';
  }
}

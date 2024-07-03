class User {
  final String id;
  final String photoUrl;
  final String text;
  final DateTime timeMsg;

  User({
    required this.id,
    required this.photoUrl,
    required this.text,
    required this.timeMsg,
  });

  User copyWith({
    String? id,
    String? photoUrl,
    String? text,
    DateTime? timeMsg,
  }) {
    return User(
      id: id ?? this.id,
      photoUrl: photoUrl ?? this.photoUrl,
      text: text ?? this.text,
      timeMsg: timeMsg ?? this.timeMsg,
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as String,
        photoUrl: json['photoUrl'] as String,
        text: json['text'] as String,
        timeMsg: DateTime.parse(json['timeMsg']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'photoUrl': photoUrl,

        'text': text,
        'timeMsg': timeMsg.toIso8601String(),
      };
}

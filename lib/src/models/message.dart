library message;

import 'package:built_json/built_json.dart';
import 'package:built_value/built_value.dart';

part 'message.g.dart';

abstract class Message implements Built<Message, MessageBuilder> {
  Message._();
  factory Message([updates(MessageBuilder b)]) = _$Message;
  static Serializer<Message> get serializer => _$messageSerializer;
  String get text;
}

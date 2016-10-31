library conversation;

import 'package:built_json/built_json.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'message.dart';

part 'conversation.g.dart';

abstract class Conversation
    implements Built<Conversation, ConversationBuilder> {
  Conversation._();
  factory Conversation([updates(ConversationBuilder b)]) = _$Conversation;
  BuiltList<Message> get messages;
  static Serializer<Conversation> get serializer => _$conversationSerializer;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of conversation;

// **************************************************************************
// Generator: BuiltJsonGenerator
// Target: library conversation
// **************************************************************************

Serializer<Conversation> _$conversationSerializer =
    new _$ConversationSerializer();

class _$ConversationSerializer implements StructuredSerializer<Conversation> {
  final Iterable<Type> types =
      new BuiltList<Type>([Conversation, _$Conversation]);
  final String wireName = 'Conversation';

  @override
  Iterable serialize(Serializers serializers, Conversation object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = [
      'messages',
      serializers.serialize(object.messages,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Message)])),
    ];

    return result;
  }

  @override
  Conversation deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ConversationBuilder();

    var key;
    var value;
    var expectingKey = true;
    for (final item in serialized) {
      if (expectingKey) {
        key = item;
        expectingKey = false;
      } else {
        value = item;
        expectingKey = true;

        switch (key as String) {
          case 'messages':
            result.messages.replace(serializers.deserialize(value,
                specifiedType: const FullType(
                    BuiltList, const [const FullType(Message)])));
            break;
        }
      }
    }

    return result.build();
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Conversation
// **************************************************************************

class _$Conversation extends Conversation {
  final BuiltList<Message> messages;

  _$Conversation._({this.messages}) : super._() {
    if (messages == null) throw new ArgumentError('null messages');
  }

  factory _$Conversation([updates(ConversationBuilder b)]) =>
      (new ConversationBuilder()..update(updates)).build();

  Conversation rebuild(updates(ConversationBuilder b)) =>
      (toBuilder()..update(updates)).build();

  ConversationBuilder toBuilder() => new ConversationBuilder()..replace(this);

  bool operator ==(other) {
    if (other is! Conversation) return false;
    return messages == other.messages;
  }

  int get hashCode {
    return hashObjects([messages]);
  }

  String toString() {
    return 'Conversation {'
        'messages=${messages.toString()},\n'
        '}';
  }
}

class ConversationBuilder
    implements Builder<Conversation, ConversationBuilder> {
  ConversationBuilder();
  ListBuilder<Message> messages = new ListBuilder<Message>();

  void replace(Conversation other) {
    this.messages = other.messages?.toBuilder();
  }

  void update(updates(ConversationBuilder b)) {
    if (updates != null) updates(this);
  }

  Conversation build() {
    return new _$Conversation._(messages: messages?.build());
  }
}

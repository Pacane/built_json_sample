// GENERATED CODE - DO NOT MODIFY BY HAND

part of message;

// **************************************************************************
// Generator: BuiltJsonGenerator
// Target: library message
// **************************************************************************

Serializer<Message> _$messageSerializer = new _$MessageSerializer();

class _$MessageSerializer implements StructuredSerializer<Message> {
  final Iterable<Type> types = new BuiltList<Type>([Message, _$Message]);
  final String wireName = 'Message';

  @override
  Iterable serialize(Serializers serializers, Message object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = [
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Message deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new MessageBuilder();

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
          case 'text':
            result.text = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
        }
      }
    }

    return result.build();
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Message
// **************************************************************************

class _$Message extends Message {
  final String text;

  _$Message._({this.text}) : super._() {
    if (text == null) throw new ArgumentError('null text');
  }

  factory _$Message([updates(MessageBuilder b)]) =>
      (new MessageBuilder()..update(updates)).build();

  Message rebuild(updates(MessageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  MessageBuilder toBuilder() => new MessageBuilder()..replace(this);

  bool operator ==(other) {
    if (other is! Message) return false;
    return text == other.text;
  }

  int get hashCode {
    return hashObjects([text]);
  }

  String toString() {
    return 'Message {'
        'text=${text.toString()},\n'
        '}';
  }
}

class MessageBuilder implements Builder<Message, MessageBuilder> {
  MessageBuilder();
  String text;

  void replace(Message other) {
    this.text = other.text;
  }

  void update(updates(MessageBuilder b)) {
    if (updates != null) updates(this);
  }

  Message build() {
    return new _$Message._(text: text);
  }
}

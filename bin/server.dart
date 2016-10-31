// Copyright (c) 2016, joel. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:built_collection/built_collection.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;
import 'package:built_test/models.dart';

void main(List<String> args) {
  var parser = new ArgParser()
    ..addOption('port', abbr: 'p', defaultsTo: '8090');

  var result = parser.parse(args);

  var port = int.parse(result['port'], onError: (val) {
    stdout.writeln('Could not parse port value "$val" into a number.');
    exit(1);
  });

  var handler = const shelf.Pipeline()
      .addMiddleware(shelf.logRequests())
      .addHandler(_echoRequest);

  io.serve(handler, '0.0.0.0', port).then((server) {
    print('Serving at http://${server.address.host}:${server.port}');
  });
}

shelf.Response _echoRequest(shelf.Request request) {
  var msg = new Message((MessageBuilder b) => b.text = 'Hello worldy');
  var msg2 = new Message((MessageBuilder b) => b.text = 'Hello you too');
  var conversation = new Conversation((ConversationBuilder b) =>
      b.messages = new BuiltList<Message>([msg, msg2]).toBuilder());

  var serialize = serializers.serialize(conversation);
  var jsonEncoded = JSON.encode(serialize);
  return new shelf.Response.ok(jsonEncoded);
}

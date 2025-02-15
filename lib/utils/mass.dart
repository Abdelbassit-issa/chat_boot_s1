import 'dart:typed_data';

import 'package:chat_boot_s1/chat_box/model/chat_stractur.dart';

List<ChatStractur> fakeChatData = [
  ChatStractur(
    massegeID: 'msg001',
    sendedTime: '2025-02-11 20:00',
    senderID: 'user123',
    mass: '''
    Hello! This is a test message.
    It is used to demonstrate how to
    expand the message field to twenty lines.
    Each line provides additional details
    to enrich the content of the message.
    Let's add more lines to make sure
    we reach the desired length of the message.
    This is line number seven, with more to come.
    Lines like these can provide important context.
    Here we are at line number nine already.
    Halfway through to our twenty-line message.
    The message continues to grow in length.
    Providing detailed and structured information.
    Line thirteen shows we're making progress.
    This structured approach can be very useful.
    Fourteen lines of text already written.
    Let's keep going until we hit line twenty.
    Almost there, just a few more lines to go.
    Seventeen lines filled with interesting content.
    Nineteen lines, we're almost at the end.
    Finally, we've reached the twentieth line.
    A complete and well-structured message.
    ''',
    file: Uint8List.fromList([1, 2, 3, 4, 5]),
  ),
  ChatStractur(
    massegeID: 'msg002',
    sendedTime: '2025-02-11 20:05',
    senderID: 'user456',
    mass: '''
    Here is another message with a file attachment.
    This example shows how to maintain
    multiple lines within the message field.
    Having such structured content can be
    useful for detailed communication.
    Let's add more details to reach twenty lines.
    Each line can provide additional information.
    This is line number seven for this message.
    Detailed messages improve clarity and context.
    We're halfway through, with ten lines written.
    The message continues with more information.
    Line thirteen is here, adding further details.
    Structured messages help convey ideas clearly.
    We're at line fifteen now, with more to come.
    Line sixteen brings us closer to twenty lines.
    Just a few more lines to complete the message.
    Nineteen lines, almost there, stay with me.
    Finally, we've reached the twentieth line.
    A complete and well-detailed message for you.
    Structured and informative, as requested.
    ''',
    file: Uint8List.fromList([10, 20, 30, 40, 50]),
  ),
  ChatStractur(
    massegeID: 'msg003',
    sendedTime: '2025-02-11 20:10',
    senderID: 'user789',
    mass: '''
    This is a third message for testing purposes.
    It includes several lines to illustrate
    the capability of handling longer texts.
    Multi-line messages can provide clarity
    and context for better understanding.
    Let's expand this message to twenty lines.
    Each line helps to build a detailed story.
    We're at line number seven, with more to come.
    Structured messages can be very effective.
    Halfway through with ten lines written so far.
    Line eleven continues to add to our message.
    Detailed messages improve communication.
    We're making progress with line fourteen.
    Lines like these can provide better insights.
    Sixteen lines written, almost there.
    Just a few more lines to complete the message.
    Nineteen lines now, the end is near.
    Finally, we've reached the twentieth line.
    A well-structured and detailed message.
    ''',
    file: Uint8List.fromList([100, 200, 150, 50]),
  ),
];

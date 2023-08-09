import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/presentation/widgets/chat/bubble_message.dart';
import 'package:yes_no_maybe_app/presentation/widgets/chat/her_message.dart';
import 'package:yes_no_maybe_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://assets.materialup.com/uploads/b78ca002-cd6c-4f84-befb-c09dd9261025/preview.png'),
            )),
        centerTitle: false,
        title: Text('Persona 2'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Expanded(child: ListView.builder(
            itemBuilder: (context, index) {
              return (index % 2 == 0)
                  ? HerMessageBubble()
                  : MessageBubble(
                      alignment: CrossAxisAlignment.end,
                      message: Text(
                        'hey',
                        style: TextStyle(color: Colors.white),
                      ));
            },
          )),
          MessageFieldBox()
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/presentation/widgets/chat/bubble_message.dart';

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
                  ? MessageBubble(
                      alignment: CrossAxisAlignment.start,
                      message: Image(
                        height: 300,
                        width: 300,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://i0.wp.com/www.printmag.com/wp-content/uploads/2021/02/4cbe8d_f1ed2800a49649848102c68fc5a66e53mv2.gif?resize=476%2C280&ssl=1'),
                      ),
                    )
                  : MessageBubble(
                      alignment: CrossAxisAlignment.end, message: Text('hey'));
            },
          )),
          Text('Mundo')
        ],
      ),
    ));
  }
}

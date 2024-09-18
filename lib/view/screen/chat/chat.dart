import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/utils/app_color.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  ChatPageState createState() => ChatPageState();
}

class ChatPageState extends State<ChatPage> {
  final List<String> _messages = []; // Stores the chat messages
  final TextEditingController _controller =
      TextEditingController(); // Controller for the input field

  // Function to handle sending a message
  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColor.primaryColor,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: Image.asset(
              "assets/image/chat.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: <Widget>[
              // Display the list of messages
              Expanded(
                child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: index % 2 == 0
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: index % 2 == 0
                                ? Colors.white
                                : Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            _messages[index],
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              // Input area for typing messages
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    // Text field to type message
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Type a message...',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: AppColor.primaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: AppColor.primaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),

                    // Send button
                    IconButton(
                      icon: const Icon(
                        Icons.send,
                        size: 40,
                      ),
                      color: AppColor.primaryColor,
                      onPressed: _sendMessage,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

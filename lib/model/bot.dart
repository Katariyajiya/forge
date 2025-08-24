import 'dart:io';
import 'dart:typed_data';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:image_picker/image_picker.dart';

class Bot extends StatefulWidget {
  const Bot({super.key});

  @override
  State<Bot> createState() => _BotState();
}

class _BotState extends State<Bot> {
  final Gemini gemini = Gemini.instance;
  List<ChatMessage> chatMessageList = [];

  ChatUser currentUser = ChatUser(id: "0", firstName: "User");

  ChatUser geminiUser =
  ChatUser(id: "1", profileImage: "assets/images/cake2.jpg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forge 🔥"),
        centerTitle: true,
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return DashChat(
      inputOptions: InputOptions(trailing: [
        IconButton(
          onPressed: _sendMediaMessage,
          icon: Icon(Icons.camera_alt),
        ),

      ]),
      currentUser: currentUser,
      onSend: _sendMessage,
      messages: chatMessageList,

    );
  }

  void _sendMessage(ChatMessage chatMessage) {
    setState(() {
      chatMessageList = [chatMessage, ...chatMessageList];
    });

    try {
      String hiddenPrompt = """
You are a professional chef and recipe writer. Analyze the uploaded food image carefully and provide the recipe in a clean, structured, and user-friendly format. Avoid using asterisks (*). Use this exact structure:

Dish Name: <name here>

Ingredients:
- item 1
- item 2
- item 3

Instructions:
1. step one
2. step two
3. step three

Additional Notes:
- tip 1
- tip 2

If the dish is unclear, provide the closest possible recipe and mark it as an approximation.
""";

      List<Uint8List>? images;
      if (chatMessage.medias?.isNotEmpty ?? false) {
        images = [
          File(chatMessage.medias!.first.url).readAsBytesSync(),
        ];
      }

      gemini.streamGenerateContent(
        hiddenPrompt,
        images: images,
      ).listen((event) {
        String response = event.content?.parts
            ?.map((part) => part is TextPart ? part.text : "")
            .join(" ") ??
            "";

        // Format recipe text properly
        String formattedResponse = _formatRecipe(response);

        if (chatMessageList.isNotEmpty &&
            chatMessageList.first.user == geminiUser) {
          ChatMessage lastMessage = chatMessageList.removeAt(0);
          lastMessage.text += formattedResponse;
          setState(() {
            chatMessageList = [lastMessage, ...chatMessageList];
          });
        } else {
          ChatMessage message = ChatMessage(
            user: geminiUser,
            createdAt: DateTime.now(),
            text: formattedResponse,
          );
          setState(() {
            chatMessageList = [message, ...chatMessageList];
          });
        }
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  /// Custom formatter to make Gemini’s response look neat
  String _formatRecipe(String text) {
    return text
        .replaceAll("Dish Name:", "\n🍽 Dish Name:\n")
        .replaceAll("Ingredients:", "\n📝 Ingredients:\n")
        .replaceAll("Instructions:", "\n👨‍🍳 Instructions:\n")
        .replaceAll("Additional Notes:", "\n💡 Additional Notes:\n")
        .trim();
  }

  void _sendMediaMessage() async {
    ImagePicker picker = ImagePicker();
    XFile? file = await picker.pickImage(source: ImageSource.camera);

    if (file != null) {
      ChatMessage chatMessage = ChatMessage(
        user: currentUser,
        createdAt: DateTime.now(),
        medias: [
          ChatMedia(url: file.path, fileName: '', type: MediaType.image),
        ],
      );
      _sendMessage(chatMessage);
    }
  }
}

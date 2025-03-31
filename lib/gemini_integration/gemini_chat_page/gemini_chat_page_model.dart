import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gemini_integration/chat_thread/chat_thread_widget.dart';
import '/index.dart';
import 'gemini_chat_page_widget.dart' show GeminiChatPageWidget;
import 'package:flutter/material.dart';

class GeminiChatPageModel extends FlutterFlowModel<GeminiChatPageWidget> {
  ///  Local state fields for this page.

  DocumentReference? activeChat;

  bool hasActiveChat = false;

  ///  State fields for stateful widgets in this page.

  // Model for chatThread component.
  late ChatThreadModel chatThreadModel;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ConversationsRecord? newConversation;

  @override
  void initState(BuildContext context) {
    chatThreadModel = createModel(context, () => ChatThreadModel());
  }

  @override
  void dispose() {
    chatThreadModel.dispose();
  }
}

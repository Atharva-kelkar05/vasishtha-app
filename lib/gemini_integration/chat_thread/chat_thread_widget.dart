import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/gemini/gemini.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_thread_model.dart';
export 'chat_thread_model.dart';

class ChatThreadWidget extends StatefulWidget {
  const ChatThreadWidget({
    super.key,
    this.conversationRef,
  });

  final DocumentReference? conversationRef;

  @override
  State<ChatThreadWidget> createState() => _ChatThreadWidgetState();
}

class _ChatThreadWidgetState extends State<ChatThreadWidget> {
  late ChatThreadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatThreadModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {
        _model.textController?.clear();
      });
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ConversationsRecord>(
      stream: ConversationsRecord.getDocument(widget.conversationRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: SpinKitChasingDots(
                color: FlutterFlowTheme.of(context).primary,
                size: 50.0,
              ),
            ),
          );
        }

        final containerConversationsRecord = snapshot.data!;

        return Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          constraints: BoxConstraints(
            minHeight: 200.0,
          ),
          decoration: BoxDecoration(),
          child: SingleChildScrollView(
            primary: false,
            controller: _model.mainColumn,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.95,
                  constraints: BoxConstraints(
                    minHeight: 50.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: SingleChildScrollView(
                    controller: _model.mainColumn2,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Builder(
                          builder: (context) {
                            final chatMessages = containerConversationsRecord
                                .conversation
                                .toList();

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: chatMessages.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 4.0),
                              itemBuilder: (context, chatMessagesIndex) {
                                final chatMessagesItem =
                                    chatMessages[chatMessagesIndex];
                                return Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      if (chatMessagesItem.userSent) {
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.03,
                                                    0.0,
                                                  ),
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.02,
                                                    0.0,
                                                  ),
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.03,
                                                    0.0,
                                                  ),
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.02,
                                                    0.0,
                                                  )),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 2.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(16.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(16.0),
                                                topRight: Radius.circular(16.0),
                                              ),
                                            ),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                minWidth: 200.0,
                                                minHeight: 45.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(16.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft:
                                                      Radius.circular(16.0),
                                                  topRight:
                                                      Radius.circular(16.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.03,
                                                                  0.0,
                                                                ),
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.02,
                                                                  0.0,
                                                                ),
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.03,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Text(
                                                            currentUserDisplayName,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .manrope(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 8.0)),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.03,
                                                                    0.0,
                                                                  ),
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.02,
                                                                    0.0,
                                                                  ),
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.03,
                                                                    0.0,
                                                                  ),
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.02,
                                                                    0.0,
                                                                  )),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          chatMessagesItem.text,
                                                          '- -',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        maxLines: 60,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .manrope(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.03,
                                                                    0.0,
                                                                  ),
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.01,
                                                                    0.0,
                                                                  )),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          dateTimeFormat(
                                                            "relative",
                                                            chatMessagesItem
                                                                .timeCreated,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          '- -',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .manrope(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      } else {
                                        return Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.03,
                                                      0.0,
                                                    ),
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.02,
                                                      0.0,
                                                    ),
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.03,
                                                      0.0,
                                                    ),
                                                    0.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 2.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(16.0),
                                                  topLeft:
                                                      Radius.circular(16.0),
                                                  topRight:
                                                      Radius.circular(16.0),
                                                ),
                                              ),
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  minWidth: 200.0,
                                                  minHeight: 45.0,
                                                  maxWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.9,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(16.0),
                                                    topLeft:
                                                        Radius.circular(16.0),
                                                    topRight:
                                                        Radius.circular(16.0),
                                                  ),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.03,
                                                                    0.0,
                                                                  ),
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.02,
                                                                    0.0,
                                                                  ),
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.03,
                                                                    0.0,
                                                                  ),
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Icon(
                                                              Icons
                                                                  .auto_awesome_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Vasishtha',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .manrope(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: Padding(
                                                        padding: EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.03,
                                                                  0.0,
                                                                ),
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.02,
                                                                  0.0,
                                                                ),
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.03,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            chatMessagesItem
                                                                .text,
                                                            '- -',
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          maxLines: 60,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .manrope(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 1.0),
                                                      child: Padding(
                                                        padding: EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.03,
                                                                  0.0,
                                                                ),
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.01,
                                                                  0.0,
                                                                )),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            dateTimeFormat(
                                                              "relative",
                                                              chatMessagesItem
                                                                  .timeCreated,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            '- -',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .manrope(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                );
                              },
                              controller: _model.listViewController,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      0.0,
                      0.0,
                      0.0,
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).height * 0.08,
                        0.0,
                      )),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.95,
                          constraints: BoxConstraints(
                            minHeight: 75.0,
                          ),
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.73,
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText: 'Enter your message here',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.manrope(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .accent3,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.manrope(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    maxLines: 60,
                                    minLines: 1,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).primary,
                                  icon: Icon(
                                    Icons.send_rounded,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    // myMessage
                                    unawaited(
                                      () async {
                                        await containerConversationsRecord
                                            .reference
                                            .update({
                                          ...createConversationsRecordData(
                                            userRef:
                                                containerConversationsRecord
                                                    .userRef,
                                            chatTimeEdit: getCurrentTimestamp,
                                            chatTimeCreated:
                                                getCurrentTimestamp,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'conversation':
                                                  FieldValue.arrayUnion([
                                                getMessageFirestoreData(
                                                  updateMessageStruct(
                                                    MessageStruct(
                                                      text: _model
                                                          .textController.text,
                                                      userSent: true,
                                                      timeCreated:
                                                          getCurrentTimestamp,
                                                      type: 'prompt',
                                                    ),
                                                    clearUnsetFields: false,
                                                  ),
                                                  true,
                                                )
                                              ]),
                                            },
                                          ),
                                        });
                                      }(),
                                    );
                                    await geminiGenerateText(
                                      context,
                                      'Hey, I want you to answer in brief and in a textual manner. Do not use any of the * or asterisk marks or any type of formatting like bold, italic, and underline in you response. In short, don\'t make use of markdown. if I ask for point-wise response, you can use \"-\" as bullet.${_model.textController.text}',
                                    ).then((generatedText) {
                                      safeSetState(() =>
                                          _model.createdText = generatedText);
                                    });

                                    unawaited(
                                      () async {
                                        await _model.listViewController
                                            ?.animateTo(
                                          _model.listViewController!.position
                                              .maxScrollExtent,
                                          duration: Duration(milliseconds: 100),
                                          curve: Curves.ease,
                                        );
                                      }(),
                                    );
                                    safeSetState(() {
                                      _model.textController?.clear();
                                    });
                                    // showResponse
                                    _model.addToConversation(MessageStruct(
                                      text: _model.createdText,
                                      userSent: false,
                                      timeCreated: getCurrentTimestamp,
                                      type: 'response',
                                    ));
                                    safeSetState(() {});
                                    // geminiResponse

                                    await containerConversationsRecord.reference
                                        .update({
                                      ...createConversationsRecordData(
                                        userRef: containerConversationsRecord
                                            .userRef,
                                        chatTimeCreated: getCurrentTimestamp,
                                        chatTimeEdit: getCurrentTimestamp,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'conversation':
                                              FieldValue.arrayUnion([
                                            getMessageFirestoreData(
                                              updateMessageStruct(
                                                MessageStruct(
                                                  text: _model.createdText,
                                                  userSent: false,
                                                  timeCreated:
                                                      getCurrentTimestamp,
                                                  type: 'response',
                                                ),
                                                clearUnsetFields: false,
                                              ),
                                              true,
                                            )
                                          ]),
                                        },
                                      ),
                                    });
                                    await Future.delayed(
                                        const Duration(milliseconds: 1000));
                                    await _model.listViewController?.animateTo(
                                      _model.listViewController!.position
                                          .maxScrollExtent,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.ease,
                                    );
                                    await _model.mainColumn2?.animateTo(
                                      _model.mainColumn2!.position
                                          .maxScrollExtent,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.ease,
                                    );
                                    await _model.mainColumn?.animateTo(
                                      _model
                                          .mainColumn!.position.maxScrollExtent,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.ease,
                                    );

                                    safeSetState(() {});
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

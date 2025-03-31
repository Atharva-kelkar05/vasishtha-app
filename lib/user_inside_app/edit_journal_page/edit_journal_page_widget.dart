import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'edit_journal_page_model.dart';
export 'edit_journal_page_model.dart';

class EditJournalPageWidget extends StatefulWidget {
  const EditJournalPageWidget({
    super.key,
    required this.userNoteDoc,
  });

  final UserJournalRecord? userNoteDoc;

  static String routeName = 'EditJournalPage';
  static String routePath = '/editJournalPage';

  @override
  State<EditJournalPageWidget> createState() => _EditJournalPageWidgetState();
}

class _EditJournalPageWidgetState extends State<EditJournalPageWidget> {
  late EditJournalPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditJournalPageModel());

    _model.noteTitleTextController ??=
        TextEditingController(text: widget.userNoteDoc?.userNoteTitle);
    _model.noteTitleFocusNode ??= FocusNode();

    _model.mainNotesTextController ??=
        TextEditingController(text: widget.userNoteDoc?.userNoteBody);
    _model.mainNotesFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: responsiveVisibility(
          context: context,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.chevron_left_sharp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
                actions: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 50.0,
                        fillColor: Color(0x00525735),
                        icon: Icon(
                          Icons.delete_forever_sharp,
                          color: FlutterFlowTheme.of(context).error,
                          size: 26.0,
                        ),
                        onPressed: () async {
                          await widget.userNoteDoc!.reference.delete();
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text(
                                        'Are you sure you want to delete?'),
                                    content:
                                        Text('This action can not be undone.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Confirm'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            context.goNamed(
                              JournalPageWidget.routeName,
                              queryParameters: {
                                'userNoteDoc': serializeParam(
                                  widget.userNoteDoc,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'userNoteDoc': widget.userNoteDoc,
                              },
                            );

                            return;
                          } else {
                            return;
                          }
                        },
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 50.0,
                        fillColor: Color(0x00525735),
                        icon: Icon(
                          Icons.check_rounded,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 28.0,
                        ),
                        onPressed: () async {
                          await widget.userNoteDoc!.reference
                              .update(createUserJournalRecordData(
                            userNoteTitle: _model.noteTitleTextController.text,
                            userNoteBody: _model.mainNotesTextController.text,
                            userNoteTime: getCurrentTimestamp,
                            userRef: currentUserReference?.id,
                            noteEditTime: getCurrentTimestamp,
                          ));

                          context.goNamed(
                            JournalPageWidget.routeName,
                            queryParameters: {
                              'userNoteDoc': serializeParam(
                                widget.userNoteDoc,
                                ParamType.Document,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'userNoteDoc': widget.userNoteDoc,
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
                centerTitle: true,
                elevation: 2.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  0.0,
                  valueOrDefault<double>(
                    MediaQuery.sizeOf(context).height * 0.05,
                    0.0,
                  ),
                  0.0,
                  0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      child: TextFormField(
                        controller: _model.noteTitleTextController,
                        focusNode: _model.noteTitleFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Manrope',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Your Title',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Manrope',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              lineHeight: 2.0,
                            ),
                        maxLines: 3,
                        minLines: 1,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.noteTitleTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Divider(
                      thickness: 2.0,
                      indent: MediaQuery.sizeOf(context).width * 0.05,
                      endIndent: MediaQuery.sizeOf(context).width * 0.05,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      child: TextFormField(
                        controller: _model.mainNotesTextController,
                        focusNode: _model.mainNotesFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Manrope',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Add your Thoughts',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Manrope',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              letterSpacing: 0.0,
                              lineHeight: 2.0,
                            ),
                        maxLines: null,
                        minLines: 1,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.mainNotesTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ].divide(SizedBox(height: 10.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

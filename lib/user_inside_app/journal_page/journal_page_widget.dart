import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'journal_page_model.dart';
export 'journal_page_model.dart';

class JournalPageWidget extends StatefulWidget {
  const JournalPageWidget({
    super.key,
    this.userNoteDoc,
  });

  final UserJournalRecord? userNoteDoc;

  static String routeName = 'JournalPage';
  static String routePath = '/journalPage';

  @override
  State<JournalPageWidget> createState() => _JournalPageWidgetState();
}

class _JournalPageWidgetState extends State<JournalPageWidget> {
  late JournalPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JournalPageModel());

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
            ? PreferredSize(
                preferredSize: Size.fromHeight(70.0),
                child: AppBar(
                  backgroundColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  automaticallyImplyLeading: false,
                  title: Text(
                    'My Journals',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  actions: [
                    FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.add_box_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(CreateJournalPageWidget.routeName);
                      },
                    ),
                  ],
                  centerTitle: false,
                  toolbarHeight: 70.0,
                  elevation: 3.0,
                ),
              )
            : null,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.95,
                      height: MediaQuery.sizeOf(context).height * 0.75,
                      decoration: BoxDecoration(),
                      child: StreamBuilder<List<UserJournalRecord>>(
                        stream: queryUserJournalRecord(
                          queryBuilder: (userJournalRecord) => userJournalRecord
                              .orderBy('userNoteTime', descending: true),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: SpinKitFadingCircle(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 40.0,
                                ),
                              ),
                            );
                          }
                          List<UserJournalRecord>
                              staggeredViewUserJournalRecordList =
                              snapshot.data!;

                          return MasonryGridView.builder(
                            gridDelegate:
                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            itemCount:
                                staggeredViewUserJournalRecordList.length,
                            itemBuilder: (context, staggeredViewIndex) {
                              final staggeredViewUserJournalRecord =
                                  staggeredViewUserJournalRecordList[
                                      staggeredViewIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    EditJournalPageWidget.routeName,
                                    queryParameters: {
                                      'userNoteDoc': serializeParam(
                                        staggeredViewUserJournalRecord,
                                        ParamType.Document,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'userNoteDoc':
                                          staggeredViewUserJournalRecord,
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.leftToRight,
                                        duration: Duration(milliseconds: 600),
                                      ),
                                    },
                                  );
                                },
                                child: Container(
                                  height: random_data
                                      .randomInteger(150, 300)
                                      .toDouble(),
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.sizeOf(context).width * 0.6,
                                    maxHeight:
                                        MediaQuery.sizeOf(context).height *
                                            0.45,
                                  ),
                                  decoration: BoxDecoration(
                                    color: valueOrDefault<Color>(
                                      functions.getRandomGreenShade(),
                                      Color(0xFF505838),
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width *
                                              0.02,
                                          0.0,
                                        ),
                                        0.0,
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width *
                                              0.02,
                                          0.0,
                                        ),
                                        0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Wrap(
                                          spacing: 15.0,
                                          runSpacing: 10.0,
                                          alignment: WrapAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Text(
                                              staggeredViewUserJournalRecord
                                                  .userNoteTitle,
                                              maxLines: 3,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Text(
                                              dateTimeFormat(
                                                "d/M h:mm a",
                                                staggeredViewUserJournalRecord
                                                    .userNoteTime!,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        Text(
                                          staggeredViewUserJournalRecord
                                              .userNoteBody,
                                          textAlign: TextAlign.start,
                                          maxLines: 5,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ]
                                          .addToStart(SizedBox(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.01))
                                          .addToEnd(SizedBox(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.01)),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

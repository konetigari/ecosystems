import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RepeatOrderWidget extends StatefulWidget {
  RepeatOrderWidget({
    Key key,
    this.searchTerm,
  }) : super(key: key);

  final String searchTerm;

  @override
  _RepeatOrderWidgetState createState() => _RepeatOrderWidgetState();
}

class _RepeatOrderWidgetState extends State<RepeatOrderWidget> {
  String dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: searchArtCall(
        q: widget.searchTerm,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: Color(0xFF739FC9),
              ),
            ),
          );
        }
        final repeatOrderSearchArtResponse = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.secondaryColor,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  color: Color(0xFF739FC9),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Deliver to',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'Source Sans Pro',
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: FlutterFlowTheme.secondaryColor,
                              size: 24,
                            ),
                            iconSize: 24,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: FlutterFlowDropDown(
                              initialOption: 'Mel\'s Place Bar & Bistro',
                              options: ['Mel\'s Place Bar & Bistro'],
                              onChanged: (value) {
                                setState(() => dropDownValue = value);
                              },
                              width: 200,
                              height: 30,
                              textStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Source Sans Pro',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                              fillColor: FlutterFlowTheme.primaryColor,
                              elevation: 2,
                              borderColor: Color(0xFF739FC9),
                              borderWidth: 0,
                              borderRadius: 0,
                              margin: EdgeInsets.fromLTRB(10, 4, 10, 4),
                              hidesUnderline: true,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

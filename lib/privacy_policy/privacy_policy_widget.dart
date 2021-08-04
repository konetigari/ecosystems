import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  PrivacyPolicyWidget({Key key}) : super(key: key);

  @override
  _PrivacyPolicyWidgetState createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF739FC9),
        automaticallyImplyLeading: true,
        title: Padding(
          padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
          child: Text(
            'Privacy policy',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.title2.override(
              fontFamily: 'Source Sans Pro',
              color: FlutterFlowTheme.secondaryColor,
            ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFF262D34),
      body: Stack(
        children: [
          FlutterFlowWebView(
            url: 'https://flutter.dev',
            bypass: false,
            verticalScroll: false,
            horizontalScroll: false,
          )
        ],
      ),
    );
  }
}

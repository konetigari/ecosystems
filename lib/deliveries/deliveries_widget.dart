import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../products_page/products_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveriesWidget extends StatefulWidget {
  DeliveriesWidget({Key key}) : super(key: key);

  @override
  _DeliveriesWidgetState createState() => _DeliveriesWidgetState();
}

class _DeliveriesWidgetState extends State<DeliveriesWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFDBE2E7),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xFF739FC9),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 34, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'Home_page'),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          child: Text(
                            'Deliveries',
                            style: FlutterFlowTheme.title1.override(
                              fontFamily: 'Source Sans Pro',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment(0.75, 0),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Icon(
                                Icons.filter_alt,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductsPageWidget(
                                            searchTerm: textController.text,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Icon(
                                      Icons.search,
                                      color: FlutterFlowTheme.tertiaryColor,
                                      size: 20,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: TextFormField(
                                        controller: textController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Search order ID',
                                          labelStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Source Sans Pro',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(),
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  TabBar(
                    labelColor: FlutterFlowTheme.tertiaryColor,
                    indicatorColor: FlutterFlowTheme.tertiaryColor,
                    tabs: [
                      Tab(
                        text: 'Upcoming',
                      ),
                      Tab(
                        text: 'Past',
                      )
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Stack(
                          children: [
                            ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: ListTile(
                                    title: Text(
                                      'Lorem ipsum dolor...',
                                      style: FlutterFlowTheme.title3.override(
                                        fontFamily: 'Source Sans Pro',
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Lorem ipsum dolor...',
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Source Sans Pro',
                                      ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF303030),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: ListTile(
                                    title: Text(
                                      'Lorem ipsum dolor...',
                                      style: FlutterFlowTheme.title3.override(
                                        fontFamily: 'Source Sans Pro',
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Lorem ipsum dolor...',
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Source Sans Pro',
                                      ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF303030),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Text(
                          'Tab View 3',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 32,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [],
              ),
            ),
          )
        ],
      ),
    );
  }
}

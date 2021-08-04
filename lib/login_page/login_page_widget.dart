import '../auth/auth_util.dart';
import '../create_account_page/create_account_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../forget_password/forget_password_widget.dart';
import '../main.dart';
import '../privacy_policy/privacy_policy_widget.dart';
import '../terms_of_use/terms_of_use_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  LoginPageWidget({Key key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0, -1),
            child: Image.asset(
              'assets/images/zeemart-background.jpg',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                                      child: Image.asset(
                                        'assets/images/Artboard 30.png',
                                        width: 150,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(4, 0, 4, 15),
                                          child: Container(
                                            width: 300,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE0E0E0),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 0, 20, 0),
                                              child: TextFormField(
                                                controller: emailTextController,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: 'Email',
                                                  hintStyle:
                                                      GoogleFonts.getFont(
                                                    'Open Sans',
                                                    color: Color(0x7F455A64),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                ),
                                                style: GoogleFonts.getFont(
                                                  'Source Sans Pro',
                                                  color: Color(0xFF455A64),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(4, 0, 4, 20),
                                          child: Container(
                                            width: 300,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE0E0E0),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      20, 0, 20, 0),
                                                  child: TextFormField(
                                                    controller:
                                                        passwordTextController,
                                                    obscureText:
                                                        !passwordVisibility,
                                                    decoration: InputDecoration(
                                                      hintText: 'Password',
                                                      hintStyle:
                                                          GoogleFonts.getFont(
                                                        'Open Sans',
                                                        color:
                                                            Color(0x7F455A64),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      suffixIcon: InkWell(
                                                        onTap: () => setState(
                                                          () => passwordVisibility =
                                                              !passwordVisibility,
                                                        ),
                                                        child: Icon(
                                                          passwordVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          size: 22,
                                                        ),
                                                      ),
                                                    ),
                                                    style: GoogleFonts.getFont(
                                                      'Source Sans Pro',
                                                      color: Color(0xFF455A64),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 18),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final user =
                                                  await signInWithEmail(
                                                context,
                                                emailTextController.text,
                                                passwordTextController.text,
                                              );
                                              if (user == null) {
                                                return;
                                              }

                                              await Navigator
                                                  .pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavBarPage(
                                                          initialPage:
                                                              'Home_page'),
                                                ),
                                                (r) => false,
                                              );
                                            },
                                            text: 'Sign in with email',
                                            options: FFButtonOptions(
                                              width: 300,
                                              height: 50,
                                              color: Color(0xFF739FC9),
                                              textStyle: GoogleFonts.getFont(
                                                'Source Sans Pro',
                                                color: Color(0xFFDEDEDE),
                                                fontSize: 16,
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 0,
                                              ),
                                              borderRadius: 25,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            await Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    CreateAccountPageWidget(),
                                              ),
                                              (r) => false,
                                            );
                                          },
                                          child: Text(
                                            'Create Account',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                              color: Color(0xFF1F1F1F),
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ForgetPasswordWidget(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Forget Password?',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
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
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Container(
                                width: double.infinity,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    TermsOfUseWidget(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Terms of use',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    PrivacyPolicyWidget(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Privacy policy',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
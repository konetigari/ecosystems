import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'auth/firebase_user_provider.dart';
import 'package:ecosystem/login_page/login_page_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'home_page/home_page_widget.dart';
import 'invoices/invoices_widget.dart';
import 'reports/reports_widget.dart';
import 'more/more_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Stream<EcosystemFirebaseUser> userStream;
  EcosystemFirebaseUser initialUser;

  @override
  void initState() {
    super.initState();
    userStream = ecosystemFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ecosystem',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: initialUser == null
          ? Center(
              child: Builder(
                builder: (context) => Image.asset(
                  'assets/images/Artboard 30.png',
                  width: MediaQuery.of(context).size.width / 2,
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          : currentUser.loggedIn
              ? NavBarPage()
              : LoginPageWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Home_page';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Home_page': HomePageWidget(),
      'Invoices': InvoicesWidget(),
      'Reports': ReportsWidget(),
      'More': MoreWidget(),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
              size: 26,
            ),
            activeIcon: Icon(
              Icons.list_alt,
              size: 28,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.fileInvoice,
              size: 26,
            ),
            activeIcon: FaIcon(
              FontAwesomeIcons.fileInvoice,
              size: 26,
            ),
            label: 'Invoices',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.content_paste,
              size: 26,
            ),
            activeIcon: Icon(
              Icons.content_paste,
              size: 26,
            ),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_list,
              color: Color(0xFF9E9E9E),
              size: 26,
            ),
            activeIcon: Icon(
              Icons.view_list,
              color: FlutterFlowTheme.primaryColor,
              size: 26,
            ),
            label: 'More',
          )
        ],
        backgroundColor: Colors.black,
        currentIndex: tabs.keys.toList().indexOf(_currentPage),
        selectedItemColor: Color(0xFF6599CE),
        unselectedItemColor: Color(0xFF9E9E9E),
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

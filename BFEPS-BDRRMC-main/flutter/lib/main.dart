import 'package:bfeps_bdrrmc/login.dart';
import 'package:bfeps_bdrrmc/screen/dashboard_page.dart';
import 'package:flutter/material.dart';

import 'components/header_bar.dart';
import 'components/side_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BFEPS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF6F7F9),
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Color.fromARGB(255, 199, 210, 255),
          cursorColor: Color(0xFF5576F5),
          selectionHandleColor: Color(0xFF5576F5),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(userName: '',),
    );
  }
}

class DashboardLayout extends StatefulWidget {
  const DashboardLayout({super.key, required String userName});

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout> {
  Widget _currentPage = const Dashboardpage();
  bool _isSidebarVisible = true;
  bool _isProfilingExpanded = false;
  String _selectedMenu = 'Dashboard';

  void _selectPage(String menu, Widget page) {
    setState(() {
      _selectedMenu = menu;
      _currentPage = page;
    });
  }

  void _toggleSidebarVisibility() {
    setState(() {
      _isSidebarVisible = !_isSidebarVisible;
    });
  }

  void _toggleProfilingExpansion() {
    setState(() {
      _isProfilingExpanded = !_isProfilingExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveLayout(
        isSidebarVisible: _isSidebarVisible,
        isProfilingExpanded: _isProfilingExpanded,
        selectedMenu: _selectedMenu,
        currentPage: _currentPage,
        onMenuSelect: _selectPage,
        onToggleSidebar: _toggleSidebarVisibility,
        onToggleProfiling: _toggleProfilingExpansion,
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  final bool isSidebarVisible;
  final bool isProfilingExpanded;
  final String selectedMenu;
  final Widget currentPage;
  final Function(String, Widget) onMenuSelect;
  final VoidCallback onToggleSidebar;
  final VoidCallback onToggleProfiling;

  const ResponsiveLayout({
    required this.isSidebarVisible,
    required this.isProfilingExpanded,
    required this.selectedMenu,
    required this.currentPage,
    required this.onMenuSelect,
    required this.onToggleSidebar,
    required this.onToggleProfiling,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isTabletOrMobile = constraints.maxWidth <= 1230;
        return Stack(
          children: [
            Row(
              children: [
                if (isSidebarVisible && !isTabletOrMobile)
                  SideBar(
                    isProfilingExpanded: isProfilingExpanded,
                    selectedMenu: selectedMenu,
                    onMenuSelect: onMenuSelect,
                    toggleProfiling: onToggleProfiling,
                  ),
                Expanded(
                  child: Column(
                    children: [
                      HeaderBar(
                        onBurgerMenuTap: onToggleSidebar,
                      ),
                      Expanded(
                        child: currentPage,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (isSidebarVisible && isTabletOrMobile)
              GestureDetector(
                onTap: onToggleSidebar,
                child: Container(
                  color: Colors.black.withAlpha((0.5 * 255).toInt()),
                ),
              ),
            if (isSidebarVisible && isTabletOrMobile)
              Align(
                alignment: Alignment.centerLeft,
                child: SideBar(
                  isProfilingExpanded: isProfilingExpanded,
                  selectedMenu: selectedMenu,
                  onMenuSelect: (menu, page) {
                    onMenuSelect(menu, page);
                    onToggleSidebar();
                  },
                  toggleProfiling: onToggleProfiling,
                ),
              ),
          ],
        );
      },
    );
  }
}

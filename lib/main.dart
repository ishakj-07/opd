import 'package:flutter/material.dart';
import 'package:opd_app/appointments_screen.dart';
import 'package:opd_app/billing.dart';
import 'package:opd_app/book_appointment.dart';
import 'package:opd_app/dashboardscreen.dart';
import 'package:opd_app/my_widget.dart';
import 'package:opd_app/notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: HomePage()),
    );
  }
}

// Screens
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    DashboardScreen(),
    AppointmentsScreen(),
    MyWidget(),
    BookAppointmentScreen(),
    BillingScreen(),
    Notification_top(),
  ];

  //for the appbar title name change
  final List<String> _titles = [
    'Dashboard',
    'Upcoming Appointments',
    'Add New Patients',
    'Booking Appointments',
    'Billing',
    'Notification',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_titles[_selectedIndex],
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_on), // or any icon you want
            onPressed: () {
              //Navigator.pop(context);
              setState(() => _selectedIndex = 5);
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // DrawerHeader(
            //   decoration: BoxDecoration(color: Colors.blue),
            //   child: Text(
            //     'Menu',
            //     style: TextStyle(color: Colors.white, fontSize: 24),
            //   ),
            // ),
            Padding(padding: EdgeInsets.only(top: 80)),
            ListTile(
              leading: Icon(
                Icons.dashboard,
                size: 14,
              ),
              title: Text(
                'Dashboard',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() => _selectedIndex = 0);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.add_circle_outline,
                size: 14,
              ),
              title: Text(
                'Add New Patients',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() => _selectedIndex = 2);
              },
            ),

            //Upcoming Upointments
            ListTile(
              leading: Icon(
                Icons.calendar_month_outlined,
                size: 14,
              ),
              title: Text(
                'Upcoming Appointments',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() => _selectedIndex = 1);
              },
            ),

            //Booking Appointments
            ListTile(
              leading: Icon(
                Icons.schedule,
                size: 14,
              ),
              title: Text(
                'Booking Appointments',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() => _selectedIndex = 3);
              },
            ),

            //Billings
            ListTile(
              leading: Icon(
                Icons.article,
                size: 14,
              ),
              title: Text(
                'Billing',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() => _selectedIndex = 4);
              },
            ),

            //Divider
            Divider(
              color: Colors.grey, // Line color
              thickness: 1.0, // Line thickness
              height: 20.0, // Total vertical space including padding
              indent: 16.0, // Left spacing
              endIndent: 16.0, // Right spacing
            ),

            //Notification
            ListTile(
              leading: Icon(
                Icons.notification_important,
                size: 14,
              ),
              title: Text(
                'Notification',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() => _selectedIndex = 5);
              },
            ),

            //History
            ListTile(
              leading: Icon(
                Icons.history,
                size: 14,
              ),
              title: Text(
                'History',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            //Logout
            ListTile(
              leading: Icon(
                Icons.logout,
                size: 14,
              ),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            SizedBox(height: 70),

            //Profile
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                //color: Colors.white,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 237, 237, 237),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // User Icon
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: Icon(Icons.person, color: Colors.black, size: 28),
                      radius: 22,
                    ),
                    SizedBox(width: 12),

                    // Name & Email
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Prajval Salve',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'prajvalsalve67@gmail.com',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),

                    // More icon
                    Icon(Icons.more_horiz, size: 24, color: Colors.black),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => _selectedIndex = 2);
        },
        backgroundColor: Colors.white,
        child: Icon(Icons.add, color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.teal,
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              color: _selectedIndex == 0 ? Colors.white : Colors.black,
              onPressed: () => setState(() => _selectedIndex = 0),
            ),
            IconButton(
              icon: Icon(Icons.access_time),
              color: _selectedIndex == 1 ? Colors.white : Colors.black,
              onPressed: () => setState(() => _selectedIndex = 1),
            ),
            SizedBox(width: 40), // spacing for FAB
            IconButton(
              icon: Icon(Icons.calendar_today),
              color: _selectedIndex == 3 ? Colors.white : Colors.black,
              onPressed: () => setState(() => _selectedIndex = 3),
            ),
            IconButton(
              icon: Icon(Icons.receipt_long),
              color: _selectedIndex == 4 ? Colors.white : Colors.black,
              onPressed: () => setState(() => _selectedIndex = 4),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:opd_app/bookin_schedule_screeen.dart';

class Notification_top extends StatefulWidget {
  const Notification_top({super.key});

  @override
  State<Notification_top> createState() => _Notification_topState();
}

class _Notification_topState extends State<Notification_top> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Book Appointment')),
      body: Expanded(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Card(
            color: Colors.grey[200],
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ListTile(
              title: const Text("Data: "),
              //subtitle: const Text("Date: "),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 121, 121),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BookingScheduleScreen(),
                    ),
                  );
                },
                child: IconButton(
                  icon: Icon(Icons.delete), // or any icon you want
                  onPressed: () {
                    //Deleting process
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

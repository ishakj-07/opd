import 'package:flutter/material.dart';
import 'bookin_schedule_screeen.dart';

class BookAppointmentScreen extends StatelessWidget {
  const BookAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Book Appointment')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 10,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Select Doctor'),
            ),
            const SizedBox(height: 8),
            Container(
              // color: Colors.grey,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20), // Rounded corners
              ),
              child: DropdownButtonFormField<String>(
                value: null,
                decoration: InputDecoration.collapsed(hintText: ''),
                hint: Center(child: const Text("Select")),
                isExpanded: true,
                items: ['Dr. A', 'Dr. B']
                    .map(
                      (doc) => DropdownMenuItem(value: doc, child: Text(doc)),
                    )
                    .toList(),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Card(
                  color: Colors.grey[200],
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    title: const Text("Name: "),
                    subtitle: const Text("Date: "),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF738ED3),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BookingScheduleScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Book",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skydrive_driver/constants/colors/colors.dart';

class ProfessionalCardScreen extends StatefulWidget {
  @override
  _ProfessionalCardScreenState createState() => _ProfessionalCardScreenState();
}

class _ProfessionalCardScreenState extends State<ProfessionalCardScreen> {
  List<Booking> bookings = [
    Booking(
      name: 'Narasimha Varma',
      location: 'Kukatpally, Housing Board Colony..',
      distance: 3,
      date: '12/09/2023',
      time: '10:00 AM',
      status: 'Cancelled',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    // Add more bookings here
  ];

  // Function to simulate changing booking status
  void updateStatus(int index, String newStatus) {
    setState(() {
      bookings[index].status = newStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Today\'s Bookings',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: black,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      body: ListView.builder(
        itemCount: bookings.length,
        itemBuilder: (context, index) {
          return ProfessionalBookingCard(
            booking: bookings[index],
            onStatusChange: (newStatus) {
              updateStatus(index, newStatus);
            },
          );
        },
      ),
    );
  }
}

class Booking {
  String name;
  String location;
  double distance;
  String date;
  String time;
  String status;
  String imageUrl;

  Booking({
    required this.name,
    required this.location,
    required this.distance,
    required this.date,
    required this.time,
    required this.status,
    required this.imageUrl,
  });
}

class ProfessionalBookingCard extends StatefulWidget {
  final Booking booking;
  final ValueChanged<String> onStatusChange;

  const ProfessionalBookingCard({
    Key? key,
    required this.booking,
    required this.onStatusChange,
  }) : super(key: key);

  @override
  _ProfessionalBookingCardState createState() =>
      _ProfessionalBookingCardState();
}

class _ProfessionalBookingCardState extends State<ProfessionalBookingCard> {
  late String _status;

  @override
  void initState() {
    super.initState();
    _status = widget.booking.status;
  }

  void _changeStatus(String newStatus) {
    setState(() {
      _status = newStatus;
      widget.onStatusChange(newStatus);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: white,
      surfaceTintColor: white,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(widget.booking.imageUrl),
              radius: 30,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.booking.name,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_pin, color: Colors.red, size: 16),
                      SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          widget.booking.location,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.calendar_today, color: Colors.blue, size: 16),
                      SizedBox(width: 4),
                      Text(
                        widget.booking.date,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                      // SizedBox(width: 16),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.blue, size: 16),
                      SizedBox(width: 4),
                      Text(
                        widget.booking.time,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                        overflow: TextOverflow.fade,
                      ),
                      // SizedBox(width: 16),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(Icons.directions_walk, color: Colors.green, size: 16),
                    SizedBox(width: 4),
                    Text(
                      '${widget.booking.distance} KM',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () => _changeStatus(
                      _status == 'Cancelled' ? 'Confirmed' : 'Cancelled'),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: _status == 'Cancelled'
                          ? Colors.red[100]
                          : Colors.green[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      _status,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color:
                            _status == 'Cancelled' ? Colors.red : Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

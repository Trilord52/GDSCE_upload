import 'package:flutter/material.dart';

class Thirdapp extends StatelessWidget {
  const Thirdapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Maya Ramon,",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Text(
                          "Good Morning ☀️",
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(Icons.notifications, color: Colors.purpleAccent, size: 30),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "You have slept 09:30 that is above your recommendation",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(Icons.close, color: Colors.green.shade700),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Your Sleep Calendar",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (String day in ["Tue", "Wed", "Thu", "Fri", "Sat", "Sun"])
                      Column(
                        children: [
                          Text(day, style: TextStyle(fontSize: 12)),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(
                                
                              ),
                              padding: EdgeInsets.all(8),
                              backgroundColor: day == "Thu" ? Colors.black : Colors.grey.shade200,
                            ),
                            child: Text(
                              day == "Thu" ? "24" : "",
                              style: TextStyle(
                                color: day == "Thu" ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildSleepCard("Bed time", "7H and 28Min", Icons.bedtime),
                    _buildSleepCard("Alarm", "16H and 18Min", Icons.alarm),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Have a problem",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "Sleeping?",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple.shade100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Text(
                                "Consult an expert",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ),
                          ],
                        ),
                      ),
                      /*Image.asset("assets/sleeping.png", height: 80),*/
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          ],
        ),
      ),
    );
  }

  Widget _buildSleepCard(String title, String time, IconData icon) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.purple),
              SizedBox(width: 10),
              Text(title, style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(height: 10),
          Text(
            time,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

class Thirdapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text(
                  "Maya Ramon,",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Text(
                  "Good Morning ☀️",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "You have slept 09:30 that is above your recommendation",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(Icons.close, color: Colors.green.shade700),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Your Sleep Calendar",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (String day in ["Tue", "Wed", "Thu", "Fri", "Sat", "Sun"])
                      Column(
                        children: [
                          Text(day, style: TextStyle(fontSize: 16)),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: day == "Thu" ? Colors.black : Colors.grey.shade200,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              day == "Thu" ? "24" : "",
                              style: TextStyle(
                                color: day == "Thu" ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildSleepCard("Bed time", "7H and 28Min", Icons.bedtime),
                    _buildSleepCard("Alarm", "16H and 18Min", Icons.alarm),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Have a problem",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "Sleeping?",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple.shade100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Text(
                                "Consult an expert",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset("assets/sleeping.png", height: 80),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      ),
    );
  }

  Widget _buildSleepCard(String title, String time, IconData icon) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.purple),
              SizedBox(width: 10),
              Text(title, style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(height: 10),
          Text(
            time,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';

class Thirdapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text(
                  "Maya Ramon,",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Text(
                  "Good Morning ☀️",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "You have slept 09:30 that is above your recommendation",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(Icons.close, color: Colors.green.shade700),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Your Sleep Calendar",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (String day in ["Tue", "Wed", "Thu", "Fri", "Sat", "Sun"])
                      Column(
                        children: [
                          Text(day, style: TextStyle(fontSize: 16)),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: day == "Thu" ? Colors.black : Colors.grey.shade200,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              day == "Thu" ? "24" : "",
                              style: TextStyle(
                                color: day == "Thu" ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildSleepCard("Bed time", "7H and 28Min", Icons.bedtime),
                    _buildSleepCard("Alarm", "16H and 18Min", Icons.alarm),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Have a problem",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "Sleeping?",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple.shade100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Text(
                                "Consult an expert",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset("assets/sleeping.png", height: 80),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      ),
    );
  }

  Widget _buildSleepCard(String title, String time, IconData icon) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.purple),
              SizedBox(width: 10),
              Text(title, style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(height: 10),
          Text(
            time,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}*/

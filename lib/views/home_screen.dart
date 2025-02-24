import 'package:flutter/material.dart';

import '../widgets/background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          children: [
            const Row(
              children: <Widget>[
                Text(
                  'Good Morning, Vikas',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaler: TextScaler.linear(1),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_drop_down_circle_sharp,
                  size: 18,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  '9949228495',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textScaler: TextScaler.linear(1),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 70,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Center(
                    child: Text(
                      'Prepaid',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                      textScaler: TextScaler.linear(1),
                    ),
                  ),
                ),
                const Spacer(),
                const Icon(Icons.notifications_active_outlined),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.pink.shade100.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.all(0),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: SizedBox(
                      width: double.infinity,
                      height: 140,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(),
                                  child: Icon(Icons.mobiledata_off),
                                ),
                                SizedBox(width: 10),
                                Center(
                                    child: Icon(
                                  Icons.minimize,
                                  color: Colors.red,
                                  size: 22,
                                )),
                                SizedBox(width: 10),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '0',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            Text(
                                              ' pack',
                                              style: TextStyle(fontSize: 10),
                                            )
                                          ],
                                        ),
                                        Text('Expired',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.red)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                button('Veiw Pack'),
                                button('Recharge'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_circle_down_sharp,
                        color: Colors.red,
                        size: 18,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Uh-Oh! Your Plan has expired. Please recharge.',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                        textScaler: TextScaler.linear(1),
                      ),
                      const Spacer(),
                      Text(
                        'Recharge',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold),
                        textScaler: const TextScaler.linear(1),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.blue.shade100,
              child: SizedBox(
                width: double.infinity,
                height: 120,
                child: bluecard(),
              ),
            ),
            const SizedBox(height: 30),
            Card(
              child: SizedBox(
                width: double.infinity,
                height: 220,
                child: Column(
                  children: [
                    const Text('Quick Actions'),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          actions('Recharge'),
                          actions('Upgrade'),
                          actions('Track'),
                          actions('Settings'),
                        ]),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        actions('Recharge'),
                        actions('Upgrade'),
                        actions('Track'),
                        actions('Settings'),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget button(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: text == 'Recharge' ? Colors.orange : null,
        foregroundColor: text == 'Recharge' ? Colors.white : Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: const BorderSide(color: Colors.orange),
        ),
      ),
      child: Text(text),
    );
  }

  Widget bluecard() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "App Exclusive Offer",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "Applicable on recharges above Rs 249.",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                    color: Colors.grey.shade600),
              ),
              Text(
                "Check Now >>",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "T&C apply",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 8,
                    color: Colors.grey.shade600),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Text(
                "2",
                style: TextStyle(fontSize: 60, color: Color(0xFFe8873a)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Get",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("% OFF", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
          SizedBox(
            width: 50,
          ),
        ],
      ),
    );
  }

  Widget actions(String text) {
    return Column(
      children: [
        const CircleAvatar(child: Icon(Icons.ac_unit)),
        Text(text),
      ],
    );
  }
}

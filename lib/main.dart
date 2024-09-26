import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar data kontainer
    final List<Map<String, dynamic>> kontainerData = [
      {'text': 'Daftar Dosen', 'icon': Icons.list},
      {'text': 'Dosen Aktif', 'icon': Icons.person},
      {'text': 'Dosen Tidak Aktif', 'icon': Icons.person},
      {'text': 'Bidang', 'icon': Icons.work }, 
      {'text': 'Delegasi Dosen', 'icon': Icons.person},
    ];

    return MaterialApp(
      title: 'Beranda Pemimpin',
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.red, // Latar belakang merah di luar container
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('''  Hi, Wisam! 
  Welcome to SmartCerTI'''),
          titleTextStyle: const TextStyle(
            fontFamily: 'Ramabhadra',
            fontSize: 25.0,
            color: Colors.white,
          ),
          backgroundColor: const Color.fromARGB(255, 239, 84, 40),
          toolbarHeight: 170,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications), 
              iconSize: 35,
              onPressed: () {
                // fitur muncul notif
              },
              color: Colors.white, 
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white, 
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ), 
          ),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  padding:
                      const EdgeInsets.all(20), 
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, 
                    crossAxisSpacing: 25, 
                    mainAxisSpacing: 25, 
                    childAspectRatio: 1.4, 
                  ),
                  itemCount: kontainerData.length,
                  itemBuilder: (context, index) {
                    var data = kontainerData[index];
                    return Container(
                      height: 100, 
                      decoration: BoxDecoration(
                        color: Colors.white, 
                        borderRadius:
                            BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Icon(
                                data['icon'],
                                size: 40.0,
                                color: const Color.fromARGB(255, 28, 33, 123),
                              ),
                          Text(data['text']),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20), 
                height: 250, 
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(10), 
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: const Image(
                    image: AssetImage('assets/images/static.png'),
                    width: 350,       
                  ),
                ),
            ],
          ),
        ),

        // navbar bot
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor:
              const Color.fromARGB(255, 239, 84, 40), // Warna item yang dipilih
        ),
      ),
    );
  }
}

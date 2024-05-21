import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tm/pecah%20ban/detailpecahban.dart';
// import 'package:flutter_tm/pecah%20ban/detailpecahban.dart';
import 'package:flutter_tm/widget/styles.dart';

class PecahBanPage extends StatelessWidget {
  const PecahBanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red,
      appBar: AppBar(
        backgroundColor: AppColors.red,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Center(
                          child: Text("Pecah Ban",
                            textAlign: TextAlign.center,
                            style: TextStyles.title.copyWith(
                              fontSize: 24, 
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: AppColors.white,
                ),
                padding: EdgeInsets.all(35),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Tambal Ban Terdekat',
                        style: TextStyles.title.copyWith(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                      Text(
                        'Bengkel tambal ban terdekat dari lokasimu',
                        style: TextStyles.light.copyWith(
                          fontSize: 14, 
                          color: Colors.black,
                        ),
                      ),
                      
                      _buildTambalBanItem(
                        context,
                        'Tambal Ban Mang Ujang',
                        'Tambal ban tubeless',
                        'Datang dalam 10-30 menit',
                        'assets/images/mogok.png',
                        0.5,
                        Colors.green,
                        'Buka',
                      ),
                    
                      _buildTambalBanItem(
                        context,
                        'Nitrogen SPBU 390.100.20',
                        'Tambal ban tubeless',
                        'Datang dalam 10-30 menit',
                        'assets/images/mogok.png',
                        0.5,
                        Colors.red,
                        'Tutup',
                      ),

                      _buildTambalBanItem(
                        context,
                        'Nitrogen SPBU 390.100.20',
                        'Tambal ban tubeless',
                        'Datang dalam 10-30 menit',
                        'assets/images/mogok.png',
                        0.5,
                        Colors.red,
                        'Tutup',
                      ),

                      _buildTambalBanItem(
                        context,
                        'Nitrogen SPBU 390.100.20',
                        'Tambal ban tubeless',
                        'Datang dalam 10-30 menit',
                        'assets/images/mogok.png',
                        0.5,
                        Colors.red,
                        'Tutup',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff9E2D35),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            label: 'Tips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Widget _buildTambalBanItem(
    BuildContext context,
    String title,
    String subtitle,
    String arrivalTime,
    String imagePath,
    double distance,
    Color buttonColor,
    String buttonText,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.only(
        top: 5,
        left: 20,
        right: 20,
        bottom: 5
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 65, 32, 32),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.title.copyWith(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 10,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  arrivalTime,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Text(
                      '$distance km',
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.location_on, size: 12),
                  ],
                ),
                SizedBox(height: 4),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPecahBan(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    minimumSize: Size(0, 0),
                  ),
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

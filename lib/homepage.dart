import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tm/styles.dart';
// import 'package:flutter_tm/widget/fastaction.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      appBar: AppBar(
        title: Text('Homepage',
        style: TextStyles.title.copyWith(color: Colors.white),),
        backgroundColor: AppColors.green,
      ),  
      bottomNavigationBar: BottomNavigationBar(
         backgroundColor: AppColors.white,
         selectedLabelStyle: TextStyle(color: AppColors.green),
        items: 
      [
        BottomNavigationBarItem(icon: Icon(Icons.home, color: AppColors.green,), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.assessment), label: 'Laporan'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],),
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Selamat Pagi, Bara!', 
                        style: TextStyles.title.copyWith(fontSize: 25.0, color: AppColors.white),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 165, 255, 179),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.notifications,
                          color: Color.fromARGB(255, 202, 165, 114),
                        )
                      )
                    ],
                  ),

                  SizedBox(height: 0.0),
                  Align( // Tambahkan Align di sini
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '5 April, 2024',
                      style: TextStyles.light.copyWith(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 246, 246)),
                    ),
                  ),                          
                  SizedBox(height: 10),
                  

                  
                  SizedBox(height: 20.0,),
                          
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Presensi',
                      style: TextStyles.title.copyWith(color: AppColors.white,)
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                          
                 Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.person, color: AppColors.brown),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bara Samudra',
                              style: TextStyles.title.copyWith(color: Color.fromARGB(255, 80, 80, 79)),
                            ),
                            SizedBox(height: 4), 
                            Text(
                              'NIM: 222410102070',
                              style: TextStyle(color: Color.fromARGB(255, 109, 109, 109)),
                            ),
                          ],
                        ),
                        Spacer(), 
                        Icon(Icons.qr_code, color: AppColors.brown, size: 45.0),
                      ],
                    ),
                  ),

                ],
              ),
            ),
        
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(19),
                    topRight: Radius.circular(19)
                  ),
                  color: Color.fromARGB(255, 233, 233, 233),
                ),
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Navigasi Utama',
                          style: TextStyles.title.copyWith(fontSize: 20),)
                        ],
                      ),

                      SizedBox(height: 20,),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.description, color: AppColors.brown),
                          title: Text('Data Karyawan',
                          style: TextStyles.light.copyWith(fontWeight: FontWeight.bold, color: Colors.black),),
                          trailing: Icon(Icons.more_horiz),
                        ),
                      ),


                       SizedBox(height: 20,),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.today, color: AppColors.brown),
                          title: Text('Cuti Tahunan',
                          style: TextStyles.light.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                          trailing: Icon(Icons.more_horiz),
                        ),
                      ),

                      SizedBox(height: 20,),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.assignment_ind, color: AppColors.brown),
                          title: Text('Izin',
                          style: TextStyles.light.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                          trailing: Icon(Icons.more_horiz),
                        ),
                      ),

                       SizedBox(height: 20,),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.work_outline, color: AppColors.brown),
                          title: Text('Perjalanan Dinas',
                          style: TextStyles.light.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                          trailing: Icon(Icons.more_horiz),
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ),
        
            
          ],
        ),

      )
    );
  }
}

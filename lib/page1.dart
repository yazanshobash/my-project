import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  var selectlocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacementNamed('/profile');
                  },
                  icon: Icon(Icons.person,color: Colors.green,)
              ),
              IconButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                  icon: Icon(Icons.home,color: Colors.green,)),
              IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.directions_run,color: Colors.green,),),

              IconButton(
                onPressed: (){},
                icon: Icon(Icons.stadium,color: Colors.green,),),

            ],
          ),
        ),
      ),
      endDrawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        elevation: 10,
        backgroundColor: Color(0xff8ECE54),
        title: Text(
          "المباريات ",
        ),
      ),
      body:  SingleChildScrollView(
          child:
          Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: date,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100))
                          .then((value) {
                        setState(() {
                          date = value!;
                        });
                      });
                    },
                    icon: Icon(Icons.date_range)),
                Text(
                  ':التاريخ',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
                SizedBox(
                  width: 3,
                ),
                IconButton(
                    onPressed: () {
                      showTimePicker(context: context, initialTime: time)
                          .then((value) {
                        setState(() {
                          time = value!;
                        });
                      });
                    },
                    icon: Icon(Icons.access_time_sharp)),
                Text(
                  ':الوقت',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
                SizedBox(
                  width: 10,
                ),
                DropdownButton(
                  hint: Text(" اختر المحافظة"),
                  items: [
                    "عمان",
                    "الزرقاء",
                    "اربد",
                    "السلط",
                  ]
                      .map((e) => DropdownMenuItem(
                            child: Text("$e"),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      selectlocation = val!;
                    });
                  },
                  value: selectlocation,
                  icon: Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.blue,
                  ),
                  dropdownColor: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black12,width: 2),
                color: Colors.white,
              ),
              height: 200,
              child: Stack(
                children: [
                 Container(
                   margin: EdgeInsets.only(left: 210,top: 10),
                   child: Row(
                     children: [
                       Stack(
                         children: [
                           Positioned(
                               child:Container(
                                 margin: EdgeInsets.only(left: 80),
                                 child: Image.asset('images/pngwing.com.png',width: 25,)
                               )),
                           Positioned(
                               child:Container(
                                   margin: EdgeInsets.only(left: 67),
                                   child: Image.asset('images/pngwing.com.png',width: 25,)
                               )),
                           Positioned(
                               child:Container(
                                   margin: EdgeInsets.only(left: 54),
                                   child: Image.asset('images/pngwing.com.png',width: 25,)
                               )),
                           Positioned(
                             right: 40,
                               child:Container(
                                   margin: EdgeInsets.only(left: 40),
                                   child: Image.asset('images/pngwing.com.png',width: 25,)
                               )),
                           Positioned(
                             right: 53,
                               child:
                               Container(
                                 child: Stack(
                                   children: [
                                     Image.asset('images/pngwing.com.png',width: 25,),


                                 ],
                                 ),
                               )),
                           Positioned(
                               right: 67,
                               child:
                               Container(
                                 child: Stack(
                                   children: [
                                     Image.asset('images/pngwing.com.png',width: 25,),
                                   ],
                                 ),
                               )),
                         ],
                       ),
                     ],
                   ),
                 ),
                  Container(
                    margin: EdgeInsets.only(top: 20,right: 130,left: 30),
                    height: 10,
                    width: double.infinity,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.center,
                          colors: [Colors.green, Colors.black12]
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 35,left: 20),
                    child: Row(
                      children: [
                        Text('20',style: TextStyle(fontSize: 12),),
                        SizedBox(width: 2,),
                        Text('من',style: TextStyle(fontSize: 12),),
                        SizedBox(width: 2,),
                        Text('0',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:172,top: 65 ),
                    child: Row(
                      children: [
                        Text('11/1'),
                        SizedBox(width: 3,),
                        Text(':اليوم'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 160,top: 90),
                    child: Row(
                      children: [
                        Text('6:00 ِAm'),
                        SizedBox(width: 3,),
                        Icon(Icons.access_time_outlined),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:144,top: 115 ),
                    child: Row(
                      children: [
                        Text('ملعب اليرموك'),
                        SizedBox(width: 2,),
                        Icon(Icons.location_on),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120,left: 283),
                    child: Row(
                      children: [
                        Text('User',style: TextStyle(fontSize: 15 ),)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Handle tap event
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 146,right: 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(18.0),
                          bottomLeft: Radius.circular(18.0),
                        ),
                        color: Color(0xff8ECE54),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'انضم معنا',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:97,left: 10 ),
                    child: Row(
                      children: [
                        Text('دينار',style: TextStyle(fontSize: 27,color: Colors.cyanAccent),),
                        Text('2.00',style: TextStyle(fontSize: 27,color: Colors.cyanAccent),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 265,top: 50),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/pngwing.com.png',),
                      backgroundColor: Colors.black,

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black12,width: 2),
                color: Colors.white,
              ),
              height: 200,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 210,top: 10),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                                child:Container(
                                    margin: EdgeInsets.only(left: 80),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                child:Container(
                                    margin: EdgeInsets.only(left: 67),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                child:Container(
                                    margin: EdgeInsets.only(left: 54),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                right: 40,
                                child:Container(
                                    margin: EdgeInsets.only(left: 40),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                right: 53,
                                child:
                                Container(
                                  child: Stack(
                                    children: [
                                      Image.asset('images/pngwing.com.png',width: 25,),


                                    ],
                                  ),
                                )),
                            Positioned(
                                right: 67,
                                child:
                                Container(
                                  child: Stack(
                                    children: [
                                      Image.asset('images/pngwing.com.png',width: 25,),


                                    ],
                                  ),
                                )),










                          ],
                        ),


                      ],
                    ),

                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20,right: 130,left: 30),
                    height: 10,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment(0.3, 0.6),
                          colors: [Colors.green, Colors.black12]
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.only(top: 35,left: 20),
                    child: Row(
                      children: [
                        Text('20',style: TextStyle(fontSize: 12),),
                        SizedBox(width: 2,),
                        Text('من',style: TextStyle(fontSize: 12),),
                        SizedBox(width: 2,),
                        Text('5',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:172,top: 65 ),
                    child: Row(
                      children: [

                        Text('15/1'),
                        SizedBox(width: 3,),
                        Text(':اليوم'),


                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 160,top: 90),
                    child: Row(
                      children: [
                        Text('5:30 pm'),
                        SizedBox(width: 3,),
                        Icon(Icons.access_time_outlined),

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:134,top: 115 ),
                    child: Row(
                      children: [

                        Text('ملعب الكلاسيكو'),
                        SizedBox(width: 2,),
                        Icon(Icons.location_on),


                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120,left: 283),
                    child: Row(
                      children: [
                        Text('User',style: TextStyle(fontSize: 15 ),)
                      ],
                    ),
                  ),
                  /*Container(
                    margin: EdgeInsets.only(top: 150,left: 10),
                    child: OutlinedButton(onPressed: (){},
                        child: Text('انضم معنا')),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)))
                    ),*/
                  InkWell(
                    onTap: () {
                      // Handle tap event
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 146,right: 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(18.0),
                          bottomLeft: Radius.circular(18.0),
                        ),
                        color: Color(0xff8ECE54),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'انضم معنا',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:97,left: 10 ),
                    child: Row(
                      children: [
                        Text('دينار',style: TextStyle(fontSize: 27,color: Colors.cyanAccent),),
                        Text('2.00',style: TextStyle(fontSize: 27,color: Colors.cyanAccent),)
                      ],
                    ),
                  ),




                  Container(
                    margin: EdgeInsets.only(left: 265,top: 50),
                    child: CircleAvatar(

                      radius: 30,
                      backgroundImage: AssetImage('images/pngwing.com.png',),
                      backgroundColor: Colors.black,

                    ),
                  ),




                ],
              ),

            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black12,width: 2),
                color: Colors.white,
              ),
              height: 200,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 210,top: 10),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                                child:Container(
                                    margin: EdgeInsets.only(left: 80),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                child:Container(
                                    margin: EdgeInsets.only(left: 67),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                child:Container(
                                    margin: EdgeInsets.only(left: 54),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                right: 40,
                                child:Container(
                                    margin: EdgeInsets.only(left: 40),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                right: 53,
                                child:
                                Container(
                                  child: Stack(
                                    children: [
                                      Image.asset('images/pngwing.com.png',width: 25,),


                                    ],
                                  ),
                                )),
                            Positioned(
                                right: 67,
                                child:
                                Container(
                                  child: Stack(
                                    children: [
                                      Image.asset('images/pngwing.com.png',width: 25,),


                                    ],
                                  ),
                                )),










                          ],
                        ),


                      ],
                    ),

                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20,right: 130,left: 30),
                    height: 10,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment(-0.0, -3),
                          colors: [Colors.green, Colors.black12]
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.only(top: 35,left: 20),
                    child: Row(
                      children: [
                        Text('20',style: TextStyle(fontSize: 12),),
                        SizedBox(width: 2,),
                        Text('من',style: TextStyle(fontSize: 12),),
                        SizedBox(width: 2,),
                        Text('7',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:172,top: 65 ),
                    child: Row(
                      children: [

                        Text('18/1'),
                        SizedBox(width: 3,),
                        Text(':اليوم'),


                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 160,top: 90),
                    child: Row(
                      children: [
                        Text('7:00 pm'),
                        SizedBox(width: 3,),
                        Icon(Icons.access_time_outlined),

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:150,top: 115 ),
                    child: Row(
                      children: [

                        Text('ملعب البلدية'),
                        SizedBox(width: 2,),
                        Icon(Icons.location_on),


                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120,left: 283),
                    child: Row(
                      children: [
                        Text('User',style: TextStyle(fontSize: 15 ),)
                      ],
                    ),
                  ),
                  /*Container(
                    margin: EdgeInsets.only(top: 150,left: 10),
                    child: OutlinedButton(onPressed: (){},
                        child: Text('انضم معنا')),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)))
                    ),*/
                  InkWell(
                    onTap: () {
                      // Handle tap event
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 146,right: 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(18.0),
                          bottomLeft: Radius.circular(18.0),
                        ),
                        color: Color(0xff8ECE54),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'انضم معنا',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:97,left: 10 ),
                    child: Row(
                      children: [
                        Text('دينار',style: TextStyle(fontSize: 27,color: Colors.cyanAccent),),
                        Text('2.00',style: TextStyle(fontSize: 27,color: Colors.cyanAccent),)
                      ],
                    ),
                  ),




                  Container(
                    margin: EdgeInsets.only(left: 265,top: 50),
                    child: CircleAvatar(

                      radius: 30,
                      backgroundImage: AssetImage('images/pngwing.com.png',),
                      backgroundColor: Colors.black,

                    ),
                  ),




                ],
              ),

            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black12,width: 2),
                color: Colors.white,
              ),
              height: 200,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 210,top: 10),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                                child:Container(
                                    margin: EdgeInsets.only(left: 80),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                child:Container(
                                    margin: EdgeInsets.only(left: 67),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                child:Container(
                                    margin: EdgeInsets.only(left: 54),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                right: 40,
                                child:Container(
                                    margin: EdgeInsets.only(left: 40),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                right: 53,
                                child:
                                Container(
                                  child: Stack(
                                    children: [
                                      Image.asset('images/pngwing.com.png',width: 25,),


                                    ],
                                  ),
                                )),
                            Positioned(
                                right: 67,
                                child:
                                Container(
                                  child: Stack(
                                    children: [
                                      Image.asset('images/pngwing.com.png',width: 25,),


                                    ],
                                  ),
                                )),










                          ],
                        ),


                      ],
                    ),

                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20,right: 130,left: 30),
                    height: 10,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment(-0.3, -0.6),
                          colors: [Colors.green, Colors.black12]
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.only(top: 35,left: 20),
                    child: Row(
                      children: [
                        Text('20',style: TextStyle(fontSize: 12),),
                        SizedBox(width: 2,),
                        Text('من',style: TextStyle(fontSize: 12),),
                        SizedBox(width: 2,),
                        Text('16',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:172,top: 65 ),
                    child: Row(
                      children: [

                        Text('20/1'),
                        SizedBox(width: 3,),
                        Text(':اليوم'),


                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 160,top: 90),
                    child: Row(
                      children: [
                        Text('10:30 pm'),
                        SizedBox(width: 3,),
                        Icon(Icons.access_time_outlined),

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:152,top: 115 ),
                    child: Row(
                      children: [

                        Text('ملعب الحسين'),
                        SizedBox(width: 2,),
                        Icon(Icons.location_on),


                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120,left: 283),
                    child: Row(
                      children: [
                        Text('User',style: TextStyle(fontSize: 15 ),)
                      ],
                    ),
                  ),
                  /*Container(
                    margin: EdgeInsets.only(top: 150,left: 10),
                    child: OutlinedButton(onPressed: (){},
                        child: Text('انضم معنا')),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)))
                    ),*/
                  InkWell(
                    onTap: () {
                      // Handle tap event
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 146,right: 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(18.0),
                          bottomLeft: Radius.circular(18.0),
                        ),
                        color: Color(0xff8ECE54),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'انضم معنا',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:97,left: 10 ),
                    child: Row(
                      children: [
                        Text('دينار',style: TextStyle(fontSize: 27,color: Colors.cyanAccent),),
                        Text('2.00',style: TextStyle(fontSize: 27,color: Colors.cyanAccent),)
                      ],
                    ),
                  ),




                  Container(
                    margin: EdgeInsets.only(left: 265,top: 50),
                    child: CircleAvatar(

                      radius: 30,
                      backgroundImage: AssetImage('images/pngwing.com.png',),
                      backgroundColor: Colors.black,

                    ),
                  ),




                ],
              ),

            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black12,width: 2),
                color: Colors.white,
              ),
              height: 200,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 210,top: 10),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                                child:Container(
                                    margin: EdgeInsets.only(left: 80),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                child:Container(
                                    margin: EdgeInsets.only(left: 67),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                child:Container(
                                    margin: EdgeInsets.only(left: 54),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                right: 40,
                                child:Container(
                                    margin: EdgeInsets.only(left: 40),
                                    child: Image.asset('images/pngwing.com.png',width: 25,)
                                )),
                            Positioned(
                                right: 53,
                                child:
                                Container(
                                  child: Stack(
                                    children: [
                                      Image.asset('images/pngwing.com.png',width: 25,),


                                    ],
                                  ),
                                )),
                            Positioned(
                                right: 67,
                                child:
                                Container(
                                  child: Stack(
                                    children: [
                                      Image.asset('images/pngwing.com.png',width: 25,),


                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),

                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20,right: 130,left: 30),
                    height: 10,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment(-3, -0),
                          colors: [Colors.green, Colors.black12]
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.only(top: 35,left: 20),
                    child: Row(
                      children: [
                        Text('20',style: TextStyle(fontSize: 12),),
                        SizedBox(width: 2,),
                        Text('من',style: TextStyle(fontSize: 12),),
                        SizedBox(width: 2,),
                        Text('20',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:180,top: 65 ),
                    child: Row(
                      children: [

                        Text('13/1'),
                        SizedBox(width: 3,),
                        Text(':اليوم'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 168,top: 90),
                    child: Row(
                      children: [
                        Text('8:30 pm'),
                        SizedBox(width: 3,),
                        Icon(Icons.access_time_outlined),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:155,top: 115 ),
                    child: Row(
                      children: [
                        Text('ملعب الفرقان'),
                        SizedBox(width: 2,),
                        Icon(Icons.location_on),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120,left: 283),
                    child: Row(
                      children: [
                        Text('User',style: TextStyle(fontSize: 15 ),)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Handle tap event
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 146,right: 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(18.0),
                          bottomLeft: Radius.circular(18.0),
                        ),
                        color: Color(0xff8ECE54),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'انضم معنا',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:97,left: 10 ),
                    child: Row(
                      children: [
                        Text('دينار',style: TextStyle(fontSize: 27,color: Colors.cyanAccent),),
                        Text('2.00',style: TextStyle(fontSize: 27,color: Colors.cyanAccent),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 265,top: 50),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/pngwing.com.png',),
                      backgroundColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {},
        icon: Icon(Icons.add_circle_outlined),
        label: Text('انشاء مبارة'),
        backgroundColor: Color(0xff8ECE54),
        foregroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}


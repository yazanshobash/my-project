import 'package:flutter/material.dart';
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  DateTime date =DateTime.now();
  TimeOfDay time=TimeOfDay.now();
  var selectlocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("المباريات ",),
      ),
      body:
      Container(
        margin: EdgeInsets.only(top: 10,left: 500),
        child: Column(
          children: [
            Row(
              children: [
                Text('التاريخ:',style: TextStyle(fontSize: 20,color: Colors.blue),),
                IconButton(onPressed: (){
                  showDatePicker(context: context,
                      initialDate: date,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100)).then((value) {
                        setState(() {
                          date=value!;
                        });
                  });
                }, icon: Icon(Icons.date_range)),
                SizedBox(width: 10,),
                Text('الوقت:',style: TextStyle(fontSize: 20,color: Colors.blue),),
                IconButton(onPressed: (){
                  showTimePicker(context: context,
                      initialTime: time).then((value) {
                        setState(() {
                          time=value!;
                        });
                  });
                }, icon: Icon(Icons.access_time_sharp)),
                Text('الموقع:',style: TextStyle(fontSize: 20,color: Colors.blue),),
                SizedBox(width: 10,),
                DropdownButton(
                  hint:Text("اختر موقع الملعب"),
                  items: ["عمان", "الزرقاء", "اربد","السلط",].map((e) => DropdownMenuItem(
                    child: Text("$e"),value: e,)).toList(),
                  onChanged: (val){
                  setState(() {
                    selectlocation=val!;
                  });
                  },value:selectlocation ,
                    icon: Icon(Icons.arrow_drop_down_circle,color: Colors.blue,),
                  dropdownColor: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20),
                ),

              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10,left: 10),
              child: Row(
                children: [
                  Text('data')
                ],
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

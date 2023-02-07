import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahrat_elwadi/honeyDetails.dart';
import 'package:url_launcher/url_launcher.dart';


final Uri _url = Uri.parse('https://google.com/');

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   int _selectedIndex = 1;


_callNumber() async{
  const number = '00995566887722'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });



    if(_selectedIndex == 0){
     _callNumber();
    }
    if(_selectedIndex == 2){
       _launchUrl();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //Colors.yellow[100],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children:[
              Image.asset("images/logo_url.jpg",height: 130,width: 130,)
        ],),
      ),
      body: 
      Container(
        padding: const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
        alignment: Alignment.center,
        child: GridView.count(
          primary: false,
        padding: const EdgeInsets.all(5.0),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
    
        SizedBox(
          
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                           color: Colors.yellow[500], 
                    borderRadius: BorderRadius.circular(15.0),
                ),
              child: Center(child: Text("Text",textAlign: TextAlign.center, style:GoogleFonts.tajawal(color: Colors.black87, fontSize: 34,
          
            ),),),),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HoneyDetails(
                honeyName: "Text",
                honeyImage: "image network url",
                honeyText: "Text",)),
            );
          },),
          ),
            SizedBox(
          
          child: GestureDetector(
            child: Container( decoration: BoxDecoration(
                           color: Colors.yellow[500], 
                    borderRadius: BorderRadius.circular(15.0),
                ), child: Center(child: Text("عسل المراعي اليمني",textAlign: TextAlign.center, style:GoogleFonts.tajawal(color: Colors.black87, fontSize: 34,
            
            ),),),),
           onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HoneyDetails(
               honeyName: "Text",
                honeyImage: "image network url",
                honeyText: "Text",)),);
          },  ),
          ),
            SizedBox(
          
          child: GestureDetector(
            child: Container( decoration: BoxDecoration(
                           color: Colors.yellow[500], 
                    borderRadius: BorderRadius.circular(15.0),
                ), child: Center(child: Text("عسل سدر عصيمي",textAlign: TextAlign.center, style:GoogleFonts.tajawal(color: Colors.black87, fontSize: 34,
            
            ),),),),
             onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HoneyDetails(
                honeyName: "Text",
                honeyImage: "image network url",
                honeyText: "Text",)),);
          },),),
        ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call us",),
        BottomNavigationBarItem(icon: Icon(Icons.home_max_rounded), label: "Main"),
        BottomNavigationBarItem(icon: Icon(Icons.web_rounded,), label: "Online"),],
         currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 231, 209, 12),
        onTap: _onItemTapped,
        ),
    );
  }
  Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
}
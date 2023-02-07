import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoneyDetails extends StatefulWidget {
  final String? honeyName;
  final String? honeyText;
  final String? honeyImage;

  const HoneyDetails({Key? key,@required this.honeyName, @required this.honeyText, @required this.honeyImage}) : super(key: key);

  @override
  State<HoneyDetails> createState() => _HoneyDetailsState();
}


class _HoneyDetailsState extends State<HoneyDetails> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(backgroundColor: Colors.yellow,),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(5.0),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Text(widget.honeyName!, textAlign: TextAlign.center, style: GoogleFonts.tajawal(fontSize: 24.0),),
               const SizedBox(height: 7.0,),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.honeyImage!),),),
                  ),
              
                const SizedBox(height: 15.0,),
                Container(
                  height: 250,
                  width: double.infinity,
                  padding: EdgeInsets.all(7.0),
                
                  child: Text(widget.honeyText!, textAlign: TextAlign.right, style: GoogleFonts.tajawal(fontSize: 18.0),),
                        decoration: BoxDecoration(
                            color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                ),
                  ),
              ],
            ),
          )
        ,
        ),
      ),
    );
    
  }
}
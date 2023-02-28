import 'package:flutter/material.dart';


class ClipType extends StatefulWidget {
  const ClipType({Key? key}) : super(key: key);

  @override
  State<ClipType> createState() => _ClipTypeState();
}

class _ClipTypeState extends State<ClipType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clip Type"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRect(  // ClipRect ma normal cut thai..
                child: Container(
                  child: Image.asset("assets/image/pexels-tobias-bjørkli-2113566.jpg",
                      width: 350),
                ),
              ),
              SizedBox(height: 10),
              ClipRRect( // ClipRReact ma Cut Sathe BorderRadius aapi Sake ..
                borderRadius: BorderRadius.circular(18),
                child:Container(
                  child: Image.asset("assets/image/pexels-tobias-bjørkli-2113566.jpg",
                      width: 350),
                ),
              ),
              SizedBox(height: 10),
              ClipOval(
                child: Container(
                  height: 550,
                  width: 350,
                  child: Image.asset("assets/image/pexels-tobias-bjørkli-2113566.jpg"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

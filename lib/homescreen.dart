import 'package:flutter/material.dart';

import 'models.dart';

class Homecreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions:[ Icon(Icons.notifications_none,color: Colors.black,),],
        title: Text(
          'Grocery Plus'
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            width: 342,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF87DD39),
                    borderRadius: BorderRadius.circular(45),
                    boxShadow: [

                    ]
                  ),
                  child:Image.asset("assets/map.png") ,
                ),
                SizedBox(
                  width: 20,
                ),

               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     "Your Location",
                     style: TextStyle(
                       fontWeight: FontWeight.w400,
                       fontSize: 11,
                       color: Color(0xFF37474F),

                     ),
                   ),
                   Text(
                     "32 Llanberis Close, Tonteg, CF38 1HR",
                     style: TextStyle(
                       fontWeight: FontWeight.w500,
                       fontSize: 14,
                       color: Color(0xFF37474F),

                     ),
                   ),
                 ],
               )

               // Image.asset("assets/")
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText:"Search Anything" ,
              hintStyle: TextStyle(
                  fontSize: 16, color: Color(0xFF37474F)
              ),
              contentPadding:EdgeInsets.symmetric(vertical:2 ,
                  horizontal: 10) ,
              filled: true,
              fillColor:  Color(0xFFF0F1F2),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Color(0xFFF0F1F2))
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Color(0xFFF0F1F2))
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Color(0xFFF0F1F2))
              ),

            ),
          ),

          SizedBox(
            height: 30,
          ),



          SizedBox(
            height: 580,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child:
                  Column(
                      children: [Image.asset(nameof[index].image),
                        Text(nameof[index].name
                        ,style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF37474F),
                            fontWeight: FontWeight.w500
                          ),

                        )]),
                ),
              itemCount: 6,
            ),
          )
        ],
      ),
    );
  }
}
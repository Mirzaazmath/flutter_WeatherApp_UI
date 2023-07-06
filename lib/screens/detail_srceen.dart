import 'package:flutter/material.dart';

import '../data/todaydata.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calendar_today,color: Colors.white,),
            SizedBox(width: 10,),
            Text("7 days",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          ],
        ),

        actions: [
          IconButton(onPressed: (){}, icon:const  Icon(Icons.more_vert))
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding:const  EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
               Stack(
                 alignment: Alignment.center,
                 children: [
                   Container(
                     height: 80,
                     width: 80,
                     decoration:const  BoxDecoration(

                         shape: BoxShape.circle,
                         boxShadow: [
                           BoxShadow(
                               color: Color(0xff45433d),
                               blurRadius: 100

                           )
                         ]
                     ),
                   ),

                   SizedBox(
                     height: 180,
                     width: 180,


                     child:  Image.asset("assets/rain.png"),
                   ),
                 ],
               ),
                Expanded(
                  child: Column(
                    children: [
                      const Text("Tommorow",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 20),),
                      RichText(
                        text: const TextSpan(
                          text: '20',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 80),
                          children:  <TextSpan>[
                            TextSpan(text: '/17*', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey)),

                          ],
                        ),
                      ),
                     const
                     Text( 'Rainy - Cloudy', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey)),
                    ],
                  ),
                )
              ],
            ),
            Container(

              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xff24252a),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.air,color: Color(0xff65695d),),
                      Text("13 Km/h",style:TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                      Text("Wind",style: TextStyle(color: Color(0xff85868a),fontSize: 12,fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.water_drop,color: Colors.blue,),
                      Text("24%",style:TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                      Text("Humidity",style: TextStyle(color: Color(0xff85868a),fontSize: 10,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.water,color: Colors.white,),
                      Text("87%",style:TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                      Text("Rain",style: TextStyle(color: Color(0xff85868a),fontSize: 10,fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),

            ),
           const  SizedBox(height: 20,),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
                itemCount: weekWeatherList.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(weekWeatherList[index].name,style: const TextStyle(color: Color(0xff85868a),fontSize: 16,fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            SizedBox(
                              height: 45,
                              child:  Image.asset(weekWeatherList[index].image,),
                            ),
                          index==3?Container():  const SizedBox(width: 10,),
                            Text(weekWeatherList[index].day,style: const TextStyle(color: Color(0xff85868a),fontSize: 16,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        RichText(
                          text:  TextSpan(
                            text: weekWeatherList[index].tem1,
                            style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                            children:  <TextSpan>[
                              TextSpan(text:  weekWeatherList[index].tem2, style:const  TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey)),

                            ],
                          ),
                        ),
                      ],


                    ),
                  );

            })

          ],
        ),
      ),
    );
  }
}

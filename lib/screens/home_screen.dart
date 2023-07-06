import 'package:flutter/material.dart';
import 'package:flutter_weatherapp_ui/data/todaydata.dart';

import '../utils/nav_transistion.dart';
import 'detail_srceen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading:const  Icon(Icons.apps),
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on,color: Colors.white,),
            SizedBox(width: 10,),
            Text("Minsk",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          ],
        ),

        actions: [
          IconButton(onPressed: (){}, icon:const  Icon(Icons.more_vert))
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
           Container(
             height: 42,
             width: 120,
             decoration: BoxDecoration(
               border: Border.all(color: Colors.white,),
               borderRadius: BorderRadius.circular(40),

             ),
             alignment: Alignment.center,
             child:Row(
               mainAxisAlignment:MainAxisAlignment.center,
               children: [
                 Container(
                   height: 10,
                   width: 10,
                   margin: const EdgeInsets.only(right: 10),
                   decoration:const  BoxDecoration(
                       color: Color(0xfffef10e),

                         shape: BoxShape.circle,
                         boxShadow: [
                           BoxShadow(
                               color: Color(0xfffef10e),
                               blurRadius: 100

                           )
                         ]

                     ),
                     ),
                const Text("Updating",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
               ],
             )

           ),
            Container(
                height: 230,
                alignment: Alignment.center,
                decoration:const  BoxDecoration(

                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff45433d),
                          blurRadius: 100

                      )
                    ]
                ),
                child: Image.asset("assets/thundercloud.png")),
           const  Text("23*",style: TextStyle(color: Colors.white,fontSize: 100,fontWeight: FontWeight.bold),),
            const  Text("Thunderclouds",style: TextStyle(color: Color(0xff85868a),fontSize: 20,fontWeight: FontWeight.bold),),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
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
            const  SizedBox(height:10 ,),
             Padding(
              padding:  const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Today",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(CustomPageRouteUp( child: const DetailScreen(), ));
                      //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen()));
                    },
                      child:const Text("7 days >",style: TextStyle(color: Color(0xff85868a),fontSize: 16,fontWeight: FontWeight.bold),)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                 
                  shrinkWrap: true,
                    itemCount: today.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                    return Container(
                      padding:const  EdgeInsets.all(15),
                      height:120,
                      width: 80,
                      margin:const  EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xff1f2427),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey.shade800),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors:index==1? const [
                          Color(0xff4cb8f4),
                          Color(0xff3782f4),

                        ]:
                          const [
                            Color(0xff1f2427),
                            Color(0xff1f2427),

                          ]

                      )
                    ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Text(today[index].temperature,style:const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 45,
                            child:  Image.asset(today[index].image,),
                          ),

                          Text(today[index].time,style: TextStyle(color:index==1?Colors.white:const Color(0xff85868a),fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      )
                    );

                }),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}

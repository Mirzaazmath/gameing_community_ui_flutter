

import 'package:flutter/material.dart';

import '../data/stream.dart';
import '../utils/text_utils.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,

        actions:const  [
          Icon(Icons.more_horiz),
          SizedBox(width:20,),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage("assets/profile.jpeg"),

                ),
                const SizedBox(width:10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextUtil(text: "ishowspeed",weight: true,),
                    TextUtil(text: "Darren Watkins",color: Colors.grey,size: 15,),
                    Row(
                      children: [
                        Chip(
                          backgroundColor: Colors.orange.withOpacity(0.2),
                          avatar: const CircleAvatar(
                    radius: 10,
                      backgroundImage: AssetImage("assets/profile.jpeg"),

                    ),
                            label: TextUtil(text: "SpeedyClan",size: 12,color: Colors.orange,weight: true,)),
                        Chip(
                            backgroundColor: Colors.blueAccent.withOpacity(0.2),
                            avatar: const CircleAvatar(
                              radius: 10,
                              child: Icon(Icons.electric_bolt,size: 12,),
                              //backgroundImage: AssetImage("assets/profile.jpeg"),

                            ),
                            label: TextUtil(text: "SpeedyClan",size: 12,color: Colors.blueAccent,weight: true,))
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(

                  elevation: 2,
                  child:SizedBox(
                    height: 80,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextUtil(text: "243",weight: true,size: 22,),
                        TextUtil(text: "Streams",color: Colors.orange,),

                      ],
                    ),
                  ),
                  

                ),

                Card(
                  elevation: 2,
                  child:SizedBox(
                    height: 80,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextUtil(text: "25.9M",weight: true,size: 22,),
                        TextUtil(text: "Followers",color: Colors.orange,),

                      ],
                    ),
                  ),

                ),
                Card(
                  elevation: 2,
                  child:SizedBox(
                    height: 80,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextUtil(text: "567",weight: true,size: 22,),
                        TextUtil(text: "Following",color: Colors.orange,),

                      ],
                    ),
                  ),

                )
              ],
            ),
            const SizedBox(height: 15,),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    width: 100,

                    decoration: BoxDecoration(
                        gradient:const  LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xffb193e1),
                              Color(0xff774ed9)
                            ]
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    alignment: Alignment.center,
                    child: TextUtil(text: "Follow",color: Colors.white,weight: true,size: 14,),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color:   const Color(0xff774ed9)),

                        borderRadius: BorderRadius.circular(10)
                    ),
                    alignment: Alignment.center,
                    child: TextUtil(text: "Message",color:  const Color(0xff774ed9),weight: true,size: 14,),
                  ),
                )
              ],
            ),
           const  SizedBox(height: 15,),
            Row(
              children: [
                Container(

                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 10),

                  margin:const  EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      gradient:const  LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff90d8d4),
                            Color(0xff338bdb)
                          ]
                      ),


                      borderRadius: BorderRadius.circular(15),

                  ),
                  alignment: Alignment.center,
                  child: TextUtil(text: "Streams",color: Colors.white,size: 13,weight: true,),
                ),
                Container(

                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 10),

                  margin:const  EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),



                    borderRadius: BorderRadius.circular(15),

                  ),
                  alignment: Alignment.center,
                  child: TextUtil(text: "Subscriptions",size: 13,weight: true,),
                ),
                Container(

                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 10),

                  margin:const  EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(

                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),


                    borderRadius: BorderRadius.circular(15),

                  ),
                  alignment: Alignment.center,
                  child: TextUtil(text: "Shop",size: 13,weight: true,),
                )
              ],
            ),
            const SizedBox(height: 15,),
            Expanded(child: SizedBox(
              child: ListView.builder(
                itemCount: streamList.length,
                  shrinkWrap: true, itemBuilder: (context,index){
                return Row(
                  children: [
                    Container(
                      height: 70,
                      width: 120,
                      margin:const  EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(streamList[index].image),fit: BoxFit.fill
                        )
                      ),
                      child:const  Icon(Icons.play_arrow,color: Colors.white,size: 40,),
                    ),
                   const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtil(text: streamList[index].title),
                             const  Icon(Icons.more_horiz_outlined)
                            ],
                          ),
                          TextUtil(text:"${streamList[index].views} Views",size: 12,color: const Color(0xff2c90d6),weight: true, ),
                         const SizedBox(height: 10,),
                          TextUtil(text:streamList[index].time,size: 11,color:  Colors.grey,weight: true, )
                        ],
                      ),
                    )

                  ],
                );
              }),
            ))
            // Container(
            //   height: 70,
            //   width: double.infinity,
            //   padding:const  EdgeInsets.all(10),
            //
            //   decoration: BoxDecoration(
            //       gradient:const  LinearGradient(
            //           begin: Alignment.topLeft,
            //           end: Alignment.bottomRight,
            //           colors: [
            //             Color(0xffe7d7ae),
            //             Color(0xffe1d6d4)
            //           ]
            //       ),
            //
            //       borderRadius: BorderRadius.circular(10)
            //   ),
            //
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 50,
            //         width: 50,
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(10)
            //
            //         ),
            //         alignment: Alignment.center,
            //         child:const  CircleAvatar(
            //           radius: 15,
            //           backgroundColor: Colors.orange,
            //         ),
            //       )
            //     ],
            // ),
            //
            //
            // )
          ],
        ),
      ),

    );
  }
}

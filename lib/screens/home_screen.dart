import 'package:flutter/material.dart';
import 'package:gaming_commutiy_ui/screens/profile_screen.dart';
import 'package:gaming_commutiy_ui/utils/text_utils.dart';

import '../data/comments.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/profile.jpeg"),
              
            ),
            const SizedBox(width:10,),
            TextUtil(text: "ishowspeed",weight: true,),

          ],
        ),
        actions:const  [
           Icon(Icons.more_horiz),
           SizedBox(width:20,),

        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
        alignment: Alignment.center,
        padding:const  EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin:const  EdgeInsets.only(right: 15),

                decoration: BoxDecoration(
                  color:  Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                child: TextUtil(text: "Chat Publicly",color: Colors.grey,size: 15,),

              ),

            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileScreen()));
              },
              child: Container(


                decoration: BoxDecoration(
                    gradient:const  LinearGradient(
                        colors: [
                          Color(0xffb193e1),
                          Color(0xff774ed9)
                        ]
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child:const Icon(Icons.add,color: Colors.white,)

              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            /////////// Stream Section ///////////////
          Expanded(child:   Container(
            padding:const  EdgeInsets.all(3),
            height: size.height*0.32,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
                image: const DecorationImage(
                    image: AssetImage("assets/bg.png"),fit: BoxFit.fill
                )

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 65,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/live.jpeg"),fit: BoxFit.cover
                          )
                      ),
                    ),
                    Container(
                      height: 50,

                      width: 100,
                      padding:const  EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black.withOpacity(0.3)
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.grey.shade400,
                            child:const CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.red,
                            ),
                          ),
                          const SizedBox(width:5,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextUtil(text: "LIVE",weight: true,size: 13,
                                color: Colors.white,),
                              TextUtil(text: "23.6k",weight: true,size: 13,
                                color: Colors.white,),
                            ],
                          ),


                        ],
                      )

                    ),
                    Container(
                      height: 50,

                      width: 50,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black.withOpacity(0.3)
                      ),

                      child: const Icon(Icons.autorenew,color: Colors.white,),
                    ),
                  ],
                )
              ],
            ),
          ),),
            //////////// Buttons Section ///////////////
           SizedBox(
            height: 80,

           child: SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 Container(
                   width: 180,
                   height: 65,
                   padding: const EdgeInsets.all(6),
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

                     borderRadius: BorderRadius.circular(15)
                   ),
                   child: Row(
                     children: [
                       Container(
                         width: 50,
                         height: 35,
                         margin:const  EdgeInsets.only(right: 10),
                         decoration: BoxDecoration(
                           border: Border.all(color: Colors.white),
                             borderRadius: BorderRadius.circular(30),
                             color: Colors.black.withOpacity(0.3)
                         ),
                         alignment: Alignment.center,
                         child: TextUtil(text: "\$34",color: Colors.white,size: 13,),
                       ),
                       Expanded(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             TextUtil(text: "@22fredd",color: Colors.white,size: 13,weight: true,),
                             TextUtil(text: "Hey speed I love your streams so much",color: Colors.white,size: 10.5,),


                           ],
                         ),
                       )
                     ],
                   ),

                 ),
                 Container(
                   width: 180,
                   height: 55,
                   padding: const EdgeInsets.all(6),
                   margin:const  EdgeInsets.only(right: 10),
                   decoration: BoxDecoration(
                       color: Colors.blueAccent,
                       gradient:const  LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                           colors: [
                             Color(0xffe79153),
                             Color(0xffdf6547)
                           ]
                       ),

                       borderRadius: BorderRadius.circular(15)
                   ),
                   child: Row(
                     children: [
                       Container(
                         width: 50,
                         height: 35,
                         margin:const  EdgeInsets.only(right: 10),
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.white),
                             borderRadius: BorderRadius.circular(30),
                             color: Colors.black.withOpacity(0.3)
                         ),
                         alignment: Alignment.center,
                         child: TextUtil(text: "\$5",color: Colors.white,size: 13,),
                       ),
                       Expanded(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             TextUtil(text: "@jaxxon12",color: Colors.white,size: 13,weight: true,),
                             TextUtil(text: "How many player you have killed",color: Colors.white,size: 10.5,),


                           ],
                         ),
                       )
                     ],
                   ),

                 )
               ],
             ),
           ),

          ),
            //////////// Comments Section ///////////////
            Expanded(
              child: Container(
                height: size.height*0.30,
                width: double.infinity,
                decoration: BoxDecoration(
                   // borderRadius: BorderRadius.circular(10),
                    color:const  Color(0xffcbcbd5).withOpacity(0.6)

                ),
                padding:const  EdgeInsets.all(10),
                child: ListView.builder(
                  shrinkWrap: true,
                    itemCount: commentList.length,
                    itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius:12 ,
                          backgroundImage: AssetImage(commentList[index].profile),
                        ),
                       const  SizedBox(width: 10,),
                        TextUtil(text:commentList[index].name,weight: true,size: 14, ),
                        const  SizedBox(width: 10,),
                        TextUtil(text:commentList[index].comment,size: 13, ),

                      ],

                    ),
                  );
                }),
              ),
            )
          ],

        ),
      ),
    );
  }
}

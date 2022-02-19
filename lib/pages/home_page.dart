import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cars',style: TextStyle(color: Colors.red,fontSize: 25),),
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications_none,color: Colors.red,),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart,color: Colors.red,),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                // categories
                Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      singleTab(true,'All'),
                      singleTab(false,'Red'),
                      singleTab(false,'Blue'),
                      singleTab(false,'Green'),
                      singleTab(false,'Yellow'),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                makeItem('assets/images/im_car1.jpg'),
                makeItem('assets/images/im_car2.jpg'),
                makeItem('assets/images/im_car3.jpg'),
                makeItem('assets/images/im_car4.png'),
                makeItem('assets/images/im_car5.jpg'),
              ],
            ),
          ),
        )
    );
  }
  Widget singleTab(bool type, String title){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(title,style: TextStyle(
            fontSize: type ? 20 : 17,
            color: type ? Colors.white : Colors.black,
          ),),
        ),
      ),
    );
  }
  Widget makeItem(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 10,
              offset: Offset(0,10),
            )
          ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.2),
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("PDP Car",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text('100\$',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Text("Electric",style: TextStyle(color: Colors.red,fontSize: 20),),
              ],
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Center(
                child: Icon(Icons.favorite_border,size: 20,color: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
}

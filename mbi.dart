import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView( // Add scroll functionality
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 300,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://tse3.mm.bing.net/th?id=OIP.pzX6VYWLYSuaTkI1WBoTtwHaE8&pid=Api&P=0&h=220'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(29),
                )),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                ),
                Text(
                  "Roma Combo",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                //1)icon
                Icon(
                  Icons.star,
                  color:  const Color.fromARGB(255, 211, 162, 97),
                  size: 30.0,
                ),
                SizedBox(
                  width: 10,
                ),
                //2)Text
                Text(
                  "4(3)",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 10,
                ),
                //3)container
                Container(
                  margin: EdgeInsets.only(left: 125),
                  width: 148,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 164, 123, 61),
                  ),
                  child: Row(
                    children: [
                      // 1) IconButton
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_circle,
                          size: 50,
                        ), // Choose your icon here
                        color: Colors.white, // Icon color
                      ),
                      Text(
                        "2",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle,
                          size: 50,
                        ), // Choose your icon here
                        color: Colors.white, // Icon color
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 27,
                ),
                //1st colomn
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description",
                      style: TextStyle(
                          color: Color.fromARGB(255, 122, 92, 45),
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Buy Italian Pizza Get 1 Free",
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 28,
                ),
                Text(
                  "EGP 420",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 135,
                ),
                ElevatedButton(
                  onPressed: () {
                   
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 164, 123, 61),
                    minimumSize: Size(130, 50), 
                  ),
                  child: Text('Buy Now'),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 3,
                    color: const Color.fromARGB(231, 177, 97, 0), 
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(children: [SizedBox(width: 26,),Text("Review",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),)],),
             Row(children: [SizedBox(width: 26,),Text("Send Your Feedback Now",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),),
             SizedBox(width: 90,),
             Icon(Icons.arrow_forward_ios)
             ],),
             SizedBox(height: 20),
            // Comment Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Comment TextField
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Add a comment...',
                      hintStyle: TextStyle(color: const Color.fromARGB(255, 164, 123, 61)),
                    ),
                    maxLines: 4,
                  ),
                  SizedBox(height: 20),
                  // Star rating and Send button row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Star rating icons
                      Row(
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star_border,
                            color:const Color.fromARGB(255, 164, 123, 61),
                            size: 40,
                          );
                        }),
                      ),
                      // Send button
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 138, 97, 43),
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'SEND',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

          ],
        ),
      ),
    ],),));
  }
}

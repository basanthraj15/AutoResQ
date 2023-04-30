import 'package:flutter/material.dart';
import 'package:resp/Screens/homeScreen.dart';
import 'package:resp/Screens/NavBar.dart';
import 'package:resp/Screens/loginScreen.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(        
               
          title: Text('Settings', style:TextStyle(fontSize: 22)),
        leading: IconButton(
          onPressed: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavBar()),
                          );},
          icon:  Icon( Icons.arrow_back_outlined, 
            color: Colors.white,
          ),
        )
        ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child:ListView(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                Icon( Icons.person_outlined,                  
                  color:Colors.black
                ),
                SizedBox(width: 10),
                Text("Account",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold))
              ],
              ),
              Divider(height:20,thickness:1),
              SizedBox(height:10),
              buildAccountOption(context, "Change Password"),
              buildAccountOption(context, "My Profile"),
              buildAccountOption(context, "Privacy and policy"),
              buildAccountOption(context, "Delete Account"),              
              SizedBox(height:40),
              Row(
                children: [
                  Icon( Icons.accessibility_outlined,
                  color:Colors.black 
                  ),
                  SizedBox(width: 10),
                Text("Others",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold))
                ],
              ),
              Divider(height:20,thickness:1),
              SizedBox(height:10),
              buildAccountOption(context, "About us"),
              buildAccountOption(context, "Premium Membership"),
              buildAccountOption(context, "Technical support"),
              SizedBox(height:100),
              ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text("LOGOUT",style: TextStyle(fontSize:20 ),),
              style: ElevatedButton.styleFrom(
               fixedSize: Size(150,50),
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),


          ],   
        ) ,
      ),
      );       
  }
  GestureDetector buildAccountOption(BuildContext context, String title){
    return GestureDetector(
      onTap: (){



      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal:20),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]
            ),
            ),
            Icon(Icons.arrow_forward_ios,color: Colors.grey),
          ],
        )
        )
      );   
  }
}
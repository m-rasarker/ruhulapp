import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: textEditingController,
                keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    label: Text('Phone Number'),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide()),

                  ),
                  validator: (value)
                  {
                  if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                  }



                  },

                ),

                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    label: Text('Password'),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 1.0))

                  ),

                ),

                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(width: 1.0))

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.red,width: 5)

                      ),



                  ),
                ),

               Container(
                 height: 100,

                 width: 150,
                 child: Row(
                   children: [Container(
                     height: 50,

                     width:100,
                     decoration: BoxDecoration(
                         color: Colors.blueGrey,
                         borderRadius: BorderRadius.all(Radius.circular(20)),
                         border: Border.all(color: Colors.red,width: 5)

                     ),



                   ),

                     Container(
                     height: 50,
                     width: 150,
                     decoration: BoxDecoration(
                         color: Colors.blueGrey,
                         borderRadius: BorderRadius.all(Radius.circular(20)),
                         border: Border.all(color: Colors.red,width: 5)

                     ),



                   ),],

                 ),
               )





              ],


            ),
          ),




        ),


      ),



    );

  }
}

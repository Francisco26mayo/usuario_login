import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget{
 

@override
State<FormScreen> createState()=> _FormScreenState(); 

}

class _FormScreenState extends State<FormScreen>{
 final formfield =GlobalKey<FormState>();
 final emailController= TextEditingController();
 final passController = TextEditingController();
 bool passToggle = true;


 
 
  get value => null;  
 

    



  @override 
Widget  build (BuildContext  context){
  return Scaffold(

    appBar: AppBar(
      title: Text("Registro de usuario"),
      centerTitle: true,



    ),



     

     body: SingleChildScrollView(

      child: Padding(

      padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 60),
       child: Form(

            key: formfield,
        
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,


  
              
            
            children: [
               Container(
                child: Image.network("lib/turismo.jpg"),
                height: 300,
                width: 350,



               ),
              

             SizedBox( height: 50,),
             TextField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController ,
              decoration: InputDecoration(
                labelText: "email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),

                

              ),

  
              

             ),
 
              SizedBox( height: 50,),
              TextField(
              keyboardType: TextInputType.emailAddress,
              controller: passController ,
              obscureText: passToggle,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffix:  InkWell(
                  onTap: () {

                 setState(() { 

                   passToggle = passToggle;
                    
                 
                 
                   
                  
                 });

                  },

                  child: Icon(passToggle ? Icons.visibility: Icons.visibility_off),

                

                  







                ),



              ),
               



             ),

             SizedBox( height: 60,),
             InkWell(

              

              onTap: () {

                if(formfield.currentState!.validate()){
                  print("Success");
                  emailController.clear();
                  emailController.clear();
                  passController.clear();
                  
                }

              },

              

            

              child: Container( 


                height: 50,
                decoration: BoxDecoration(

                color: Colors.indigo,
                borderRadius: BorderRadius.circular(5),
                ),




                   
                   
                child: Center(
                  child: Text("valida datos",
                  

            
                  

                  style: TextStyle(

                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
  
                    

                  ),




                  
                  
                  
                  
                  ),

                ),



              



              
              
              
              ),


             ),

                Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                   Text("AL ready have an account",
                   
                   style: TextStyle(

                    fontSize: 16,



                   ),
                   
                   
                   
                   ),


                 TextButton(onPressed:  () {}, child: Text("sip  Up" , 
                 style: TextStyle(

                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                 ),))
                   
                   
                   
     



                ],



                ),
             




        ],
        
        ),
             



          
          
          
          
          ),


      ),

    ),
    










  );
 




}

  newMethod(value){
                if(value!.isEmpty){
                  return"Email";
  
                }
              }

}

class RaisedButton {
}
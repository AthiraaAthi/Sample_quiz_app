import 'package:flutter/material.dart';
import 'package:quiz_app/utils/data_base/database.dart';
import 'package:quiz_app/view/end_page/end_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {//variable declaration fnction nte llil kodkan paadilla so value okke state nu thazhe kodknm
  int value=0;
  int? checkvalue;
  void counter(){
    value=value+1;//elevated button nte count nu vndi
    setState(() {
      
    });
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("${value+1}/${DataBase.quizData.length}"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20,),
           Text(DataBase.quizData[value]["question"],style: TextStyle(fontSize: 10,),),
           SizedBox(height: 50,),
           ListView.separated(//index vch chyunnond aan builder mm seperator mm use chynath
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) =>InkWell(
              onTap: () {
                checkvalue=index;
                setState(() {
                  
                });
                value+1==DataBase.quizData.length?
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => EndPage(),), (route) => false):counter();
              },
              child: Container(
              height: 50,
              
              color:checkvalue==index
              ?checkvalue==DataBase.quizData[value]["answer"]
              ? Colors.green :
              Colors.red:Colors.amber,

             
              child: Center(
                child: Text(DataBase.quizData[value]["options"][index]),
                //list le quizdata il ullile list items le 0th position le options nte inde
                //aa options nte avde molilthe value kodthit db il verelists create chya
              ),
            
                       ),
                       
            ),
            separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
            //builder maati seperated kodknm
              
                 
           

           ),
           Text(value.toString()),
           SizedBox(height: 50,),
           ElevatedButton(
            onPressed: (){
              counter();
              checkvalue=5;
              setState(() {
                
              });
            }, child: Text("Save")
           ),
          ]
            ) ,
            ),
             
          
          
        
      
    );
  }

  
}
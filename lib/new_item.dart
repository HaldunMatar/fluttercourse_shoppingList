


import 'package:flutter/material.dart';

import 'data/categories.dart';

class NewItem extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  void addItem(){
    _formKey.currentState?.validate();



  }





  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(title: Text('add Item'),),

body:    Form(
  key: _formKey ,
  child:   Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
    children: [
  
      TextFormField( 
        decoration: const  InputDecoration( label: Text('name ')),
        maxLength: 5,
        validator: (value){
        
       if(value==null ||  value.isEmpty  )
         return 'please enter corretct info ' ;


         return null ;

          },
  
       
      )
    ,

 Row(
   children: [
   Expanded(
     child: TextFormField( 
      keyboardType:  TextInputType.number,
          decoration: const  InputDecoration( label: Text('amount ')),
          initialValue: '1',
          validator: (value){
             if(  int.tryParse(value!)! > 0  &&  int.tryParse(value!)! <  50  )
               return 'please enter  correct number  ' ;
            return null; 
            },
         
     
        ),
   )

    ,
     Expanded(
       child: DropdownButtonFormField(items: [     
         for(final cat in categories )
          DropdownMenuItem(
            value: cat ,  child: Row(children: [ Container(width: 20, height: 20,
           color:cat.color ,),SizedBox(width: 20,) , Text(cat.title) ],))
     
         ] 
       , 
       onChanged: (value)
       {
     
       }),
     ),
   ],
 )

    ,
 

 Row(
   mainAxisAlignment:MainAxisAlignment.end ,
  children: [  
 

 ElevatedButton(onPressed: (){

  addItem();

 }, child: Text('add')),

  ElevatedButton(onPressed: (){


_formKey.currentState?.reset();

  }, child: Text('reset')),


 ],)
    
    
    ],
    
    
        ),
  ),
),

    );
    
    
   




  }
  



}
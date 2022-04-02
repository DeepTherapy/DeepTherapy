import 'package:flutter/material.dart';

class SignupDoc2 extends StatelessWidget {
  const SignupDoc2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Profile', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: Image.asset("../assets/images/deep.png")
        
        // do something
      
    
  
      ),
      body: Center(child: SingleChildScrollView(child: Column(children: [SizedBox(height: 20),Container(width: 390, height: 165, decoration: new BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white, border: Border.all(color: Colors.grey, width: 1)),
      child: Center(child: Column(children: [Padding(padding:EdgeInsets.all(8),child: Stack(alignment: Alignment.center,children: [Container(width: 150, height: 100,decoration: new BoxDecoration(color: Colors.lightBlue[100], shape: BoxShape.circle),),new Icon(Icons.cloud_upload_rounded,size: 35,color: Colors.blue,)])),
      new Text("Upload Profile Picture", style: TextStyle(color: Colors.grey))]))
      ),
      Container(width: 420,padding: EdgeInsets.all(16), child: Column(children: [TextFormField(decoration: InputDecoration(labelText: 'First Name'),
                  keyboardType: TextInputType.name,), TextFormField(decoration: InputDecoration(labelText: 'Last Name'),
                   keyboardType: TextInputType.name,), TextFormField(decoration: InputDecoration(labelText: 'Country'),
                   keyboardType: TextInputType.number,), TextFormField(decoration: InputDecoration(labelText: 'Phone number'),
                   keyboardType: TextInputType.name,), TextFormField(decoration: InputDecoration(labelText: 'State where you are reside'),
                   keyboardType: TextInputType.name,), TextFormField(decoration: InputDecoration(labelText: 'State where you are licensed'),
                   keyboardType: TextInputType.name,), TextFormField(decoration: InputDecoration(labelText: 'license number'),
                   keyboardType: TextInputType.name,),
                   SizedBox(height: 35),
                   new ElevatedButton( style: ElevatedButton.styleFrom(fixedSize: Size(420, 35),shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               side:BorderSide(color: Colors.blue),
                            
                      )),onPressed: (){}, 
             child: new Text("Confirm"),)]
                   )
                   )
      
      ],
      ),
      )
      )
      
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(suffixIcon: Icon(Icons.arrow_drop_down, size: 30),labelText: "Gender"),
      value: dropdownValue,
      style: const TextStyle(color: Colors.deepPurple),
      isExpanded: true,
      icon: Visibility(visible: false, child: Icon(Icons.pin_drop)),
      // underline: Container(
      //   height: 2,
        
      //   color: Colors.deepPurpleAccent,
      // ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['', 'Male', 'Female', 'Prefer not to say']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

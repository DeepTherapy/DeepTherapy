import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// class CreateProfile extends StatefulWidget {}
   
  class CreateProfileP extends StatefulWidget {
    const CreateProfileP({ Key? key }) : super(key: key);
  
    @override
    State<CreateProfileP> createState() => _CreateProfilePState();
  }
  
  class _CreateProfilePState extends State<CreateProfileP> {
   
  var imageFile;
  int test = 0;
  FilePickerResult? pickedFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Profile', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: Image.asset("assets/images/deep.png")
        
        // do something
      
    
  
      ),
      body: Center(child: SingleChildScrollView(child: Column(children: [SizedBox(height: 20),Container(width: 390, height: 165, decoration: new BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white, border: Border.all(color: Colors.grey, width: 1)),
      child: Center(child: Padding(padding:EdgeInsets.all(16),child: Column(children: [(test == 0 ? Column(children: [RawMaterialButton(
  onPressed: (){chooseImage();},
  elevation: 2.0,
  fillColor: Colors.lightBlue[100],
  child: Icon(
    Icons.cloud_upload,
    size: 35.0,
    color: Colors.blue
  ),
  padding: EdgeInsets.all(15.0),
  shape: CircleBorder(),
), Text("Upload Image")]):Column(children: [CircleAvatar(
  
    radius: 45.0,
    
    child: ClipRRect(
        child: imageFile,
        borderRadius: BorderRadius.circular(50.0),
    ), 
),IconButton(onPressed: (){setState((){test = 0;});}, icon: Icon(Icons.replay_outlined)) ]))
]
)
)))

//change to column children and add retry icon
    
    
    
    
      ,Container(width: 420,padding: EdgeInsets.all(16), child: Column(children: [TextFormField(decoration: InputDecoration(labelText: 'Full Name'),
                   keyboardType: TextInputType.name,), TextFormField(decoration: InputDecoration(suffixIcon: Icon(Icons.email, size: 20),labelText: 'Email'),
                   keyboardType: TextInputType.emailAddress,), MyStatefulWidget(),TextFormField(decoration: InputDecoration(labelText: 'Password'),
                   keyboardType: TextInputType.emailAddress,),TextFormField(decoration: InputDecoration(labelText: 'Confirm Password'),
                   keyboardType: TextInputType.emailAddress,), 
                   TextFormField(decoration: InputDecoration(suffixIcon: Icon(Icons.calendar_today,size: 20),labelText: 'Date of Birth'),
                   keyboardType: TextInputType.name,), TextFormField(decoration: InputDecoration(labelText: 'Address'),
                   keyboardType: TextInputType.name,),
                   SizedBox(height: 35),
                   new ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(420, 35),shape:
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
  void chooseImage() async {
    pickedFile = await FilePicker.platform.pickFiles();
    if (pickedFile != null) {
      try {
        setState((){ 
          var logoBase64 = pickedFile!.files.first.bytes;
          imageFile = Image.memory(logoBase64,fit: BoxFit.cover,);
          test = 1;
        });
      } catch (err) {
        print(err);
      }
    } else {
      print('No Image Selected');
    }
}

   _getFromGallery() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      () {
        imageFile = File(pickedFile.path);
      };
    }
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

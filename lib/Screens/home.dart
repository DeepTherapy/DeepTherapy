import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../env.sample.dart';
import '../models/doctor.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  late Future<List<Doctor>> doctors;
  final doctorListKey = GlobalKey<HomeState>();

  @override
  void initState() {
    super.initState();
    doctors = getDoctorList();
  }

  Future<List<Doctor>> getDoctorList() async {
    final response = await http.get("${Env.URL_PREFIX}/doctordetails");
    
    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    
    List<Doctor> doctors = items.map<Doctor>((json) {
      return Doctor.fromJson(json);
    }).toList();
    
    return doctors;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: doctorListKey,
      appBar: AppBar(
        title: Text('Employee List'),
      ),
      body: Center(
        child: FutureBuilder<List<Doctor>>(
          future: doctors,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            // By default, show a loading spinner.
            print(snapshot);
            if (!snapshot.hasData) return CircularProgressIndicator();
            // Render employee lists
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                var data = snapshot.data[index];
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                      data.ename,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
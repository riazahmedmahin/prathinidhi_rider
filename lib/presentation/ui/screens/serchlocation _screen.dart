import 'package:flutter/material.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/personal_info_screens.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/header.dart';

import '../widgets/textbutton.dart';

class Search_locationScreen extends StatefulWidget {
  @override
  _Search_locationScreenState createState() => _Search_locationScreenState();
}

class _Search_locationScreenState extends State<Search_locationScreen> {
  String _searchText = "";
  String _selectedLocation = ""; // Variable to hold the selected location
  List<String> _locations = [
    'Dhaka',
    'Chittagong',
    'Khulna',
    'Rajshahi',
    'Sylhet',
    'Barisal',
    'Rangpur',
    'Comilla',
    'Cox’s Bazar',
    'Mymensingh'
  ];

  List<String> _filteredLocations = [];

  @override
  void initState() {
    _filteredLocations.addAll(_locations);
    super.initState();
  }

  void _filterLocations(String query) {
    query = query.toLowerCase();
    setState(() {
      _filteredLocations = _locations.where((location) {
        return location.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Select the district you are at the moment',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search Location',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                _filterLocations(value);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredLocations.length,
              itemBuilder: (context, index) {
                final location = _filteredLocations[index];
                return ListTile(
                  title: Text(location),
                  onTap: () {
                    setState(() {
                      _selectedLocation = location;
                      _filteredLocations = [location]; // Only show selected location
                    });
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomTextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalInfoScreen()));

            }, text: 'Next', txtcolor: Colors.white, color: AppColors.primaryColor,),
          ),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}

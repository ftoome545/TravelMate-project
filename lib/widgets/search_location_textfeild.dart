import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

// ignore: must_be_immutable
class SearchLocationTextfeild extends StatefulWidget {
  SearchLocationTextfeild(
      {super.key,
      required this.yourLocation,
      required this.onLocationSelected});
  String yourLocation = "";
  final Function(String) onLocationSelected;

  @override
  State<SearchLocationTextfeild> createState() =>
      _SearchLocationTextfeildState();
}

class _SearchLocationTextfeildState extends State<SearchLocationTextfeild> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _locations = [
    'Riyadh',
    'Jeddah',
    'Mecca',
    'Medina',
    'Dammam',
    'Tabuk',
    'Taif',
    'Abha',
    'Hofuf',
    'Khobar'
  ];

  @override
  void initState() {
    super.initState();
    _filteredLocations = _locations; // Initialize with all locations
  }

  List<String> _filteredLocations = [];

  void _filterLocations(String query) {
    if (query.isEmpty) {
      setState(() {
        _filteredLocations = _locations;
      });
    } else {
      setState(() {
        _filteredLocations = _locations
            .where((location) =>
                location.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEAF1),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xff4A6670)),
        backgroundColor: Colors.white,
        title: Text(
          'Your Location',
          style: AppStyles.styleMedium20(context),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              const SizedBox(
                width: 24,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: TextField(
                    cursorColor: const Color(0xff4A6670),
                    controller: _controller,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Enter location',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xff4A6670),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff4A6670)),
                      ),
                    ),
                    onChanged:
                        _filterLocations, // Call the filter function on text change
                  ),
                ),
              ),
              const SizedBox(
                width: 24,
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200, // Constrain the height of the list
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ListView.builder(
                itemCount: _filteredLocations.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(
                      Icons.location_on,
                      color: Color(0xff4A6670),
                    ),
                    title: Text(
                      _filteredLocations[index],
                      style: AppStyles.styleRegular16(context)
                          .copyWith(color: Colors.black),
                    ),
                    onTap: () {
                      setState(() {
                        widget.yourLocation = _filteredLocations[index];
                        widget.onLocationSelected(_filteredLocations[index]);
                      });
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

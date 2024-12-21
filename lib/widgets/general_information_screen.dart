import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/general_info_about_you.dart';
import 'package:travel_mate/widgets/search_location_textfeild.dart';

class GeneralInformationScreen extends StatefulWidget {
  const GeneralInformationScreen({super.key});

  @override
  State<GeneralInformationScreen> createState() =>
      _GeneralInformationScreenState();
}

class _GeneralInformationScreenState extends State<GeneralInformationScreen> {
  String profileImagePath = "", aboutYou = "", yourName = "", yourLocation = "";
  final TextEditingController _controller = TextEditingController();

  void _showYourNameDialog() {
    _controller.text = yourName;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Your name', style: AppStyles.styleMedium20(context)),
          content: TextField(
            cursorColor: const Color(0xff4A6670),
            controller: _controller,
            maxLines: 1,
            decoration: InputDecoration(
                hintText: 'Enter your name here',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff4A6670)))),
          ),
          actions: [
            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0xffDFEAF1))),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: const Color(0xff4A6670)),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff4A6670),
              ),
              onPressed: () {
                setState(() {
                  yourName = _controller.text;
                });
                Navigator.pop(context);
              },
              child: Text(
                'Save',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showAboutYouDialog() {
    _controller.text = aboutYou;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('About You', style: AppStyles.styleMedium20(context)),
          content: TextField(
            cursorColor: const Color(0xff4A6670),
            controller: _controller,
            maxLines: 5,
            decoration: InputDecoration(
                hintText: 'Write something about yourself...',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff4A6670)))),
          ),
          actions: [
            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0xffDFEAF1))),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: const Color(0xff4A6670)),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff4A6670),
              ),
              onPressed: () {
                setState(() {
                  aboutYou = _controller.text;
                });
                Navigator.pop(context);
              },
              child: Text(
                'Save',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showImagePickerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose Profile Image',
              style: AppStyles.styleMedium20(context)),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text(
                    'Take a new photo',
                    style: AppStyles.styleRegular14(context)
                        .copyWith(color: Colors.black),
                  ),
                  onTap: () {
                    _chooseImage(ImageSource.camera);
                    Navigator.of(context).pop();
                    // setData();
                  },
                ),
                const SizedBox(height: 16.0),
                GestureDetector(
                  child: Text(
                    'Select from gallery',
                    style: AppStyles.styleRegular14(context)
                        .copyWith(color: Colors.black),
                  ),
                  onTap: () {
                    _chooseImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                    // setData();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _chooseImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        profileImagePath = pickedImage.path;
      });
      // setData();
    }
  }

  void _showAddLocationDialog() {
    _controller.text = yourLocation; // Set initial text

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SearchLocationTextfeild(
          yourLocation: yourLocation,
          onLocationSelected: (selectedLocation) {
            setState(() {
              yourLocation = selectedLocation; // Update the state
            });
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEAF1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color(0xff4A6670),
        ),
        title: Text(
          'General Information',
          style: AppStyles.styleMedium20(context),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          GeneralInfoSections(
              variableName: yourName,
              functionName: _showYourNameDialog,
              title: 'Your name'),
          const SizedBox(
            height: 24,
          ),
          GeneralInfoSections(
            variableName: aboutYou,
            functionName: _showAboutYouDialog,
            title: 'About You',
          ),
          const SizedBox(
            height: 24,
          ),
          GeneralInfoSections(
              variableName: profileImagePath,
              functionName: _showImagePickerDialog,
              title: 'Add your photos'),
          const SizedBox(
            height: 24,
          ),
          GeneralInfoSections(
              variableName: yourLocation,
              functionName: _showAddLocationDialog,
              title: 'Your location'),
        ],
      ),
    );
  }
}

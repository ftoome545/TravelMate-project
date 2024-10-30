import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
        inputDecorationTheme: const InputDecorationTheme(
            hintStyle: AppStyles.styleRegular16, border: InputBorder.none));
  }

  List<String> citiesName = [
    "Riyadh",
    "Jeddah",
    "Mecca",
    "Medina",
    "Dammam",
    "Khobar",
    "Tabuk",
    "Abha",
    "Taif",
    "Hail",
    "Al Jubail",
    "Al Ahsa",
    "Yanbu",
    "Qassim",
    "Najran",
    "Jazan",
    "Al Kharj",
    "Al Baha",
    "Sakaka",
    "Arar"
  ];

  final recentCities = [
    "Riyadh",
    "Jeddah",
    "Mecca",
    "Medina",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: SvgPicture.asset(Assets.imagesCloseIcon)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, '');
        },
        icon: SvgPicture.asset(Assets.imagesBackIconLightColor));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: Card(
          color: const Color(0xff7AA0A7),
          child: Center(
              child: Text(
            query,
            style: const TextStyle(fontSize: 25),
          )),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentCities
        : citiesName
            .where((item) => item.toLowerCase().startsWith(query.toLowerCase()))
            .toList();
    return Container(
      color: const Color(0xffDFEAF1),
      child: ListView.builder(
          itemCount: suggestionList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 18),
              child: GestureDetector(
                onTap: () {
                  showResults(context);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: RichText(
                        text: TextSpan(
                          text:
                              suggestionList[index].substring(0, query.length),
                          style: AppStyles.styleBold16.copyWith(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  suggestionList[index].substring(query.length),
                              style: AppStyles.styleRegular16
                                  .copyWith(color: const Color(0xff7D848D)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Color(0xff7AA0A7),
                      height: 18,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

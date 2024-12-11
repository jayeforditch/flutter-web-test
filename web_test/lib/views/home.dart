import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> testimonials = [
    "The app is great",
    "I love using it",
    "Easy to use"
  ];
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    if (ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)) {
      return Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 1200,
          ),
          decoration: const BoxDecoration(color: Colors.amber),
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.COLUMN,
            children: testimonials.asMap().entries.map((item) {
              return const ResponsiveRowColumnItem(
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Screen is larger than 1081 -- Desktop",
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      );
      // return ResponsiveGridView.builder(
      //   gridDelegate: const ResponsiveGridDelegate(
      //       crossAxisExtent: 260,
      //       mainAxisSpacing: 16,
      //       crossAxisSpacing: 16,
      //       childAspectRatio: 1.37),
      //   maxRowCount: 1,
      //   itemCount: testimonials.length,
      //   shrinkWrap: true,
      //   physics: const NeverScrollableScrollPhysics(),
      //   padding: const EdgeInsets.fromLTRB(4, 8, 0, 8),
      //   alignment: Alignment.center,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: Padding(
      //         padding: const EdgeInsets.all(16.0),
      //         child: Text(
      //           testimonials[index],
      //         ),
      //       ),
      //     );
      //   },
      // );
    } else if (ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET)) {
      return Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 1200,
          ),
          decoration: const BoxDecoration(color: Colors.green),
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.COLUMN,
            children: testimonials.asMap().entries.map((item) {
              return const ResponsiveRowColumnItem(
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Screen is between 641 and 1080 -- Tablet",
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      );
    } else if (ResponsiveBreakpoints.of(context)
        .largerOrEqualTo("MOBILE_LARGE")) {
      return Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 1200,
          ),
          decoration: const BoxDecoration(color: Colors.blue),
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.COLUMN,
            children: testimonials.asMap().entries.map((item) {
              return const ResponsiveRowColumnItem(
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Screen is between 481 and 640 -- Mobile Large",
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      );
    } else {
      return const Text('mobile');
    }
  }
}

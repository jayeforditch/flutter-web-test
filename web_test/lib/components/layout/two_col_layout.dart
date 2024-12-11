import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TwoColLayout extends StatefulWidget {
  final Widget left;
  final Widget right;
  const TwoColLayout({super.key, required this.left, required this.right});

  @override
  State<TwoColLayout> createState() => _TwoColLayoutState();
}

class _TwoColLayoutState extends State<TwoColLayout> {
  @override
  Widget build(BuildContext context) {
    bool isDesktop = ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
        constraints: const BoxConstraints(
          maxWidth: 1400,
        ),
        child: ResponsiveRowColumn(
          columnMainAxisSize: MainAxisSize.max,
          rowMainAxisSize: MainAxisSize.max,
          rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
          layout: isDesktop
              ? ResponsiveRowColumnType.ROW
              : ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(
              child: Expanded(
                child: Container(
                  padding: isDesktop
                      ? const EdgeInsets.all(50)
                      : const EdgeInsets.all(30),
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.blue)),
                  child: isDesktop
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [widget.left],
                        )
                      : Row(
                          children: [widget.left],
                        ),
                ),
              ),
            ),
            ResponsiveRowColumnItem(
              child: Container(
                height: isDesktop ? screenHeight * .65 : 1,
                width: isDesktop ? 1 : screenWidth * .65,
                decoration: BoxDecoration(
                  color: const Color(0xFFD8D8D8),
                  borderRadius: BorderRadius.circular(10),
                ),
                // width: 1,
              ),
            ),
            ResponsiveRowColumnItem(
              child: Expanded(
                child: Container(
                  padding: isDesktop
                      ? const EdgeInsets.all(50)
                      : const EdgeInsets.all(30),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.blue)),
                  child: isDesktop
                      ? Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [widget.right],
                          ),
                        )
                      : Row(
                          children: [widget.right],
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

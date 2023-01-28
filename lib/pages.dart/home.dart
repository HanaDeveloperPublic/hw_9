import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage();

  @override
  State<StatefulWidget> createState() {
    return _GoogleMapState();
  }
}

class _GoogleMapState extends State<GoogleMapPage> with TickerProviderStateMixin {
  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xFF2b529c),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(
              width: 20,
            ),
            Text(
              "Store Details",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.arrow_upward_outlined, color: Color(0xFF2b529c)),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assests/map.png",
              width: screenWidth,
              height: screenHeight,
              fit: BoxFit.fill,
            ),
            //explore

            Positioned(
                bottom: 0,
                child: Container(
                  //   height:screenHeight,
                  height: screenHeight / 6,
                  width: screenWidth,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "2762 Queen Plz S",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "Long Island City, NY 11101",
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "SWC",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Row(
                              children: const [
                                Icon(Icons.add, color: Color(0xFF2b529c), size: 35),
                                Text(
                                  "Choose this store",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xFF2b529c),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              size: 45,
                              color: Color(0xFF2b529c),
                            ),
                            Text(
                              "1.0 mi ",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF2b529c)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                // Container(
                //   height: 200,
                //   //color: Colors.white,
                //   width: 450,
                //   decoration: const BoxDecoration(
                //     gradient: LinearGradient(
                //         colors: [
                //           Colors.white,
                //           Color(0xFF00CCFF),
                //         ],
                //         begin: FractionalOffset(0.0, 0.0),
                //         end: FractionalOffset(1.0, 0.0),
                //         stops: [0.0, 1.0],
                //         tileMode: TileMode.clamp),
                //   ),
                //   child: Column(
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Row(
                //           children: const [
                //             Text(
                //               "This Map Show Saudi Arabia ",
                //               style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                //             ),
                //           ],
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
                //           Text(
                //             "Choose the location category ",
                //             style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                //           ),
                //         ]),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Container(
                //                 height: 30,
                //                 //color: Colors.white,
                //                 width: 45,
                //                 decoration: const BoxDecoration(
                //                   gradient: LinearGradient(
                //                       colors: [
                //                         Colors.white,
                //                         Colors.orange,
                //                       ],
                //                       begin: FractionalOffset(0.0, 0.0),
                //                       end: FractionalOffset(1.0, 0.0),
                //                       stops: [0.0, 1.0],
                //                       tileMode: TileMode.clamp),
                //                 ),
                //                 child: const Icon(Icons.home)),
                //             const SizedBox(
                //               width: 12,
                //             ),
                //             Container(
                //                 height: 30,
                //                 //color: Colors.white,
                //                 width: 45,
                //                 decoration: const BoxDecoration(
                //                   gradient: LinearGradient(
                //                       colors: [
                //                         Colors.white,
                //                         Colors.orange,
                //                       ],
                //                       begin: FractionalOffset(0.0, 0.0),
                //                       end: FractionalOffset(1.0, 0.0),
                //                       stops: [0.0, 1.0],
                //                       tileMode: TileMode.clamp),
                //                 ),
                //                 child: const Icon(Icons.home)),
                //             const SizedBox(
                //               width: 12,
                //             ),
                //             Container(
                //                 height: 30,
                //                 //color: Colors.white,
                //                 width: 45,
                //                 decoration: const BoxDecoration(
                //                   gradient: LinearGradient(
                //                       colors: [
                //                         Colors.white,
                //                         Colors.orange,
                //                       ],
                //                       begin: FractionalOffset(0.0, 0.0),
                //                       end: FractionalOffset(1.0, 0.0),
                //                       stops: [0.0, 1.0],
                //                       tileMode: TileMode.clamp),
                //                 ),
                //                 child: const Icon(Icons.home)),
                //             const SizedBox(
                //               width: 12,
                //             ),
                //             Container(
                //                 height: 30,
                //                 //color: Colors.white,
                //                 width: 45,
                //                 decoration: const BoxDecoration(
                //                   gradient: LinearGradient(
                //                       colors: [
                //                         Colors.white,
                //                         Colors.orange,
                //                       ],
                //                       begin: FractionalOffset(0.0, 0.0),
                //                       end: FractionalOffset(1.0, 0.0),
                //                       stops: [0.0, 1.0],
                //                       tileMode: TileMode.clamp),
                //                 ),
                //                 child: const Icon(Icons.school)),
                //             const SizedBox(
                //               width: 12,
                //             ),
                //             Container(
                //                 height: 30,
                //                 //color: Colors.white,
                //                 width: 45,
                //                 decoration: const BoxDecoration(
                //                   gradient: LinearGradient(
                //                       colors: [
                //                         Colors.white,
                //                         Colors.orange,
                //                       ],
                //                       begin: FractionalOffset(0.0, 0.0),
                //                       end: FractionalOffset(1.0, 0.0),
                //                       stops: [0.0, 1.0],
                //                       tileMode: TileMode.clamp),
                //                 ),
                //                 child: const Icon(Icons.grade_rounded)),
                //           ],
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Container(
                //               decoration: const BoxDecoration(
                //                 gradient: LinearGradient(
                //                     colors: [
                //                       Colors.white,
                //                       Colors.grey,
                //                     ],
                //                     begin: FractionalOffset(0.0, 0.0),
                //                     end: FractionalOffset(1.0, 0.0),
                //                     stops: [0.0, 1.0],
                //                     tileMode: TileMode.clamp),
                //               ),
                //               child: const Text(
                //                 "Add this location  ",
                //                 style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  @override
  void dispose() {
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:model_prectice_app/models/complex_model.dart';

import 'models/user_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // List<UserNameModel> userDataList = [
  //   UserNameModel(
  //       name: 'Bilal Ahmad', age: 22, profession: 'Flutter Developer'),
  //   UserNameModel(
  //       name: 'Afzaal Ahmad', age: 22, profession: 'Graphic Designer'),
  //   UserNameModel(
  //       name: 'Sajjad Ahmad',
  //       age: 22,
  //       profession: 'Graphic Designer and Developer'),
  //   UserNameModel(name: 'Shehbaz Ahmad', age: 22, profession: 'Business Man'),
  //   UserNameModel(name: 'Kamran Ahmad', age: 22, profession: 'Employee'),
  //   UserNameModel(name: 'Awais Ahmad', age: 22, profession: 'Graphic Designer'),
  //   UserNameModel(name: 'Shehbaz Ahmad', age: 22, profession: 'Business Man'),
  //   UserNameModel(name: 'Kamran Ahmad', age: 22, profession: 'Employee'),
  //   UserNameModel(name: 'Awais Ahmad', age: 22, profession: 'Graphic Designer'),
  //   UserNameModel(name: 'Awais Ahmad', age: 22, profession: 'Graphic Designer'),
  // ];

  List<userDataModel> dataList = [
    userDataModel(
      name: 'Bilal Ahmad',
      age: 23,
      profession: 'Flutter Developer',
      details: Details(
        fatherName: 'Shehbaz Ahmad',
        province: Province(
          punjab: true,
          kPK: false,
          balochistan: false,
          sindh: false,
        ),
      ),
    ),
    userDataModel(
      name: 'Afzaal Ahmad',
      age: 17,
      profession: 'Graphic Designer',
      details: Details(
        fatherName: 'Shehbaz Ahmad',
        province: Province(
          punjab: true,
          kPK: false,
          balochistan: false,
          sindh: false,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// body
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Json Model Data',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30.0),

              /// simple model and data show
              // Expanded(
              //   child: ListView.builder(
              //     itemCount: userDataList.length,
              //     padding: const EdgeInsets.symmetric(vertical: 20.0),
              //     physics: const BouncingScrollPhysics(),
              //     itemBuilder: (context, index) {
              //       return Container(
              //         margin: const EdgeInsets.symmetric(
              //             vertical: 8.0, horizontal: 16.0),
              //         decoration: const BoxDecoration(
              //           color: Colors.white12,
              //         ),
              //         child: ListTile(
              //           title: Text(
              //             "Name : ${userDataList[index].name}",
              //             style: const TextStyle(
              //               fontSize: 16.0,
              //               color: Colors.white,
              //               fontWeight: FontWeight.w700,
              //             ),
              //           ),
              //           subtitle: Text(
              //             "Age : ${userDataList[index].age}",
              //             style: const TextStyle(
              //               fontSize: 13.0,
              //               color: Colors.white,
              //               fontWeight: FontWeight.w400,
              //             ),
              //           ),
              //           trailing: IconButton(
              //             onPressed: () {
              //               userDataList.removeAt(index);
              //               setState(() {});
              //             },
              //             icon: const Icon(
              //               Icons.delete,
              //               color: Colors.red,
              //             ),
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),

              /// complex model data show
              Expanded(
                child: ListView.builder(
                  itemCount: dataList.length,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: const BoxDecoration(
                        color: Colors.white12,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Name : ${dataList[index].name}",
                                  style: const TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 12.0),
                                Text(
                                  "Age : ${dataList[index].age}",
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 12.0),
                                Text(
                                  "${dataList[index].profession}",
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 12.0),
                                Text(
                                  "Father Name : ${dataList[index].details!.fatherName}",
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 12.0),
                                Text(
                                  "Punjab : ${dataList[index].details!.province!.punjab}",
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              dataList.removeAt(index);
                              setState(() {
                                
                              });
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

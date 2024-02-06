import 'package:apicall_with_multipost_model/api_services.dart';
import 'package:apicall_with_multipost_model/multi_post_apimodel.dart';
import 'package:flutter/material.dart';

class ScreenWithMultiApiPost extends StatefulWidget {
  const ScreenWithMultiApiPost({super.key});

  @override
  State<ScreenWithMultiApiPost> createState() => _ScreenWithMultiApiPostState();
}

class _ScreenWithMultiApiPostState extends State<ScreenWithMultiApiPost> {
  List<MultiPostModel> multiPost = [];

  getDataApi() {
    ApiServices().getApiData().then((value) {
      setState(() {
        multiPost = value!;
      });
    });
  }

  @override
  void initState() {
    getDataApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Multi Api Post'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: multiPost.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 4,left: 8,right: 8,bottom: 4),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.red,
                            child: Text('ID : '),
                          ),
                          SizedBox(width: 1,),
                          Expanded(
                            child: Container(
                              color: Colors.red,
                              child: Text(multiPost[index].id.toString()),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.red,
                            child: Text('NAME : '),
                          ),
                          SizedBox(width: 1,),
                          Expanded(
                            child: Container(
                              color: Colors.red,
                              child: Text(multiPost[index].name.toString()),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.red,
                            child: Text('USER NAME : '),
                          ),
                          SizedBox(width: 1,),
                          Expanded(
                            child: Container(
                              color: Colors.red,
                              child: Text(multiPost[index].username.toString()),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.red,
                            child: Text('EMAIL : '),
                          ),
                          SizedBox(width: 1,),
                          Expanded(
                            child: Container(
                              color: Colors.red,
                              child: Text(multiPost[index].email.toString()),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.red,
                            child: Text('ADDRESS : '),
                          ),
                          SizedBox(width: 1,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.red,
                                child: Text('STREET : '+multiPost[index].address!.street.toString()),
                              ),
                              Container(
                                color: Colors.red,
                                child: Text('SUITE : '+multiPost[index].address!.suite.toString()),
                              ),
                              Container(
                                color: Colors.red,
                                child: Text('CITY : '+multiPost[index].address!.city.toString()),
                              ),
                              Container(
                                color: Colors.red,
                                child: Text('ZIPCODE : '+multiPost[index].address!.zipcode.toString()),
                              ),
                              Row(
                                children: [
                                  Container(
                                    color: Colors.red,
                                    child: Text('GEO : '),
                                  ),
                                  SizedBox(width: 1,),
                                  Column(
                                    children: [
                                      Container(
                                        color: Colors.red,
                                        child: Text('LAT : '+multiPost[index].address!.geo!.lat.toString()),
                                      ),
                                      Container(
                                        color: Colors.red,
                                        child: Text('LNG : '+multiPost[index].address!.geo!.lng.toString()),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],),
                  );
                }),
          ),







          // Expanded(
          //   child: ListView.builder(
          //       itemCount: multiPost.length,
          //       itemBuilder: (context, index) {
          //         return Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Column(
          //             children: [
          //               Container(
          //                   width: double.infinity,
          //                   child: Center(
          //                       child: Text(
          //                     'Id : ' + multiPost[index].id.toString(),
          //                     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          //                   ))),
          //               Container(
          //                   width: double.infinity,
          //                   color: Colors.red,
          //                   child: Text(
          //                       'Name : ' + multiPost[index].name.toString())),
          //               Container(
          //                   width: double.infinity,
          //                   color: Colors.red,
          //                   child: Text('User Name : ' +
          //                       multiPost[index].username.toString())),
          //               Container(
          //                   width: double.infinity,
          //                   color: Colors.red,
          //                   child: Text('Email Id : ' +
          //                       multiPost[index].email.toString())),
          //               Container(
          //                   width: double.infinity,
          //                   color: Colors.red,
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text('Address : ' +
          //                           multiPost[index]
          //                               .address!
          //                               .street
          //                               .toString()),
          //                       Text(
          //                           multiPost[index].address!.suite.toString()),
          //                       Text(multiPost[index].address!.city.toString()),
          //                       Text(multiPost[index]
          //                           .address!
          //                           .zipcode
          //                           .toString()),
          //                     ],
          //                   )),
          //               Container(
          //                   width: double.infinity,
          //                   color: Colors.red,
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text('Geo : ' +
          //                           multiPost[index]
          //                               .address!
          //                               .geo!
          //                               .lat
          //                               .toString()),
          //                       Text(multiPost[index]
          //                           .address!
          //                           .geo!
          //                           .lng
          //                           .toString()),
          //                     ],
          //                   )),
          //               Container(
          //                 color: Colors.red,
          //                 width: double.infinity,
          //                 child: Text(
          //                     'Phone : ' + multiPost[index].phone.toString()),
          //               ),
          //               Container(
          //                 color: Colors.red,
          //                 width: double.infinity,
          //                 child: Text('Website : ' +
          //                     multiPost[index].website.toString()),
          //               ),
          //               Container(
          //                 color: Colors.red,
          //                 width: double.infinity,
          //                 child: Text('Company : ' +
          //                     multiPost[index].company!.name.toString()),
          //               ),
          //               Container(
          //                 color: Colors.red,
          //                 width: double.infinity,
          //                 child: Text(
          //                     multiPost[index].company!.catchPhrase.toString()),
          //               ),
          //               Container(
          //                 color: Colors.red,
          //                 width: double.infinity,
          //                 child: Text(multiPost[index].company!.bs.toString()),
          //               ),
          //             ],
          //           ),
          //         );
          //       }),
          // )
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:ui_store/State/Provider.dart';

import 'package:url_launcher/url_launcher.dart';

class App_Page extends StatefulWidget {
  const App_Page({Key? key}) : super(key: key);

  @override
  State<App_Page> createState() => _App_PageState();
}

class _App_PageState extends State<App_Page> {
  Provider_? T;
  Provider_? F;

  @override
  Widget build(BuildContext context) {
    T = Provider.of<Provider_>(context, listen: true);
    F = Provider.of<Provider_>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: F!.My_app_choice.length,
                  itemBuilder: (context, index) {
                    return InkWell(onTap: ()async{
                      await launchUrl(Uri.parse('${F!.My_app_choice[index].photo}'));

                    },
                      child: ListTile(
                        title: Row(
                          children: [
                            Container(height: 50,width: 50,
                                child: ClipRRect(borderRadius: BorderRadius.circular(08),child:
                                Image.asset("${F!.My_app_choice[index].photo}"))),
                            SizedBox(width: 15,),
                            Column(
                              children: [
                                Text('${F!.My_app_choice[index].appname}'),SizedBox(height: 3,),
                                Text('${F!.My_app_choice[index].star as String} ★',style: TextStyle(fontSize: 15,color: Color(
                                    0xff565656)),),
                              ],
                            ),
                          ],
                        ),
                        trailing: Icon(Icons.more_vert_rounded),
                        leading: Text ('${index + 1}'),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

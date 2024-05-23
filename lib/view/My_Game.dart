
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:ui_store/State/Provider.dart';
import 'package:url_launcher/url_launcher.dart';

class My_Game extends StatefulWidget {
  const My_Game({Key? key}) : super(key: key);

  @override
  State<My_Game> createState() => _My_GameState();
}

class _My_GameState extends State<My_Game> {
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
                  itemCount: F!.game.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: ()async{
                        await launchUrl(Uri.parse('${F!.Game_Data[index].link}'));

                      },
                      child: ListTile(
                        title: Row(
                          children: [
                            Container(height: 50,width: 50,
                                child: ClipRRect(borderRadius: BorderRadius.circular(08),child: Image.asset("${F!.game[index].photo}"))),
                            SizedBox(width: 15,),
                            Column(
                              children: [
                                Text('${F!.game[index].appname}'),
                                SizedBox(height: 3,),
                                Text('${F!.game[index].star as String} ★',style: TextStyle(fontSize: 15,color: Color(
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

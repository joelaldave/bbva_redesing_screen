import 'package:flutter/material.dart';

import 'package:bbva_redesing_app/src/data/data.dart';
import 'package:bbva_redesing_app/src/models/user.dart';
import 'package:bbva_redesing_app/src/widgets/IconAppbar.dart';
import 'package:bbva_redesing_app/src/widgets/card_visa.dart';
import 'package:bbva_redesing_app/src/widgets/icon_list_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User usuario = obtenerDatos();

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.black26,
                offset: Offset(0, -1),
                //spreadRadius: 2
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_circle_up,
                  color: Color(0xff004481),
                  size: 30,
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff004481)),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_box,
                  color: Color(0xff87A7C4),
                  size: 30,
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.library_add,
                  color: Color(0xff87A7C4),
                  size: 30,
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.messenger,
                  color: Color(0xff87A7C4),
                  size: 30,
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  width: double.infinity,
                  height: 240,
                  color: Color(0xff004481),
                  child: SafeArea(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: double.infinity,
                      height: 150,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 25,
                            width: 30,
                            child: IconAppBar(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Hola, ${usuario.name}',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage('assets/perfil2.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: queryData.size.height * 0.165,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                            spreadRadius: 2,
                          )
                        ],
                        color: Colors.white,
                      ),
                      height: 180,
                      width: queryData.size.width * 0.92,
                      //color: Colors.red,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'TUS CUENTAS',
                                style: TextStyle(
                                    color: Color(0xff004481),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.more_horiz,
                                size: 40,
                                color: Color(0xffBBCDDD),
                              ),
                            ],
                          ),
                          ListTile(
                            visualDensity: VisualDensity.compact,
                            enabled: true,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 35),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xffd3dbe2),
                            ),
                            subtitle: Text(
                              '${usuario.cards[0].numberCard}',
                              style: TextStyle(
                                  color: Color(0xffa4b5c6),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            title: Text(
                              '${usuario.account[0].data}',
                              style: TextStyle(
                                  color: Color(0xff64A1D0),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          ListTile(
                            visualDensity: VisualDensity.compact,
                            enabled: true,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 35),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xffd3dbe2),
                            ),
                            subtitle: Text(
                              '${usuario.cards[0].numberCard}',
                              style: TextStyle(
                                  color: Color(0xffa4b5c6),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            title: Text(
                              '${usuario.account[0].data}',
                              style: TextStyle(
                                  color: Color(0xff64A1D0),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 130,
                      width: queryData.size.width,
                      color: Colors.white,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          IconsListView(
                            icon: Icons.add,
                            text: 'Oportunidades',
                            color: Color(0xffF7893A),
                          ),
                          IconsListView(
                            icon: Icons.compare_arrows,
                            text: 'Transferir',
                            color: Color(0xff4CABCE),
                          ),
                          IconsListView(
                            icon: Icons.monetization_on_outlined,
                            text: 'Retiro sin Tarjeta',
                            color: Color(0xff49D17C),
                          ),
                          IconsListView(
                            icon: Icons.widgets,
                            text: 'Pagar Servicios',
                            color: Color(0xff735FDA),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: queryData.size.height * 0.32,
                      width: queryData.size.width,
                      color: Colors.white,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 35),
                                    height: 20,
                                    child: Text(
                                      'Tus Tarjetas',
                                      style: TextStyle(
                                          color: Color(0xff004481),
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CardVisa(
                                        assetCard: 'assets/logo_white.png',
                                        assetCardV: 'assets/visa2.png',
                                        backgroundColor: Color(0xff004481),
                                        textColor: Colors.white,
                                      ),
                                      RotatedBox(
                                        quarterTurns: -1,
                                        child: CardVisa(
                                          assetCard: 'assets/logo.png',
                                          assetCardV: 'assets/visa.png',
                                          backgroundColor: Colors.white,
                                          textColor: Color(0xff004481),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Positioned(
                                top: queryData.size.height * 0.229,
                                left: 10,
                                child: Container(
                                  width: 230,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.credit_card_outlined,
                                              color: Color(0xff004481),
                                            ),
                                            Text(
                                              'Tarjeta digital',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff004481),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              'Descativar',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff004481),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Icon(
                                                Icons.toggle_off,
                                                color: Color(0xff707B9B),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

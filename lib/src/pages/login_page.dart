import 'package:bbva_redesing_app/src/data/data.dart';
import 'package:bbva_redesing_app/src/models/user.dart';
import 'package:bbva_redesing_app/src/widgets/IconAppbar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User usuario = obtenerDatos();
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: Color(0xff004481), width: 10, style: BorderStyle.solid),
          ),
        ),
        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: double.maxFinite,

                //color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: IconAppBar(
                        color: Color(0xff004481),
                        //Color(0xff004481)
                      ),
                      flex: 1,
                    ),
                    Expanded(
                        flex: 10,
                        child: Align(
                          alignment: Alignment.center,
                          child: Image(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/logo.png'),
                            height: 40,
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 150,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/perfil2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff004481),
                          child: Icon(
                            Icons.compare_arrows,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Hola, ${usuario.name}',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff004481),
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '¿Que tal tu día hoy?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff889FB4),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 45),
                child: InputTextPass(),
              ),
              Container(
                margin: EdgeInsets.only(top: 45),
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListItems(
                      icon: Icons.shield,
                      text: Text(
                        'Token móvil',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff004481),
                        ),
                      ),
                    ),
                    ListItems(
                      icon: Icons.qr_code_scanner_outlined,
                      text: Column(children: [
                        Text(
                          'Operación',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xff004481),
                          ),
                        ),
                        Text(
                          'QR + CoDi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xff004481),
                          ),
                        ),
                      ]),
                    ),
                    ListItems(
                      icon: Icons.add_ic_call_outlined,
                      text: Text(
                        'Línea BBVA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff004481),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    ));
  }
}

class ListItems extends StatelessWidget {
  final IconData icon;
  final Widget text;

  const ListItems({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.topLeft,
          width: 60,
          child: Icon(
            this.icon,
            color: Color(0xff004481),
            size: 40,
          ),
        ),
        this.text,
      ],
    );
  }
}

class InputTextPass extends StatefulWidget {
  const InputTextPass({
    Key key,
  }) : super(key: key);

  @override
  _InputTextPassState createState() => _InputTextPassState();
}

class _InputTextPassState extends State<InputTextPass> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            obscureText: visible ? true : false,
            keyboardType: TextInputType.visiblePassword,
            cursorColor: Color(0xff004481),
            style: TextStyle(
              color: Color(0xff004481),
              fontWeight: FontWeight.w900,
              fontSize: 20,
              letterSpacing: 4.0,
            ),
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  visible = !visible;
                  setState(() {});
                },
                child: Icon(
                  visible
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
              labelText: 'Contraseña',
              labelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.0,
              ),
              counterStyle: TextStyle(
                color: Color(0xff004481),
              ),
            ),
            onChanged: (_) {},
          ),
          Container(
              height: 45,
              alignment: Alignment.bottomCenter,
              child: Text(
                'Olvidé la contraseña',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                  color: Color(0xff004481),
                ),
              ))
        ],
      ),
    );
  }
}

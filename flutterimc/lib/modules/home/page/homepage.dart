import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:wheel_slider/wheel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double altura = 1.50;
  double peso = 50;

  bool isanimate = true;

  setIsanimate() {
    setState(() {
      isanimate = !isanimate;
    });
  }

  onAltura(val) {
    setState(() {
      altura = val / 100;
    });
  }

  onPeso(val) {
    setState(() {
      peso = val / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xfff8f9fc),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'IMC calculadora',
                style: GoogleFonts.staatliches(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.justify,
                  "O IMC (Índice de Massa Corporal) mede a relação entre peso e altura para avaliar a condição física geral, indicando se alguém está abaixo do peso, com peso saudável, com sobrepeso ou obeso.",
                  style: GoogleFonts.robotoCondensed(),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: setIsanimate,
                      child: Animate(
                        effects: [],
                        child: AnimatedContainer(
                          duration: Duration(microseconds: 2),
                          width: isanimate ? width * 0 : width * 1,
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 100,
                                backgroundColor: Colors.pink[50],
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.circle(),
                                      depth: -300,
                                      lightSource: LightSource.topLeft,
                                      color: Colors.grey[100]),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.pink[50],
                                    radius: 95,
                                    child: SizedBox(
                                      width: 250,
                                      child: Stack(
                                        children: [
                                          AnimatedPositioned(
                                            duration: Duration(seconds: 2),
                                            right: !isanimate ? -40 : -100,
                                            bottom: 50,
                                            child: SizedBox(
                                              width: 100,
                                              child: Image.asset(
                                                  "assets/image/3d-fluency-oak-tree.png"),
                                            ),
                                          ),
                                          AnimatedPositioned(
                                            duration: Duration(seconds: 2),
                                            right: !isanimate ? -10 : -40,
                                            bottom: 40,
                                            child: SizedBox(
                                              width: 60,
                                              child: Image.asset(
                                                  "assets/image/casual-life-3d-young-man-standing-with-bicycle-behind-his-back.png"),
                                            ),
                                          ),
                                          Image.asset(
                                              "assets/image/casual-life-3d-young-woman-meditating-while-holding-pink-tablet-and-stylus.png"),
                                          AnimatedPositioned(
                                            duration: Duration(seconds: 3),
                                            left: !isanimate ? -10 : -100,
                                            top: 0,
                                            child: SizedBox(
                                              width: 70,
                                              child: Image.asset(
                                                  "assets/image/3d-fluency-sakura.png"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text("feminino")
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: setIsanimate,
                      child: AnimatedContainer(
                        width: isanimate ? width * 1 : width * 0,
                        duration: Duration(microseconds: 2),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 100,
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shape: NeumorphicShape.concave,
                                    boxShape: NeumorphicBoxShape.circle(),
                                    depth: -300,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.grey[100]),
                                child: CircleAvatar(
                                  radius: 95,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Container(
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      width: 250,
                                      child: Stack(
                                        children: [
                                          AnimatedPositioned(
                                            duration: Duration(seconds: 2),
                                            right: isanimate ? -40 : -100,
                                            child: SizedBox(
                                              width: 110,
                                              child: Image.asset(
                                                  "assets/image/3d-fluency-oak-tree.png"),
                                            ),
                                          ),
                                          AnimatedPositioned(
                                            duration: Duration(seconds: 3),
                                            right: isanimate ? -10 : -20,
                                            bottom: 50,
                                            child: SizedBox(
                                              width: 50,
                                              child: Image.asset(
                                                  "assets/image/casual-life-3d-woman-sitting-on-bicycle-ready-to-ride-1.png"),
                                            ),
                                          ),
                                          Image.asset(
                                              "assets/image/casual-life-3d-young-man-sitting-cross-legged-and-looking-at-smartphone.png"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text("masculino")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          SizedBox(
                            width: width,
                            child: WheelSlider(
                              customPointer: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.white,
                                          child: Text(
                                            "$peso",
                                            style: TextStyle(fontSize: 10),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              squeeze: 2,
                              totalCount: 10000,
                              initValue: 5000,
                              onValueChanged: (val) => onPeso(val),
                            ),
                          ),
                          Card(
                            elevation: 3,
                            child: Container(
                              height: 50,
                              width: 180,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    child: SizedBox(
                                      width: 30,
                                      child: Image.asset(
                                          "assets/image/3d-fluency-scale.png"),
                                    ),
                                  ),
                                  Text(
                                    "Peso em Kg",
                                    style: GoogleFonts.robotoCondensed(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          WheelSlider(
                            //lineColor: ,
                            customPointer: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.white,
                                        child: Text(
                                          "$altura",
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            totalCount: 300,
                            initValue: 150,
                            onValueChanged: (val) => onAltura(val),
                          ),
                          Card(
                            elevation: 3,
                            child: Container(
                              height: 50,
                              width: 180,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    child: SizedBox(
                                      width: 30,
                                      child: Image.asset(
                                          "assets/image/3d-fluency-sewing-tape-measure.png"),
                                    ),
                                  ),
                                  Text(
                                    "Altura em metros",
                                    style: GoogleFonts.robotoCondensed(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 48.0),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: SizedBox(
                              width: 250,
                              child: Center(
                                  child: Text(
                                "Calcular",
                              )))),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

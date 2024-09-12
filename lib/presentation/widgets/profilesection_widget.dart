import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/image_show_widget.dart';

class ProfileSectionWidget extends StatelessWidget {
  const ProfileSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Texto a la izquierda
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "WELCOME TO MY WORLD",
                style: TextStyle(fontSize: 18.dp),
              ),
              SizedBox(height: 5.dp),
              Text(
                "I AM VICTOR CABRIA",
                style:
                    TextStyle(fontSize: 36.dp, fontWeight: FontWeight.bold),
              ),
              Text(
                "a MOBILE DEVELOPER",
                style:
                    TextStyle(fontSize: 36.dp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 18.dp),
              SizedBox(
                width: 400.dp,
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta, consecuenciar. Dignissimos nobis ipsam magni sequi labore tenetur, dolor repudiandae deserunt perspiciatis mollitia.",
                  style: TextStyle(fontSize: 16.dp),
                ),
              ),
              SizedBox(height: 25.dp),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.pinkAccent, // Color del borde
                        width: 2.0, // Grosor del borde
                      ),
                      borderRadius:
                          BorderRadius.circular(30.0), // Borde redondeado
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0.dp, vertical: 10.0.dp),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.download, color: Colors.pinkAccent),
                          SizedBox(
                              width: 8.0.dp), // Espacio entre ícono y texto
                          Text(
                            "Download CV",
                            style: TextStyle(
                              color: Colors.pinkAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.dp),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.pinkAccent, // Color del borde
                        width: 2.0, // Grosor del borde
                      ),
                      borderRadius:
                          BorderRadius.circular(30.0), // Redondeo de bordes
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Acción del botón
                      },
                      icon: const Icon(FontAwesomeIcons.github),
                      color: Colors.pinkAccent,
                    ),
                  ),
                  SizedBox(width: 15.dp),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.pinkAccent, // Color del borde
                        width: 2.0, // Grosor del borde
                      ),
                      borderRadius:
                          BorderRadius.circular(30.0), // Redondeo de bordes
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Acción del botón
                      },
                      icon: const Icon(FontAwesomeIcons.whatsapp),
                      color: Colors.pinkAccent,
                    ),
                  ),
                  SizedBox(width: 15.dp),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.pinkAccent, // Color del borde
                        width: 2.0, // Grosor del borde
                      ),
                      borderRadius:
                          BorderRadius.circular(30.0), // Redondeo de bordes
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Acción del botón
                      },
                      icon: const Icon(FontAwesomeIcons.linkedin),
                      color: Colors.pinkAccent,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        // Imagen a la derecha
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerRight,
            child: ImageShowWidget(
              isAsset: true,
              image: "lib/assets/png/perfil.png",
              width: 300.w,
              height: 400.w,
            ),
          ),
        ),
      ],
    );
  }
}

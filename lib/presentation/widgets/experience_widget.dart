import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/image_show_widget.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Texto a la izquierda
        Flexible(
          // Cambiado a Flexible en lugar de Expanded
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.dp),
              Text(
                "WELCOME TO MY WORLD",
                style: TextStyle(fontSize: 18.dp),
              ),
              SizedBox(height: 5.dp),
              Text(
                "I AM VICTOR CABRIA",
                style: TextStyle(fontSize: 36.dp, fontWeight: FontWeight.bold),
              ),
              Text(
                "a MOBILE DEVELOPER",
                style: TextStyle(fontSize: 36.dp, fontWeight: FontWeight.bold),
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
                        color: Colors.pinkAccent,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0.dp, vertical: 10.0.dp),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.download, color: Colors.pinkAccent),
                          SizedBox(width: 8.0.dp),
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
                  _socialIconButton(FontAwesomeIcons.github),
                  SizedBox(width: 10.dp),
                  _socialIconButton(FontAwesomeIcons.whatsapp),
                  SizedBox(width: 10.dp),
                  _socialIconButton(FontAwesomeIcons.linkedin),
                ],
              ),
            ],
          ),
        ),
        // Imagen a la derecha
        /*  Flexible(
          flex: 1,
          child: Align(
            alignment: Alignment.centerRight,
            child: ImageShowWidget(
              isAsset: true,
              image: "lib/assets/png/perfil-removebg-preview.png",
              width: 300.w,
              height: 400.w,
            ),
          ),
        ), */
      ],
    );
  }

  // Crear un widget para evitar repetir código
  Widget _socialIconButton(IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.pinkAccent,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: IconButton(
        onPressed: () {
          // Acción del botón
        },
        icon: Icon(iconData),
        color: Colors.pinkAccent,
      ),
    );
  }
}

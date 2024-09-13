import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/image_show_widget.dart'; // Assuming this is your widget to show images

class ProfileSectionWidget extends StatelessWidget {
  const ProfileSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
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
                  style: TextStyle(fontSize: 16.dp, color: Colors.white.withOpacity(0.8)),
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
                    style: TextStyle(fontSize: 16.dp, color: Colors.white.withOpacity(0.8) ),
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
          Flexible(
            flex: 1,
            child: ImageShowWidget(
              // Assuming ImageShowWidget displays the image you uploaded
              // Use the path to the image you uploaded
              width: 700.dp, // Adjust width as needed
              height: 400.dp,
              image:
                  'lib/assets/png/perfil-removebg-preview.png', // Adjust height as needed
            ),
          ),
        ],
      ),
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

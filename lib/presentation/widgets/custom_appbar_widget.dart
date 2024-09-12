import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:portafolio_flutter/presentation/widgets/image_show_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String logoText1; // Texto 1 del logo (WD)
  final String logoText2; // Texto 2 del logo (Warriors)
  final List<String> navItems; // Lista de elementos de navegación

  CustomAppBar({
    Key? key,
    required this.logoText1,
    required this.logoText2,
    required this.navItems,
  })  : preferredSize = Size.fromHeight(80.dp),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black, // Fondo oscuro
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4.dp,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.dp, vertical: 10.dp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo a la izquierda
            ImageShowWidget(
              isAsset: true,
              image: logoText2,
              width: 100.69.dp,
              height: 50.94.dp,
            ), 
            // Menú de navegación a la derecha
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  navItems.map((item) => _buildNavItem(context, item)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  // Widget para construir los elementos del menú
  Widget _buildNavItem(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.dp),
      child: InkWell(
        onTap: () {
          // Agrega tu lógica de navegación aquí
          print('$title button pressed');
        },
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white, // Color del texto de los enlaces
            fontSize: 16.dp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

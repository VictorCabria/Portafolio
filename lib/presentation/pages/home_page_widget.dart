import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:portafolio_flutter/presentation/pages/root_widget.dart';
import '../../domain/locator.dart';
import '../controllers/home_page_view_model.dart';
import '../widgets/custom_appbar_widget.dart';
import '../widgets/experience_widget.dart';
import '../widgets/profilesection_widget.dart';

class NewHomeWidget extends LocalRootWidget<NewHomeViewModel> {
  NewHomeWidget({super.key}) : super(getIt());

  @override
  Widget widget(NewHomeViewModel model, BuildContext context) {
    return withLoading(
      body: Scaffold(
        extendBodyBehindAppBar: true, // Extiende el cuerpo detrás del AppBar
        appBar: CustomAppBar(
          logoText1: "TODOS",
          logoText2: "lib/assets/png/LOGO-01.png",
          navItems: ["Home", "About", "Services", "Blog", "Contact"],
        ),
        body: Stack(
          children: [
            // GIF as background
            Positioned.fill(
              child: Image.asset(
                'lib/assets/gif/Gif_De_Estrellas.gif', // Reemplaza con el path de tu GIF local
                fit: BoxFit.cover, // Hace que el GIF cubra todo el fondo
              ),
            ),
            // Content on top of the GIF
            Center(
              child: Container(
               padding: EdgeInsets.symmetric(vertical: 6.w, horizontal: 6.w), 
                constraints: BoxConstraints(
                  maxWidth: 1150.dp,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ProfileSectionWidget(),
                      ExperienceWidget(),
                    ],
                  ),
                ),
              ),
              
            ),
            
          ],
        ),
      ),
      model: model,
      context: context,
    );
  }
}



/* class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final NewHomeViewModel model;
  final Size screenSize;

  CustomAppBar({Key? key, required this.model, required this.screenSize})
      : preferredSize = Size.fromHeight(80.dp),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.dp),
            bottomRight: Radius.circular(8.dp),
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withOpacity(0.15),
              offset: Offset(0.dp, 1.dp),
              blurRadius: 8.dp,
              spreadRadius: 0.dp,
            ),
          ],
        ),
        child: AppBar(
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          title: Container(
            padding: EdgeInsets.only(top: 25.dp),
            constraints: BoxConstraints(
              maxWidth: 720.dp,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  ImageShowWidget(
                  isAsset: true,
                  image: 'lib/assets/png/LOGO-01.png',
                  width: 100.69.dp,
                  height: 50.94.dp,
                ), 
                Flexible(
                  flex: 1,
                  child: SizedBox(width: 400.dp),
                ),
                InkWell(
                  child: Row(
                    children: [
                      if (screenSize.width > 350.dp)
                        Container(
                          child: Text(
                            "Purba",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.end,
                            maxLines: 1,
                            style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 16.dp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF303133)),
                          ),
                        ),
                      SizedBox(
                        width: 12.dp,
                      ),
                      /* Icon(
                        Icons.account_circle,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ), */
                    ],
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leadingWidth: 20.dp + 64.dp,
          elevation: 0,
          toolbarHeight: 60.dp,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.dp),
              bottomRight: Radius.circular(8.dp),
            ),
          ),
          titleSpacing: 20.dp,
        ),
      ),
    );
  }
}
 */
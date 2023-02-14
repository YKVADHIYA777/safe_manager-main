import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safe_manager/presentation/components/components.dart';
import 'package:safe_manager/presentation/themes/themes.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeAboutScreen extends StatelessWidget {
  const HomeAboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextCustom(
          text: 'About',
          isTitle: true,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
        leading: IconButton(
            splashRadius: 20,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 22)),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/logo-white.png', height: 100.0),
            const SizedBox(height: 10.0),
            const TextCustom(
              text: 'Data Security',
              isTitle: true,
              fontWeight: FontWeight.bold,
              fontSize: 32,
              textAlign: TextAlign.center,
              color: ColorsFrave.primary,
            ),
            const SizedBox(height: 10.0),
            const TextCustom(
              text: 'V 1.0.0',
              isTitle: true,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    splashRadius: 20,
                    onPressed: () {
                      launchUrl(
                          Uri.parse(
                              'https://api.whatsapp.com/send?phone=919537872816'),
                          mode: LaunchMode.externalApplication);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                    )),
                IconButton(
                    splashRadius: 20,
                    onPressed: () {
                      launchUrl(
                          Uri.parse(
                              'https://www.instagram.com/yogesh_vadhiya/'),
                          mode: LaunchMode.externalApplication);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.pink,
                    )),
                IconButton(
                    splashRadius: 20,
                    onPressed: () {
                      launchUrl(
                          Uri.parse(
                              'https://twitter.com/YogeshVadhiya2?t=EoZqHZyvyfhaAg-DJeR-jg&s=08'),
                          mode: LaunchMode.externalApplication);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.cyan,
                    )),
              ],
            ),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}

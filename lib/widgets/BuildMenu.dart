import 'package:asynconf/models/DayPlanning.dart';
import 'package:asynconf/models/PartOfDay.dart';
import 'package:asynconf/views/DayPlanningView.dart';
import 'package:asynconf/views/Homescreen.dart';
import 'package:asynconf/views/Partners.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class BuildMenu extends StatelessWidget {
  const BuildMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            onTap: () {
              Get.to(const Homescreen());
            },
            leading: Icon(Icons.home_filled,
                size: 0.05.sh, color: Colors.white),
            title: Text(
              "Home",
              style: GoogleFonts.poppins(fontSize: 20.sp,  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Get.offAll(DayPlanningView(
                dayPlanning: DayPlanning(
                    "Jour 1", "27 Octobre 2022",
                    [
                      PartOfDay("12:30-13:00","assets/media/day1/1.png","Graven","Cérémonie d'ouverture de l'Asynconf 2022","OPENING"),
                      PartOfDay("13:00-13:30","assets/media/day1/2.jpg","Lior Chamla","Découverte du Golden Master - Dompter le code Legacy ?","ASTUCES"),
                      PartOfDay("13:30-14:00","assets/media/day1/3.jpg","Sergès Goma","Comment trouver LA bonne idée de projet personnel ?","SIDEPROJECT"),
                      PartOfDay("14:00-14:45","assets/media/day1/4.jpg","Hugo Duchene","Comment développer son business en tant que dev freelance après sa formation ?","FREELANCE"),
                      PartOfDay("15:00-15:30","assets/media/day1/5.png","Graven","Lancement du Tournoi d'Algo","TOURNOI"),
                      PartOfDay("15:30-16:00","assets/media/day1/6.jpg","Axel Paris","Le guide financier des jeunes actifs","FINANCE"),
                      PartOfDay("16:00-16:30","assets/media/day1/7.png","Coder pour changer de vie","Vivre du code en 2022-2023","METIER"),
                      PartOfDay("16:30-17:00","assets/media/day1/8.jpg","Freeze","Développez des applications discord puissantes et robustes en Dart avec Mineral","DISCORD"),
                      PartOfDay("17:00-17:30","assets/media/day1/9.jpg","Gaetan DE SMET","Introduction au language Javascript","JAVASCRIPT"),
                      PartOfDay("17:30-18:00","assets/media/day1/10.jpg","Damien Cavailles","git blame --no-offense","BLAME"),
                      PartOfDay("Report en cours","assets/media/day1/11.jpg","Defend Intelligence","A la découverte des IA génératif","IA"),
                    ]
                ),
              ));
            },
            leading: Icon(Icons.task_alt,
                size: 0.05.sh, color: Colors.white),
            title: Text(
              "Jour 1",
              style: GoogleFonts.poppins(fontSize: 20.sp,  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Get.offAll(
                  DayPlanningView(
                    dayPlanning: DayPlanning(
                        "Jour 2", "28 Octobre 2022",
                        [
                          PartOfDay("12:00-13:00","assets/media/day2/1.jpg","David Silvera","Créer une appli mobile Flutter pour l'Asynconf","MOBILE"),
                          PartOfDay("13:00-14:00","assets/media/day2/2.png","Jerry","Carte de France du marché de l'emploi dans le dev pour la fin 2022","METIER"),
                          PartOfDay("14:00-15:00","assets/media/day2/3.jpg","Thibault Houdon","Comment créer une application web moderne (style SPA) avec Django et HTMX","DJANGO"),
                          PartOfDay("15:30-16:00","assets/media/day2/4.jpg","Smarteo","De MakeCode à Python: prototyper la Ville du Fleur avec la carte micro:bit et ses extensions","ROBOT"),
                          PartOfDay("16:00-16:30","assets/media/day2/5.jpg","Hostinger","Hebergeur de services, web et infrastructures","HOSTING"),
                          PartOfDay("17:00-17:45","assets/media/day2/6.jpg","LN","Pourquoi Tailwind a été crée, avantages et conseils","WEB"),
                          PartOfDay("18:00-19:00","assets/media/day2/7.jpg","Come Bruneteau","Les Intelligences artificielles, les projets de demain","IA"),
                        ]
                    ),
                  )
              );
            },
            leading: Icon(Icons.task_alt,
                size: 0.05.sh, color: Colors.white),
            title: Text(
              "Jour 2",
              style: GoogleFonts.poppins(fontSize: 20.sp,  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Get.offAll(
                  DayPlanningView(
                    dayPlanning: DayPlanning(
                        "Jour 3", "29 Octobre 2022",
                        [
                          PartOfDay("10:00-10:30","assets/media/day3/1.jpg","Jelab","Initiation à Docker","DOCKER"),
                          PartOfDay("10:30-12:00","assets/media/day3/2.png","Graven","Quizz des developpeurs","EVENT"),
                          PartOfDay("13:00-13:30","assets/media/day3/3.jpg","Honoré Hounawanou","Suis-je légitime en informatique ?","DEVELOPPEMENT"),
                          PartOfDay("13:30-14:00","assets/media/day3/4.png","Evan Chazallon","Découverte du Web Scrapping","WEBSCRAPPING"),
                          PartOfDay("14:00-16:00","assets/media/day3/5.jpg","Jason Champagne","Les piliers de la programmation objet","POO"),
                          PartOfDay("18:30-19:00","assets/media/day3/6.jpg","Cocadmin","A la découverte du Cloud & Stockage","CLOUD"),
                        ]
                    ),
                  )
              );
            },
            leading: Icon(Icons.task_alt,
                size: 0.05.sh, color: Colors.white),
            title: Text(
              "Jour 3",
              style: GoogleFonts.poppins(fontSize: 20.sp,  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Get.offAll(Partners());
            },
            leading: Icon(Icons.dashboard,
                size: 0.05.sh, color: Colors.white),
            title: Text(
              "Partenaires",
              style: GoogleFonts.poppins(fontSize: 20.sp,  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              _launchUrl(Uri.parse("https://asynconf.fr/contact-us.html"));
            },
            leading: Icon(Icons.contact_page_outlined,
                size: 0.05.sh, color: Colors.white),
            title: Text(
              "Contact",
              style: GoogleFonts.poppins(fontSize: 20.sp,  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              "Come to join",
              style: GoogleFonts.poppins(fontSize: 16,  color: Colors.indigoAccent, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left : 20.0),
            child: Text(
              "POWERFUL DEVELOPERS",
              style: GoogleFonts.poppins(fontSize: 18,  color: Colors.indigoAccent, fontWeight: FontWeight.w600),
            ),
          ),

        ],
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
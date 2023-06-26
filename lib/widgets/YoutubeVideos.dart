import 'package:asynconf/models/Video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Video> videoUrls = [
      Video("https://youtu.be/8NTNEbjo96M", "INTRODUCTION AU MACHINE \n LEARNING"),
      Video("https://youtu.be/oKkILL8ypIw", "INTRODUCTION AU LANGAGE \n RUST"),
      Video("https://youtu.be/tGub45xU71s", "ETRE FREELANCE EN \n 2021. LE DECLIC"),
      Video("https://youtu.be/21z6Gw8UNQ0", "COMMENT TROUVER DE L'EMPLOI \n EN TANT QUE DÉVELOPPEUR JUNIOR ?"),
      Video("https://youtu.be/ZXzWuIbMP4E", "FAIRE UN CHATBOT AVEC \n MICROSOFT AZURE"),
      Video("https://youtu.be/cVzU6UQhiJY", "J'EXPLIQUE MON MÉTIER DE \n DÉVELOPPEUR À MA GRAND MÈRE."),
    ];

    return SizedBox(
      height: 0.2.sh,
      width: 1.sw,
      child: GridView.custom(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 1,
          crossAxisSpacing: 0.01.sh,
          mainAxisSpacing: 0,
          pattern: [
            const WovenGridTile(
              1,
              crossAxisRatio: 1,
              alignment: AlignmentDirectional.centerEnd,
            ),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
              (context, index) {
            String? videoUrl = videoUrls[index].link;
            String? videoId = getVideoIdFromUrl(videoUrl!);
            return InkWell(
              onTap: ()=> _launchUrl(Uri.parse(videoUrls[index].link!)),
              child: SizedBox(
                height: 0.1.sh,
                width: 0.3.sw,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network('https://img.youtube.com/vi/$videoId/0.jpg', fit: BoxFit.fill, width: 0.3.sw, height: 0.1.sh, filterQuality: FilterQuality.high,)),
                    Text(
                      videoUrls[index].title!,
                      style: GoogleFonts.poppins(fontSize: 10.sp, color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            );
          },
          childCount: videoUrls.length,
        ),
      ),
    );

  }
  String? getVideoIdFromUrl(String videoUrl) {
    final regExp = RegExp(r'(?<=v=|v\/|vi=|vi\/|youtu.be\/|embed\/|\/v\/|\/e\/|watch\?v=|youtube.com\/user\/[^#]*#([^\/]*?\/)*)[\w‌​\-\_]+');
    final match = regExp.firstMatch(videoUrl);
    if (match != null && match.groupCount >= 0) {
      return match.group(0);
    }
    return '';
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

}

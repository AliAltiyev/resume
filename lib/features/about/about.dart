import 'package:google_fonts/google_fonts.dart';
import 'package:resume/export.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
          child: Column(
        children: [
          Text(
            'I\'am Abdusselam. ',
            style: GoogleFonts.anton(
                textStyle: const TextStyle(fontSize: 48), color: context.primaryColor),
          ),
          const Gap(100),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  maxRadius: 200,
                  backgroundImage: AssetImage('me.jpeg'),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 1000,
                      child: Text(
                        '''I'm a Flutter Developer building digital solutions remotely from +15°C Minsk, Belarus.''',
                        style: GoogleFonts.anton(
                          textStyle:
                              const TextStyle(fontSize: 48, textBaseline: TextBaseline.ideographic),
                          color: context.primaryColor,
                        ),
                      ),
                    ),
                    const Gap(20),
                    SizedBox(
                      width: 1000,
                      child: Text(
                        '''Over the past 3 years, I've worked across mobile app development, web development, and OTT platforms. I’m proud to have contributed to several successful projects and helped scale digital experiences for diverse audiences.These days, I focus on developing feature-rich, high-performance apps at PythonOTT, an OTT platform enhancing the user experience of streaming services..''',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

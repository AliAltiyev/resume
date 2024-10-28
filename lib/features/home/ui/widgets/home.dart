import 'package:lottie/lottie.dart';
import 'package:resume/export.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                const Gap(20),
                SizedBox(
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            'Altyyev Abdusselam',
                            textStyle: const TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                        totalRepeatCount: 4,
                        pause: const Duration(milliseconds: 400),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      ),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          FadeAnimatedText(
                            'Flutter  ',
                            textStyle: const TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                          ),
                          FadeAnimatedText(
                            'Developer',
                            textStyle: const TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Divider(
                  color: context.primaryColor,
                  endIndent: 100,
                  indent: 100,
                ),
                Row(
                  children: [
                    SizedBox(
                      child: LottieBuilder.asset('mobile.json'),
                    ),
                    SizedBox(
                      width: 700,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cross-Platform Mobile App Developer (Android/iOS)',
                            style: Theme.of(context).textTheme.titleLarge,
                            textAlign: TextAlign.start,
                          ),
                          const Gap(20),
                          Text(
                            '''As a mobile developer, I create feature-rich Android and iOS apps using Flutter's cross-platform technology. My focus is on delivering intuitive user interfaces, optimizing performance,and ensuring consistent functionality across both platforms, all while reducing development time and costs.''',
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(100),
                Divider(
                  color: context.primaryColor,
                  endIndent: 300,
                  indent: 300,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 700,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Web Application Developer with Flutter',
                            style: Theme.of(context).textTheme.titleLarge,
                            textAlign: TextAlign.start,
                          ),
                          const Gap(20),
                          Text(
                            '''I build modern, responsive web applications using Flutter's web capabilities. From creating dynamic UIs to ensuring fast load times and accessibility, I develop web solutions that adapt beautifully across devices, offering a seamless user experience in desktop and mobile browsers.''',
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: LottieBuilder.asset('web.json'),
                    ),
                  ],
                ),
                const Gap(50),
                Divider(
                  color: context.primaryColor,
                  endIndent: 500,
                  indent: 500,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 500,
                      child: LottieBuilder.asset('tv.json'),
                    ),
                    SizedBox(
                      width: 300,
                      child: Column(
                        children: [
                          Text(
                            'Flutter Developer for Smart TV Applications',
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.start,
                          ),
                          const Gap(20),
                          Text(
                            '''With expertise in Flutter for Android TV and other smart TV platforms, I create TV apps with smooth navigation, remote control integration, and optimized UIs tailored for large screens. My TV applications provide an engaging and intuitive user experience for media consumption and other services.''',
                            style: Theme.of(context).textTheme.titleSmall,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Gap(100),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('LinkedIn'), Gap(20), Text('Instagram'), Gap(20), Text('GitHub')],
                ),
                Text(
                  '2024',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const Text('Ⓒ Altyyev Abdusselam , Minsk')
              ],
            )
          ],
        ),
      ),
    );
  }
}


/*
const Gap(50),
             
            
*/
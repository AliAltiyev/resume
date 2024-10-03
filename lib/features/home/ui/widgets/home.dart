import 'package:lottie/lottie.dart';
import 'package:resume/core/utils/cross_platform.dart';
import 'package:resume/export.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(20),
          SizedBox(
            height: 150,
            child: Column(
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
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: LottieBuilder.asset('mobile.json'),
                  ),
                  SizedBox(
                    width: 300,
                    child: Column(
                      children: [
                        Text(
                          'Cross-Platform Mobile App Developer (Android/iOS)',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          '''
                        As a mobile developer, I create feature-rich Android and iOS apps using Flutter's cross-platform technology.
                         My focus is on delivering intuitive user interfaces, optimizing performance,
                          and ensuring consistent functionality across both platforms, all while reducing development time and costs.''',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Gap(50),
              SizedBox(
                height: 300,
                child: LottieBuilder.asset('web.json'),
              )
            ],
          )
        ],
      ),
    );
  }
}

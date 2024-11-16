import 'package:resume/export.dart';

class AppBarAction extends StatelessWidget {
  const AppBarAction({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (child, animation) {
          return RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0).animate(animation),
            child: child,
          );
        },
        child: Provider.of<ThemeNotifier>(context).theme == ThemeData.light()
            ? const Icon(
                Icons.wb_sunny,
                key: Key('sunny'),
                color: Colors.black,
                size: 30,
              )
            : const Icon(
                Icons.brightness_2,
                key: Key('moon'),
                color: Colors.white,
                size: 30,
              ),
      ),
      onPressed: () {
        if (context.read<ThemeNotifier>().theme == ThemeData.light()) {
          context.read<ThemeNotifier>().setTheme(ThemeData.dark());
        } else {
          context.read<ThemeNotifier>().setTheme(ThemeData.light());
        }
      },
    );
  }
}

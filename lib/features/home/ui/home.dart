import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:resume/core_ui/widget/hover.dart';
import 'package:resume/export.dart';
import 'package:resume/features/about/about.dart';
import 'package:resume/features/home/ui/widgets/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List<TabModel> tabs = <TabModel>[
    TabModel(name: Column(children: [const Icon(Icons.home), Text(Constants.home)])),
    TabModel(
        name: Column(children: [const Icon(Icons.query_stats_outlined), Text(Constants.about)])),
    TabModel(
        name: Column(children: [const Icon(Icons.handshake_outlined), Text(Constants.skills)])),
    TabModel(name: Column(children: [const Icon(Icons.phone), Text(Constants.constacts)]))
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        actions: const [AppBarAction()],
      ),
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: LottieBuilder.asset('back.json'),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 400,
                          color: context.primaryColor.withOpacity(0.1))
                    ],
                    color: context.primaryColor.withOpacity(.02),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(color: context.primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TabBar(
                      dividerHeight: 0,
                      indicatorColor: Theme.of(context).colorScheme.primary,
                      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
                      indicatorWeight: 10,
                      indicatorSize: TabBarIndicatorSize.label,
                      controller: tabController,
                      tabs: tabs
                          .map((tab) => HoverBuilder(
                              builder: (isHover) => Tab(
                                    icon: tab.name,
                                    iconMargin: EdgeInsets.all(isHover ? 10 : 2),
                                  )))
                          .toList()),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 700,
              child: TabBarView(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  controller: tabController,
                  children: const [HomeView(), AboutPage()]),
            ),
          )
        ],
      ),
    );
  }
}

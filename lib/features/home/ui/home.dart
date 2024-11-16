import 'package:responsive_framework/responsive_framework.dart';
import 'package:resume/export.dart';
import 'package:resume/features/about/about.dart';
import 'package:resume/features/home/ui/widgets/home.dart';
import 'package:resume/features/skills/skills_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<TabModel> tabs = <TabModel>[
    TabModel(name: Column(children: [const Icon(Icons.home), Text(Constants.home)])),
    TabModel(name: Column(children: [const Icon(Icons.query_stats_outlined), Text(Constants.about)])),
    TabModel(
        name: Column(children: [const Icon(Icons.handshake_outlined), Expanded(child: Text(Constants.skillsvswork))])),
    TabModel(name: Column(children: [const Icon(Icons.phone), Text(Constants.constacts)])),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return WebLayout(tabController: tabController, tabs: tabs);
    } else {
      return Scaffold(
        drawer: const Drawer(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Altyyew Abdusselam'),
                Gap(100),
                ListTile(
                  title: Text("Home"),
                )
              ],
            ),
          ),
        ),
        key: _scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.list),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
          actions: const [AppBarAction()],
        ),
        body: const HomeView(),
        // ignore: prefer_const_constructors
      );
    }
  }
}

class WebLayout extends StatefulWidget {
  final TabController tabController;
  final List<TabModel> tabs;

  const WebLayout({
    super.key,
    required this.tabController,
    required this.tabs,
  });

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        actions: const [AppBarAction()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(spreadRadius: 1, blurRadius: 400, color: context.primaryColor.withOpacity(0.1))
                    ],
                    color: context.primaryColor.withOpacity(.02),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(color: context.primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TabBar(
                      indicatorPadding: const EdgeInsets.all(2),
                      dividerHeight: 0,
                      indicatorColor: Theme.of(context).colorScheme.primary,
                      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
                      indicatorWeight: 2,
                      indicatorSize: TabBarIndicatorSize.label,
                      controller: widget.tabController,
                      tabs: widget.tabs
                          .map((tab) => Tab(
                                icon: tab.name,
                              ))
                          .toList()),
                ),
              ),
            ),
            SizedBox(
              height: 700,
              child: TabBarView(
                  controller: widget.tabController,
                  children: [const HomeView(), const AboutPage(), const SkillsPage(), Container()]),
            )
          ],
        ),
      ),
    );
  }
}

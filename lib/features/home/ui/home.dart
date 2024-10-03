import 'package:resume/export.dart';
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
        name: Column(children: [const Icon(Icons.handshake_outlined), Text(Constants.skills)])),
    TabModel(
        name: Column(children: [const Icon(Icons.query_stats_outlined), Text(Constants.about)])),
    TabModel(name: Column(children: [const Icon(Icons.phone), Text(Constants.constacts)]))
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [AppBarAction()],
      ),
      body: SizedBox(
        height: 2000,
        child: Column(
          children: [
            const Gap(30),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(color: context.primaryColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TabBar(
                        dividerHeight: 0,
                        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
                        indicatorWeight: 10,
                        controller: tabController,
                        tabs: tabs.map((tab) => Tab(icon: tab.name)).toList()),
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 700,
              child: TabBarView(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  controller: tabController,
                  children: const [HomeView()]),
            )
          ],
        ),
      ),
    );
  }
}

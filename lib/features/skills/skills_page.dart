import 'package:flutter/material.dart';
import 'package:resume/core_ui/custom_painter.dart';
import 'package:resume/core_ui/widget/app_colors.dart';
import 'package:resume/domain/model/skills.dart';
import 'package:resume/domain/model/work_experience.dart';
import 'package:resume/export.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    final list = Skills.skills();
    final Size size = MediaQuery.of(context).size;
    final work = WorkExperience.workExperience();
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(children: [
        Text(
          'Work experience',
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        const Gap(20),
        SizedBox(
          height: 400,
          child: GridView.builder(
            itemCount: work.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10, crossAxisCount: 4, mainAxisExtent: 400),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    border: Border.all(color: AppColors.mainColor)),
                width: size.width / 5,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            maxRadius: 35,
                            backgroundImage: AssetImage(work[index].logo),
                          ),
                          const Gap(10),
                          Title(
                              color: Colors.white,
                              child: Text(work[index].organizationName))
                        ],
                      ),
                      const Gap(10),
                      Title(
                          color: Colors.white,
                          child: Text(work[index].position)),
                      const Gap(30),
                      Text(work[index].description),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            work[index].dateFrom,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const Gap(10),
                          const Expanded(child: Divider()),
                          const Gap(10),
                          Text(
                            work[index].dateUntil,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      )
                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       work[index].dateFrom,
                      //       style: Theme.of(context).textTheme.bodySmall,
                      //     ),
                      //     Padding(
                      //       padding: const EdgeInsets.only(
                      //           left: 30, top: 4, bottom: 4),
                      //       child: CustomPaint(
                      //           painter: DashedLineVerticalPainter(),
                      //           size: const Size(1, 200)),
                      //     ),
                      //     Text(
                      //       work[index].dateUntil,
                      //       style: Theme.of(context).textTheme.bodySmall,
                      //     ),
                      //   ],
                      // )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const Gap(80),
        Text(
          'Technologies',
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        const Gap(20),
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text('${index + 1}'),
                  const Spacer(),
                  Text(list[index].name),
                  const Spacer(),
                  FilledButton(
                      onPressed: () {},
                      child: Text(list[index].skillsLevel.name))
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: list.length),
      ]),
    ));
  }
}

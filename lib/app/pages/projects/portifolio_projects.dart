// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/app/controller/url_launcher_controller.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/widgets/section_title.dart';

import 'components/my_projects_card.dart';

class PortifolioProjects extends StatelessWidget {
  const PortifolioProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final CardController instance = Get.put(CardController());

    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: 'projects_title'.tr),
          SizedBox(
            width: 1110,
            child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                spacing: 10,
                runSpacing: 15,
                children: [
                  MyProjectsCard(
                      title: 'Ruined Kingdom',
                      description: 'rk_description'.tr,
                      extendedDescription: 'rk_extended_description'.tr,
                      onPressed: () => instance
                          .launchInWeb('${instance.toGithub}ruined_kingdom'),
                      imageSrc: 'assets/images/ruinedKingdom.png'),
                  MyProjectsCard(
                      title: 'Só Saladas',
                      description: 'saladas_description'.tr,
                      extendedDescription: 'saladas_extended_description'.tr,
                      onPressed: () => instance
                          .launchInWeb('${instance.toGithub}so_saladas'),
                      imageSrc: 'assets/images/soSaladas.png'),
                  MyProjectsCard(
                      title: 'Exclusive Diary',
                      description: 'diary_description'.tr,
                      extendedDescription: 'diary_extended_description'.tr,
                      onPressed: () => instance
                          .launchInWeb('${instance.toGithub}exclusive_diary'),
                      imageSrc: 'assets/images/exclusiveDiary.png'),
                  MyProjectsCard(
                      title: 'Vakinha Burguer',
                      description: 'vakinha_description'.tr,
                      extendedDescription: 'vakinha_extended_description'.tr,
                      onPressed: () => instance
                          .launchInWeb('${instance.toGithub}vakinha_burguer'),
                      imageSrc: 'assets/images/vakinhaBurger.png'),
                ]),
          ),
          SizedBox(height: context.percentHeight(.1)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oonzoo/modules/home/manager/home_manager.dart';
import 'package:oonzoo/modules/home/widgets/loading_widget.dart';
import 'package:oonzoo/modules/home/widgets/university_meta_data_card_widget.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeManager>(builder: (context, homeManager, child) {
      return Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            leadingWidth: 30,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              },
            ),
            title: const Text(
              'universities',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.black,
            actions: homeManager.message != null
                ? [
                    TextButton(
                      onPressed: () => homeManager.fetchAllCollegesDetails(),
                      child: const Text('Refresh'),
                    )
                  ]
                : null,
          ),
          body: homeManager.isLoading
              ? const Center(child: LoadingWidget())
              : homeManager.colleges != null
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: homeManager.colleges!.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: 20, top: index == 0 ? 20 : 0, right: 20, left: 20),
                          child: UniversitiyMetaDataCardWidget(
                            key: ValueKey(index),
                            domain: homeManager.colleges![index].domains.first,
                            alphaCode: homeManager.colleges![index].alphaTwoCode,
                            state: homeManager.colleges![index].stateProvince,
                            name: homeManager.colleges![index].name,
                            webpages: homeManager.colleges![index].webPages.first,
                          ),
                        );
                      },
                    )
                  : Text(homeManager.message ?? 'server error'));
    });
  }
}

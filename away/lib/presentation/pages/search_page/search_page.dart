import 'dart:async';

import 'package:away/config/constants.dart';
import 'package:away/cubit/search_cubit.dart';
import 'package:away/data/repositories/property_repository.dart';
import 'package:away/di/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  static const String routeName = "/search_page";
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchTextController = TextEditingController();
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    // FutureTODO: if next page is map, don't clear
    getIt<PropertyRepository>().autocompleteResults.clear();
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text("Your next stay"),
            border: Border.all(style: BorderStyle.none),
            backgroundColor: darkModeOn
                ? CupertinoColors.darkBackgroundGray
                : CupertinoColors.white,
            brightness: darkModeOn ? Brightness.dark : Brightness.light,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                  left: kMediumWidth * 3,
                  right: kMediumWidth * 3,
                  bottom: kMediumHeight),
              child: CupertinoSearchTextField(
                controller: _searchTextController,
                onSuffixTap: () {
                  // Clear results
                  getIt<PropertyRepository>().autocompleteResults.clear();
                },
                onChanged: (String value) {
                  if (value.length > 1) {
                    BlocProvider.of<SearchCubit>(context)
                        .autocompletePlaces(value, null);
                  }

                  if (value.length == 0) {
                    // Clear results
                    getIt<PropertyRepository>().autocompleteResults.clear();
                  }
                },
                onSubmitted: (String value) {
                  print('Submitted text: $value');
                },
              ),
            ),
          ),
          BlocConsumer<SearchCubit, SearchState>(listener: (context, state) {
            if (state is SearchRequestTapSuccess) {
              // navigate to map
            }
          }, builder: (context, state) {
            print(state);
            if (state is SearchRequestTapLoading) {
              return SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final result =
                      getIt<PropertyRepository>().autocompleteResults[index];
                  return ListTile(
                    title: Text(result.title),
                    subtitle: Text(result.secondaryText),
                    onTap: () {
                      BlocProvider.of<SearchCubit>(context)
                          .autocompletePlaces(null, result.placeID);
                    },
                  );
                },
                childCount:
                    getIt<PropertyRepository>().autocompleteResults.length,
              ),
            );
          })
        ],
      ),
    );
  }
}

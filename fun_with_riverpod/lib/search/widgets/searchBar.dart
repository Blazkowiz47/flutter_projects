import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/search/search.dart';

class SearchBar extends HookWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController search = useTextEditingController();

    return TextFormField(
      cursorColor: Colors.white,
      controller: search,
      style: TextStyle(
        fontSize: 19,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        hintText: "Search...",
        hintStyle: TextStyle(
          fontSize: 19,
          color: Colors.white,
        ),
      ),
      onFieldSubmitted: (value) {
        if (value.isNotEmpty) {
          context.read(queryResultProvider.notifier).clear();
          context
              .read(queryResultProvider.notifier)
              .getSearchResultsForKeyword(query: value.trim());
        }
      },
    );
  }
}

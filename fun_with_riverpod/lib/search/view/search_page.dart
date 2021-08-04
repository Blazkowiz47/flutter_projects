import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/repositories/repository.dart';
import '/search/search.dart';

class Search extends HookWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBarState = useProvider(isSearchSubmitted);
    return Scaffold(
      appBar: AppBar(
        title: appBarState.state ? const SearchBar() : const CustomTitle(),
        actions: [
          IconButton(
            onPressed: () {
              context.read(isSearchSubmitted).state = !appBarState.state;
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: ProviderListener(
        onChange: (context, StateController<CustomException?> exception) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(exception.state!.message!),
            ),
          );
        },
        provider: exceptionProvider,
        child: const VideoList(),
      ),
    );
  }
}

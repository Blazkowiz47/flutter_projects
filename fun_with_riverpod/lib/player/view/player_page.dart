import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/player/player.dart';
import '/repositories/repository.dart';

class Player extends HookWidget {
  const Player({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ProviderListener(
          onChange: (context, StateController<CustomException?> exception) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(exception.state!.message!),
              ),
            );
          },
          provider: exceptionProvider,
          child: const CustomVideoPlayer(),
        ),
      ),
    );
  }
}

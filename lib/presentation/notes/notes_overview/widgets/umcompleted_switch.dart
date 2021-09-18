import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/application/notes/note_watcher/note_watcher_cubit.dart';

class UncompletedSwitch extends StatelessWidget {
  const UncompletedSwitch({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<NoteWatcherCubit, NoteWatcherState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loadSuccess: (_, isWatchingAll) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: InkResponse(
                onTap: () {
                  if (isWatchingAll) {
                    //debugPrint("watchUncompleted");
                    context.read<NoteWatcherCubit>().watchUncompleted();
                  } else {
                    //debugPrint("watchAll");
                    context.read<NoteWatcherCubit>().watchAll();
                  }
                },
                child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 100),
                    transitionBuilder: (child, animation) =>
                        ScaleTransition(scale: animation, child: child),
                    child: isWatchingAll
                        ? const Icon(
                            Icons.indeterminate_check_box,
                            key: Key("indeterminate_check_box"),
                          )
                        : const Icon(
                            Icons.check_box_outline_blank,
                            key: Key("check_box_outline_blank"),
                          )),
              ),
            ),
          );
        },
      );
}

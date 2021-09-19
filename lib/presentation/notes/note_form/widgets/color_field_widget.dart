import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_todo/application/notes/note_form/note_form_cubit.dart';
import 'package:flutter_todo/presentation/routes/router.gr.dart';
import 'package:flutter_todo/tools/extension.dart';

class ColorField extends StatelessWidget {
  const ColorField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<NoteFormCubit, NoteFormState>(
            buildWhen: (p, c) => p.note.color != c.note.color,
            builder: (context, state) {
              return Material(
                color: state.note.color.getOrCrash(),
                elevation: 4,
                shape: const CircleBorder(),
                child: const SizedBox(height: 50, width: 50),
              );
            },
          ),
          ElevatedButton(
            onPressed: () => _pickColor(
              context,
              context.read<NoteFormCubit>(),
            ),
            child: Text(context.s.pickAColor),
          ),
        ],
      ),
    );
  }

  void _pickColor(BuildContext context, NoteFormCubit noteFormCubit) =>
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(context.s.pickAColor),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ColorPicker(
                enableAlpha: false,
                showLabel: false,
                pickerColor: noteFormCubit.state.note.color.getOrCrash(),
                onColorChanged: (color) {
                  noteFormCubit.changeColor(color);
                },
              ),
              TextButton(
                onPressed: () =>
                    context.router.popUntilRouteWithName(NoteFormRoute.name),
                child: Text(context.s.select.toUpperCase()),
              ),
            ],
          ),
        ),
      );
}

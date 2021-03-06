import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/application/auth/auth_bloc.dart';

import '../../../application/auth/sing_in_form/sign_in_form_bloc.dart';
import '../../../generated/l10n.dart';
import '../../routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {
            context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
            if (!state.isSubmitting) {
              context.router.replace(const NotesOverviewRoute());
            }
          },
          (f) => FlushbarHelper.createError(
            message: f.map(
              cancelByUser: (_) => S.of(context).cancelByUser,
              serverError: (_) => S.of(context).serverError,
              emailAlreadyInUse: (_) => S.of(context).emailAlreadyInUse,
              invalidInputs: (_) => S.of(context).invalidInputs,
            ),
          ).show(context),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrors
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const FractionallySizedBox(
                widthFactor: 0.3,
                child: Image(
                  image: AssetImage('assets/to-do-list.png'),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: S.of(context).email,
                  ),
                  autocorrect: false,
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                        SignInFormEvent.emailChange(value),
                      ),
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => S.of(context).invalidEmail,
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    labelText: S.of(context).passwaord,
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                        SignInFormEvent.passwordChange(value),
                      ),
                  validator: (_) =>
                      context.read<SignInFormBloc>().state.password.value.fold(
                            (f) => f.maybeMap(
                              shortPassword: (_) => S.of(context).shortPassword,
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithEmail(),
                            );
                      },
                      child: Text(S.of(context).singIn.toUpperCase()),
                    ),
                    TextButton(
                      onPressed: () {
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent.registerWithEmail(),
                            );
                      },
                      child: Text(S.of(context).register.toUpperCase()),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(
                        const SignInFormEvent.signInWithGoogle(),
                      );
                },
                child: Text(
                  S.of(context).singInWithGoogle.toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              if (state.isSubmitting) ...[
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  child: const LinearProgressIndicator(),
                )
              ]
            ],
          ),
        );
      },
    );
  }
}

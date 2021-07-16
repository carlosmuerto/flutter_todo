import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/sing_in_form/sign_in_form_bloc.dart';
import '../../../generated/l10n.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (f) {
              FlushbarHelper.createError(
                message: f.map(
                  cancelByUser: (_) => S.of(context).cancelByUser,
                  serverError: (_) => S.of(context).serverError,
                  emailAlreadyInUse: (_) => S.of(context).emailAlreadyInUse,
                  invalidInputs: (_) => S.of(context).invalidInputs,
                ),
              ).show(context);
            },
            (_) {},
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrors
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  S.of(context).todo,
                  style: const TextStyle(fontSize: 32),
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
            ],
          ),
        );
      },
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i12;
import 'application/auth/sing_in_form/sign_in_form_bloc.dart' as _i11;
import 'application/notes/note_actor/note_actor_cubit.dart' as _i7;
import 'application/notes/note_form/note_form_cubit.dart' as _i9;
import 'application/notes/note_watcher/note_watcher_cubit.dart' as _i10;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'domain/notes/i_note_repository.dart' as _i8;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'infrastructure/core/firebase_injectable_module.dart' as _i14;
import 'infrastructure/notes/note_repository.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i5.IAuthFacade>(() =>
      _i6.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i4.GoogleSignIn>()));
  gh.factory<_i7.NoteActorCubit>(
      () => _i7.NoteActorCubit(get<_i8.INoteRepository>()));
  gh.factory<_i9.NoteFormCubit>(
      () => _i9.NoteFormCubit(get<_i8.INoteRepository>()));
  gh.factory<_i10.NoteWatcherCubit>(
      () => _i10.NoteWatcherCubit(get<_i8.INoteRepository>()));
  gh.factory<_i11.SignInFormBloc>(
      () => _i11.SignInFormBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i5.IAuthFacade>()));
  gh.singleton<_i8.INoteRepository>(_i13.FirebaseFirestoreNoteRepository());
  return get;
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}

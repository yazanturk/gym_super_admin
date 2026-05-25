import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/utils/usecase.dart';
import '../../domain/entities/admin_user.dart';
import '../../domain/usecases/sign_in_usecase.dart';
import '../../domain/usecases/sign_out_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInUseCase _signIn;
  final SignOutUseCase _signOut;

  AuthBloc(this._signIn, this._signOut) : super(const AuthState.initial()) {
    on<_SignIn>(_onSignIn);
    on<_SignOut>(_onSignOut);
    on<_CheckAuth>(_onCheckAuth);
  }

  Future<void> _onSignIn(_SignIn event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _signIn(
      SignInParams(email: event.email, password: event.password),
    );
    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (user) => emit(AuthState.authenticated(user)),
    );
  }

  Future<void> _onSignOut(_SignOut event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _signOut(NoParams());
    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (_) => emit(const AuthState.unauthenticated()),
    );
  }

  void _onCheckAuth(_CheckAuth event, Emitter<AuthState> emit) {
    // Check handled by router redirect via Supabase session
    emit(const AuthState.unauthenticated());
  }
}

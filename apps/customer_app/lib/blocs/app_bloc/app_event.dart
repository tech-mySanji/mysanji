import 'package:customer_app/model/user_details_model.dart';
import 'package:equatable/equatable.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class AppInitialEvent extends AppEvent {
  const AppInitialEvent();

  @override
  List<Object> get props => [];
}

class CreateUserDetailsEvent extends AppEvent {
  final UserDetailsModel userDetails;

  const CreateUserDetailsEvent(this.userDetails);

  @override
  List<Object> get props => [userDetails];
}

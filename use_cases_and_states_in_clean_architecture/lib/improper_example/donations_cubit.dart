import 'package:flutter_bloc/flutter_bloc.dart';
import 'create_donation_use_case.dart';

import 'donations_state.dart';

class DonationsCubit extends Cubit<DonationsState> {
  final donateUseCase = CreateDonationUseCase();
  DonationsCubit() : super(DonationsInitial());

  donate({
    required int amount,
    required String personIdToDonateTo,
  }) async {
    emit(DonationsLoadInProgress());

    donateUseCase(amount: amount, personIdToDonateTo: personIdToDonateTo)
        .then((_) => emit(DonationsLoadSuccess()))
        .catchError((_) => emit(DonationsLoadFailure()));
  }
}

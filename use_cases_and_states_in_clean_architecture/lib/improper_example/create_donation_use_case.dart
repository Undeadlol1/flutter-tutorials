import 'package:use_cases_and_states_in_clean_architecture/improper_example/create_donation_repository.dart';

class CreateDonationUseCase {
  Future<void> call({
    required int amount,
    required String personIdToDonateTo,
  }) async {
    await CreateDonationRepository.call(
      amount: amount,
      personIdToDonateTo: personIdToDonateTo,
    );
  }
}

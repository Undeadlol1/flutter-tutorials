import 'package:use_cases_and_states_in_clean_architecture/improper_example/create_donation_repository.dart';

class CreateDonationUseCase {
  Future<void> call() async {
    await CreateDonationRepository.call();
  }
}

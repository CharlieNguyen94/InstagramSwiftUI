import Foundation

class RegistrationViewModel: ObservableObject {
	@Published var username = ""
	@Published var email = ""
	@Published var password = ""

	func createUser() async throws {
		try await AuthService.shared.createuser(email: email, password: password, username: username)
	}
}

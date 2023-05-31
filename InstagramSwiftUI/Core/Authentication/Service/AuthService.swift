import Foundation
import FirebaseAuth

class AuthService {

	@Published var userSession: FirebaseAuth.User?

	static let shared = AuthService()

	init() {
		self.userSession = Auth.auth().currentUser
	}

	@MainActor
	func login(withEmail email: String, password: String) async throws {
		do {
			let result = try await Auth.auth().signIn(withEmail: email, password: password)
			self.userSession = result.user
		} catch {
			print(error.localizedDescription)
		}
	}

	@MainActor
	func createuser(email: String, password: String, username: String) async throws {
		do {
			let result = try await Auth.auth().createUser(withEmail: email, password: password)
			self.userSession = result.user
		} catch {
			print(error.localizedDescription)
		}
	}

	func loadUserData() async throws {

	}

	func signOut() {
		try? Auth.auth().signOut()
		self.userSession = nil
	}
}

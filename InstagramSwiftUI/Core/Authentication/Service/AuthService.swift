import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift
import Firebase

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
			await self.uploadUserData(uid: result.user.uid, username: username, email: email)
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

	private func uploadUserData(uid: String, username: String, email: String) async {
		let user = User(id: uid, username: username, email: email)
		guard let encodedUser = try? Firestore.Encoder().encode(user) else { return }
		try? await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
	}
}

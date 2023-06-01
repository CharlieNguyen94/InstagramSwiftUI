import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
	let id: String
	var username: String
	var profileImageUrl: String?
	var fullname: String?
	var bio: String?
	let email: String

	var isCurrentUser: Bool {
		guard let currentUid = Auth.auth().currentUser?.uid else { return false }
		return currentUid == id
	}
}

extension User {
	static var MOCK_USERS: [User] = [
		.init(
			id: UUID().uuidString,
			username: "Luffy",
			profileImageUrl: nil,
			fullname: "Monkey D. Luffy",
			bio: "Pirate King",
			email: "luffy@hotmail.com"
		),
		.init(
			id: UUID().uuidString,
			username: "Zoro",
			profileImageUrl: nil,
			fullname: "Zoro Roronoa",
			bio: "Master Swordsman",
			email: "zoro@hotmail.com"
		),
		.init(
			id: UUID().uuidString,
			username: "Sanji",
			profileImageUrl: nil,
			fullname: "Sanji Vinsumoku",
			bio: "Chef",
			email: "sanji@hotmail.com"
		),
		.init(
			id: UUID().uuidString,
			username: "nami",
			profileImageUrl: nil,
			fullname: "Nami",
			bio: "Weather Girl",
			email: "nami@hotmail.com"
		),
		.init(
			id: UUID().uuidString,
			username: "Chopper",
			profileImageUrl: nil,
			fullname: "Tony Tony Chopper",
			bio: "Reindeer",
			email: "chopper@hotmail.com"
		)
	]
}

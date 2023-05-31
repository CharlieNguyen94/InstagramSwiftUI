import Foundation

struct User: Identifiable, Codable {
	let id: String
	var username: String
	var profileImage: String?
	var fullname: String?
	var bio: String?
	let email: String
}

extension User {
	static var MOCK_USERS: [User] = [
		.init(
			id: UUID().uuidString,
			username: "Luffy",
			profileImage: "luffy",
			fullname: "Monkey D. Luffy",
			bio: "Pirate King",
			email: "luffy@hotmail.com"
		),
		.init(
			id: UUID().uuidString,
			username: "Zoro",
			profileImage: "zoro",
			fullname: "Zoro Roronoa",
			bio: "Master Swordsman",
			email: "zoro@hotmail.com"
		),
		.init(
			id: UUID().uuidString,
			username: "Sanji",
			profileImage: "sanji",
			fullname: "Sanji Vinsumoku",
			bio: "Chef",
			email: "sanji@hotmail.com"
		),
		.init(
			id: UUID().uuidString,
			username: "Nami",
			profileImage: "nami",
			fullname: "Nami",
			bio: "Weather Girl",
			email: "nami@hotmail.com"
		),
		.init(
			id: UUID().uuidString,
			username: "Chopper",
			profileImage: "chopper",
			fullname: "Tony Tony Chopper",
			bio: "Reindeer",
			email: "chopper@hotmail.com"
		)
	]
}

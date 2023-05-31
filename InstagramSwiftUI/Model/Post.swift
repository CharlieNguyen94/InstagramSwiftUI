import Foundation

struct Post: Identifiable, Hashable, Codable {
	let id: String
	let ownerUid: String
	let caption: String
	let imageUrl: String
	let timestamp: Date
	var likes: Int
	var user: User?
}

extension Post {
	static var MOCK_POSTS: [Post] = [
		.init(
			id: UUID().uuidString,
			ownerUid: UUID().uuidString,
			caption: "Straw Hat",
			imageUrl: "luffy",
			timestamp: Date(),
			likes: 30,
			user: .MOCK_USERS[0]
		),
		.init(
			id: UUID().uuidString,
			ownerUid: UUID().uuidString,
			caption: "Sword",
			imageUrl: "zoro",
			timestamp: Date(),
			likes: 124,
			user: .MOCK_USERS[1]
		),
		.init(
			id: UUID().uuidString,
			ownerUid: UUID().uuidString,
			caption: "Love",
			imageUrl: "sanji",
			timestamp: Date(),
			likes: 112,
			user: .MOCK_USERS[2]
		),
		.init(
			id: UUID().uuidString,
			ownerUid: UUID().uuidString,
			caption: "Thunder",
			imageUrl: "nami",
			timestamp: Date(),
			likes: 12,
			user: .MOCK_USERS[3]
		),
		.init(
			id: UUID().uuidString,
			ownerUid: UUID().uuidString,
			caption: "Doctor",
			imageUrl: "chopper",
			timestamp: Date(),
			likes: 30,
			user: .MOCK_USERS[4]
		)
	]
}

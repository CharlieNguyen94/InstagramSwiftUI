import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
	let id: String
	let ownerUid: String
	let caption: String
	let imageUrl: String
	let timestamp: Timestamp
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
			timestamp: Timestamp(),
			likes: 30,
			user: .MOCK_USERS[0]
		),
		.init(
			id: UUID().uuidString,
			ownerUid: UUID().uuidString,
			caption: "Sword",
			imageUrl: "zoro",
			timestamp: Timestamp(),
			likes: 124,
			user: .MOCK_USERS[1]
		),
		.init(
			id: UUID().uuidString,
			ownerUid: UUID().uuidString,
			caption: "Love",
			imageUrl: "sanji",
			timestamp: Timestamp(),
			likes: 112,
			user: .MOCK_USERS[2]
		),
		.init(
			id: UUID().uuidString,
			ownerUid: UUID().uuidString,
			caption: "Thunder",
			imageUrl: "nami",
			timestamp: Timestamp(),
			likes: 12,
			user: .MOCK_USERS[3]
		),
		.init(
			id: UUID().uuidString,
			ownerUid: UUID().uuidString,
			caption: "Doctor",
			imageUrl: "chopper",
			timestamp: Timestamp(),
			likes: 30,
			user: .MOCK_USERS[4]
		)
	]
}

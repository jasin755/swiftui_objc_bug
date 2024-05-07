import Foundation

struct TestData {
	let name: String
	let isSelected: Bool
}

class ViewModel: ObservableObject {

//	@Published
//	var items: [TestData] = [
//		.init(name: "First item", isSelected: false),
//		.init(name: "Second item", isSelected: false),
//		.init(name: "Third item", isSelected: false)
//	]

	@Published
	var items: [TestObjc] = [
		.init(name: "First item", isSelected: false),
		.init(name: "Second item", isSelected: false),
		.init(name: "Third item", isSelected: false)
	]

	func buttonTapped() {
		items = [
			.init(name: "First item", isSelected: false),
			.init(name: "Second item", isSelected: true),
			.init(name: "Third item", isSelected: false)
		]
	}

}

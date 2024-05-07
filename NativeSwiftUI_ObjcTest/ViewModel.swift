import Foundation

struct TestData {
	let name: String
	let isSelected: Bool
}

class TestDataClass: Equatable {

	let name: String
	let isSelected: Bool

	init(name: String, isSelected: Bool) {
		self.name = name
		self.isSelected = isSelected
	}

	static func == (lhs: TestDataClass, rhs: TestDataClass) -> Bool {
		lhs.isSelected == rhs.isSelected && lhs.name == rhs.name
	}
}

extension TestObjc: Identifiable {
	public var id: String { name }
}

class ViewModel: ObservableObject {

//	@Published
//	var items: [TestData] = [
//		.init(name: "First item", isSelected: false),
//		.init(name: "Second item", isSelected: false),
//		.init(name: "Third item", isSelected: false)
//	]

//	@Published
//	var items: [TestObjc] = [
//		.init(name: "First item", isSelected: false),
//		.init(name: "Second item", isSelected: false),
//		.init(name: "Third item", isSelected: false)
//	]

//	@Published
//	var items: [TestDataClass] = [
//		.init(name: "First item", isSelected: false),
//		.init(name: "Second item", isSelected: false),
//		.init(name: "Third item", isSelected: false)
//	]

	@Published
	var items: [TestDataClass] = [
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

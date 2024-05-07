import SwiftUI

struct GridItemView: View {

//	let item: TestData
//	let item: TestObjc
	let item: TestDataClass

	var body: some View {
		let _ = print("GridItemView redraw")
		Text(item.name + " - \(item.isSelected ? "selected" : "no selected")")
	}
}

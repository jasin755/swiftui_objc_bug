import SwiftUI

struct GridItemView: View {

//	let item: TestData
	let item: TestObjc

	var body: some View {
		let _ = print("GridItemView redraw")
		Text(item.name + " - \(item.isSelected ? "selected" : "no selected")")
	}
}

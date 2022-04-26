import XCTest
import SwiftUI

@testable import SwiftUIViewTypeInspection

final class SwiftUIViewTypeInspectionTests: XCTestCase {
  func test_insepctType() throws {
    var output: String = ""
    _ = FixtureView().body.inspectType(to: &output)
    XCTAssertEqual(output, "HStack<TupleView<(Text, Text)>>\n")
  }
}

private struct FixtureView: View {
  var body: some View {
    HStack {
      Text("Hello, ")
      Text("world!")
    }
  }
}

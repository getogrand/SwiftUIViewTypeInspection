import SwiftUI

extension View {
  /// Print its real concrete type representation to the standard output stream.
  ///
  /// Example:
  ///
  /// ```swift
  /// import SwiftUIViewTypeInspection
  ///
  /// struct MyView: View {
  ///   var body: some View {
  ///     HStack {
  ///       Text("Hello, ")
  ///       Text("world!")
  ///     }
  ///     .inspectType() // prints "HStack<TupleView<(Text, Text)>>"
  ///   }
  /// }
  /// ```
  public func inspectType() -> Self {
    var output: String = ""
    _ = self.inspectType(to: &output)
    print(output)
    return self
  }

  /// Store its real concrete type representation to the target stream.
  ///
  /// Tip: the `String` type conforms `TextOutputStream`.
  ///
  /// Example:
  ///
  /// ```swift
  /// import SwiftUIViewTypeInspection
  ///
  /// var output: String = ""
  ///
  /// struct MyView: View {
  ///   var body: some View {
  ///     HStack {
  ///       Text("Hello, ")
  ///       Text("world!")
  ///     }
  ///     .inspectType(to: &output) // stores "HStack<TupleView<(Text, Text)>>\n"
  ///   }
  /// }
  /// ```
  public func inspectType<Target: TextOutputStream>(to output: inout Target) -> Self {
    print(Mirror(reflecting: self).subjectType, to: &output)
    return self
  }
}

# SwiftUIViewTypeInspection

SwiftUIViewTypeInspection provides helpers methods on SwiftUI.View to inspect its real concrete
type.

## View.inspectType() -> Self

Print its real concrete type representation to the standard output stream.

Example:

```swift
import SwiftUIViewTypeInspection

struct MyView: View {
  var body: some View {
    HStack {
      Text("Hello, ")
      Text("world!")
    }
    .inspectType() // prints "HStack<TupleView<(Text, Text)>>"
  }
}
```

## View.inspectType<Target: TextOutputStream>(to output: inout Target) -> Self

Store its real concrete type representation to the target stream.

Tip: the `String` type conforms `TextOutputStream`.

Example:

```swift
import SwiftUIViewTypeInspection

var output: String = ""

struct MyView: View {
  var body: some View {
    HStack {
      Text("Hello, ")
      Text("world!")
    }
    .inspectType(to: &output) // stores "HStack<TupleView<(Text, Text)>>\n"
  }
}
```

## Credits

[Thinking in SwiftUI](https://www.objc.io/books/thinking-in-swiftui/), page 10, 2020-12-15 ver.

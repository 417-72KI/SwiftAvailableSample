import Foundation

func doSomesing() {
    // do something
}

@available(*, unavailable, renamed: "doSomethingWithFoo(_:)")
func doSomething(with foo: Foo = .init()) {
    doSomethingWithFoo(foo)
}

func doSomethingWithFoo(_ foo: Foo = .init()) {
    // do something with `foo`
}

// MARK: - dummy class
struct Foo {
}

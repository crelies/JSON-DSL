extension Property: Renderable {
    public func render() -> String {
        let value = self.value.render()
        return #""\#(key)": \#(value)"#
    }
}

extension Object: Renderable {
    public func render() -> String {
        let properties = self.properties.map { $0.render() }.joined(separator: ",")
        return "{\(properties)}"
    }
}

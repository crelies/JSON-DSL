public struct JSON {
    let nodes: [Node]

    public init(_ nodes: Node...) {
        self.nodes = nodes
    }
}

extension JSON: Renderable {
    public func render() -> String {
        nodes.map { $0.render() }.joined(separator: ", ")
    }
}

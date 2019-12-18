public struct JSON {
    let nodes: [Node]

    public init(_ nodes: Node...) throws {
        let rootNodesCount = nodes.filter { $0.isRootNode }.count
        guard rootNodesCount <= 1 else {
            throw JSONError.multipleRootNodes
        }
        self.nodes = nodes
    }
}

extension JSON: Renderable {
    public func render() -> String {
        nodes.map { $0.render() }.joined(separator: ", ")
    }
}

public struct JSON {
    let rootNode: Node

    public init(_ rootNode: RootNode) {
        self.rootNode = rootNode.node
    }
}

extension JSON: Renderable {
    public func render() -> String {
        rootNode.render()
    }
}

extension RootNode: NodeConvertible {
    var node: Node {
        switch self {
        case RootNode.array(let nodes):
            return Node.array(nodes)
        case RootNode.object(let object):
            return Node.object(object)
        }
    }
}

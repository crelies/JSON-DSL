public enum RootNode {
    // array
    case array([Node])
    // object
    case object(Object)
}

public extension RootNode {
    static func array(_ nodes: Node...) -> RootNode {
        .array(nodes)
    }

    static func object(_ properties: Property...) -> RootNode {
        .object(Object(properties: properties))
    }
}

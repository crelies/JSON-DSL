public enum Node {
    // array
    case array([Node])
    // object
    case object(Object)
    // parses given string and injects JSON elements
    case json(String)
    // plain string
    case raw(String)
    // plain boolean
    case boolean(Bool)
    // plain integer
    case integer(Int)
    // plain double
    case double(Double)
    // plain null
    case null
}

public extension Node {
    static func array(_ nodes: Node...) -> Node {
        .array(nodes)
    }

    static func object(_ properties: Property...) -> Node {
        .object(Object(properties: properties))
    }
}

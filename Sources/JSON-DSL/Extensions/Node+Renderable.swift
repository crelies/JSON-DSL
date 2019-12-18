extension Node: Renderable {
    public func render() -> String {
        switch self {
        case .array(let nodes):
            let nodes = nodes.map { $0.render() }.joined(separator: ",")
            return "[\(nodes)]"
        case .object(let object):
            return object.render()
        case .raw(let value):
            return #""\#(value)""#
        case .boolean(let value):
            return "\(value)"
        case .integer(let value):
            return "\(value)"
        case .double(let value):
            return "\(value)"
        case .null:
            return "null"
        }
    }
}

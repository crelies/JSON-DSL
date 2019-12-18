public struct Property {
    let key: String
    let value: Node
}

extension Property {
    public static func property(_ key: String, _ value: Node) -> Property {
        Property(key: key, value: value)
    }
}

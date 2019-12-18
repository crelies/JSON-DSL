extension Node: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self = .integer(value)
    }
}

extension Node: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self = .raw(value)
    }
}

extension Node: ExpressibleByFloatLiteral {
    public init(floatLiteral value: Double) {
        self = .double(value)
    }
}

extension Node: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: Bool) {
        self = .boolean(value)
    }
}

extension Node: ExpressibleByNilLiteral {
    public init(nilLiteral: ()) {
        self = .null
    }
}

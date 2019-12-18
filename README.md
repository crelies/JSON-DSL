# JSON-DSL

A simple domain-specific-language (**DSL**) for writing *type-safe* **JSON** in **Swift**

## Motivation 🚀

I wanted to implement a simple DSL in Swift 🙂

## Result

The result is a very *lightweight* **API**:

```swift
let json = JSON(
    .array(
        "Developer",
        .object(.property("name", "crelies"),
                .property("language", "swift"),
                .property("iOS versions", .array(8.0, 9.0, 10.0, 11.0, 12.0, 13.0)),
                .property("projects", .object(.property("name", "AdvancedList"),
                                              .property("developers", .array(.object(.property("name", "crelies"))))))
        ),
        "Age",
        29,
        "Swift",
        5.1,
        .object(.property("isActive", true)),
        nil
    )
)

let renderedString = json.render()
```

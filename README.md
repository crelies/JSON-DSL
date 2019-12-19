# JSON-DSL

A simple domain-specific-language (**DSL**) for writing *type-safe* **JSON** in **Swift**

## Motivation 🚀

I wanted to implement a simple DSL in Swift 🙂

## Result 🎁

The result is a very *lightweight* **API**:

```swift
let json = JSON(
    .array(
        // 🚀 parses JSON encoded string and injects JSON elements
        .json("[\"Developer\",{\"name\":\"crelies\",\"language\":\"swift\",\"iOS versions\":[8.0,9.0,10.0,11.0,12.0,13.0],\"projects\":{\"name\":\"AdvancedList\",\"developers\":[{\"name\":\"crelies\"}]}},\"Age\",29,\"Swift\",5.1,{\"isActive\":true},null]"),

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

**Output:**

```json
[
  [
    "Developer",
    {
      "name": "crelies",
      "language": "swift",
      "iOS versions": [
        8.0,
        9.0,
        10.0,
        11.0,
        12.0,
        13.0
      ],
      "projects": {
        "name": "AdvancedList",
        "developers": [
          {
            "name": "crelies"
          }
        ]
      }
    },
    "Age",
    29,
    "Swift",
    5.1,
    {
      "isActive": true
    },
    null
  ],
  "Developer",
  {
    "name": "crelies",
    "language": "swift",
    "iOS versions": [
      8.0,
      9.0,
      10.0,
      11.0,
      12.0,
      13.0
    ],
    "projects": {
      "name": "AdvancedList",
      "developers": [
        {
          "name": "crelies"
        }
      ]
    }
  },
  "Age",
  29,
  "Swift",
  5.1,
  {
    "isActive": true
  },
  null
]
```

### Advanced example 🔬

When it comes to `Strings` it's getting complicated 💣

You can use

- *escaped JSON strings* through `.json()` (*decodes string and injects JSON elements 🚀*) or

- *raw strings* through `.raw("Test")` or `"Test"` (`"Test"` is shorthand syntax for `.raw("Test")`).

**Hint: *Keep in mind that you could get invalid JSON if you use an unescaped JSON string (see ❌ examples below).***

**Examples:**

```swift
let json = JSON(
    .array(
        // ✅ parses JSON string and injects JSON elements
        .json("[\"Developer\",{\"name\":\"crelies\",\"language\":\"swift\",\"iOS versions\":[8.0,9.0,10.0,11.0,12.0,13.0],\"projects\":{\"name\":\"AdvancedList\",\"developers\":[{\"name\":\"crelies\"}]}},\"Age\",29,\"Swift\",5.1,{\"isActive\":true},null]"),

        // ########################################################################################
        // ✅ raw strings, surrounding double quotes will be escaped

        // - 1. Escaped characters
        #"[\"Developer\",{\"name\":\"crelies\",\"language\":\"swift\",\"iOS versions\":[8.0,9.0,10.0,11.0,12.0,13.0],\"projects\":{\"name\":\"AdvancedList\",\"developers\":[{\"name\":\"crelies\"}]}},\"Age\",29,\"Swift\",5.1,{\"isActive\":true},null]"#,

        // - 2. No escaped characters
        #"Without escaped characters"#,
        // ########################################################################################

        // ✅ plain string
        "Without escaped characters",

        // ########################################################################################
        /*
            Not working because surrounding double quotes are not escaped.
            (conflict with required JSON double quotes)
            ---> Will result in invalid JSON 💣
        */

        // ❌
        // "[\"Developer\",{\"name\":\"crelies\",\"language\":\"swift\",\"iOS versions\":[8.0,9.0,10.0,11.0,12.0,13.0],\"projects\":{\"name\":\"AdvancedList\",\"developers\":[{\"name\":\"crelies\"}]}},\"Age\",29,\"Swift\",5.1,{\"isActive\":true},null]"
        // ########################################################################################
    )
)
```

**Output:**

```json
[
  [
    "Developer",
    {
      "name": "crelies",
      "language": "swift",
      "iOS versions": [
        8.0,
        9.0,
        10.0,
        11.0,
        12.0,
        13.0
      ],
      "projects": {
        "name": "AdvancedList",
        "developers": [
          {
            "name": "crelies"
          }
        ]
      }
    },
    "Age",
    29,
    "Swift",
    5.1,
    {
      "isActive": true
    },
    null
  ],
  "[\"Developer\",{\"name\":\"crelies\",\"language\":\"swift\",\"iOS versions\":[8.0,9.0,10.0,11.0,12.0,13.0],\"projects\":{\"name\":\"AdvancedList\",\"developers\":[{\"name\":\"crelies\"}]}},\"Age\",29,\"Swift\",5.1,{\"isActive\":true},null]",
  "Without escaped characters",
  "Without escaped characters"
]
```

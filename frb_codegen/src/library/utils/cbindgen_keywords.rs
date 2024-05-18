// copied from https://github.com/mozilla/cbindgen/blob/ca78140c01518a655355f84da1f3872939123b66/src/bindgen/reserved.rs
pub(crate) fn escape(rust_identifier: &mut String) {
    if RESERVED_KEYWORDS
        .binary_search(&rust_identifier.as_ref())
        .is_ok()
    {
        rust_identifier.push('_');
    }
}

// copied from https://github.com/mozilla/cbindgen/blob/ca78140c01518a655355f84da1f3872939123b66/src/bindgen/reserved.rs
const RESERVED_KEYWORDS: &[&str] = &[
    "alignas",
    "alignof",
    "auto",
    "bool",
    "break",
    "case",
    "catch",
    "char",
    "char16_t",
    "char32_t",
    "char8_t",
    "class",
    "const",
    "const_cast",
    "consteval",
    "constexpr",
    "continue",
    "decltype",
    "default",
    "delete",
    "do",
    "double",
    "dynamic_cast",
    "else",
    "enum",
    "explicit",
    "export",
    "extern",
    "false",
    "float",
    "for",
    "friend",
    "goto",
    "if",
    "inline",
    "int",
    "long",
    "mutable",
    "namespace",
    "new",
    "noexcept",
    "nullptr",
    "operator",
    "private",
    "protected",
    "public",
    "register",
    "reinterpret_cast",
    "return",
    "short",
    "signed",
    "sizeof",
    "static",
    "static_assert",
    "static_cast",
    "struct",
    "switch",
    "template",
    "this",
    "thread_local",
    "throw",
    "true",
    "try",
    "typedef",
    "typename",
    "union",
    "unsigned",
    "using",
    "virtual",
    "void",
    "volatile",
    "wchar_t",
    "while",
];

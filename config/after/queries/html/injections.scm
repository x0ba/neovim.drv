;; extends
; Alpine.js
(attribute
  (
    [
      ((attribute_name) @alpine.simple
        (#any-of? @alpine.simple
          "x-data"
          "x-effect"
          "x-for"
          "x-html"
          "x-id"
          "x-if"
          "x-init"
          "x-model"
          "x-modelable"
          "x-show"
          "x-text"
          ":class"
          ":id"
          ":placeholder"
          ":selected"
          ":style"
        ))
      ((attribute_name) @alpine.at-shortcut
        (#match? @alpine.at-shortcut "^\\@.*$"))
      ((attribute_name) @alpine.x-on
        (#match? @alpine.x-on "^x-on:.+$"))
      ((attribute_name) @alpine.x-bind
        (#match? @alpine.x-bind "^x-bind:.+$"))
    ]
    (quoted_attribute_value
      (attribute_value) @injection.content (#set! injection.language "javascript")
    )
  )
)

; Blade escaped JS attributes
; <x-foo ::bar="baz" />
(element
  (_
    (tag_name) @_tag
      (#lua-match? @_tag "^x%-%l")
  (attribute
    (attribute_name) @_attr
      (#lua-match? @_attr "^::%l")
    (quoted_attribute_value
      (attribute_value) @injection.content)
    (#set! injection.language "javascript"))))

; Blade PHP attributes
; <x-foo :bar="$baz" />
(element
  (_
    (tag_name) @_tag
      (#lua-match? @_tag "^x%-%l")
    (attribute
      (attribute_name) @_attr
        (#lua-match? @_attr "^:%l")
      (quoted_attribute_value
        (attribute_value) @injection.content)
      (#set! injection.language "php_only"))))

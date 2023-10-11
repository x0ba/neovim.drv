;; extends
(attribute
  (attribute_name) @attribute_name
    (#any-of? @attribute_name
      "x-data"
      "x-effect"
      "x-for"
      "x-html"
      "x-id"
      "x-if"
      "x-init"
      "x-model"
      "x-modelable"
      "x-ref"
      "x-show"
      "x-teleport"
      "x-text"
      ":class"
      ":id"
      ":placeholder"
      ":selected"
      ":style"
    )
  (quoted_attribute_value
    (attribute_value) @injection.content (#set! injection.language "javascript")
  )
)
(attribute
  (attribute_name) @attribute_name
    (#match? @attribute_name "\\@.*$")
  (quoted_attribute_value
    (attribute_value) @injection.content (#set! injection.language "javascript")
  )
)
(attribute
  (attribute_name) @attribute_name
    (#match? @attribute_name "^x-on:.+$")
  (quoted_attribute_value
    (attribute_value) @injection.content (#set! injection.language "javascript")
  )
)
(attribute
  (attribute_name) @attribute_name
    (#match? @attribute_name "^x-bind.+$")
  (quoted_attribute_value
    (attribute_value) @injection.content (#set! injection.language "javascript")
  )
)

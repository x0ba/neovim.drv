;; extends
((apply_expression
  ; match `lib.mkOption` or `mkOption`
  function: [
      (select_expression (attrpath) @_outer)
      (variable_expression) @_outer
  ]
  argument: (attrset_expression
    (binding_set 
      binding: (binding 
        ; the `description` attribute of `mkOption`
        attrpath: (attrpath) @_inner
        expression: [
          ; `_` matches both string expressions & indented string expressions
          (_ (string_fragment) @injection.content)
          (apply_expression
            argument: (_ (string_fragment) @injection.content)
          )
        ]
      )
    )))
  (#eq? @_outer "mkOption")
  (#eq? @_inner "description")
  (#set! injection.language "markdown_inline"))

((binding
  attrpath: (attrpath (identifier) @_path)
    expression: [
      (indented_string_expression (string_fragment) @injection.content)
      (function_expression body: (indented_string_expression (string_fragment) @injection.content))
    ])
  (#eq? @_path "testScript")
  (#set! injection.language "python")
  (#set! injection.combined))

;; extends
(apply_expression
  ; match `lib.mkOption` or `mkOption`
  function: [
      (select_expression (attrpath) @_outer)
      (variable_expression) @_outer
  ] (#eq? @_outer "mkOption")
  argument: (attrset_expression
    (binding_set 
      binding: (binding 
        ; the `description` attribute of `mkOption`
        attrpath: (attrpath) @_inner (#eq? @_inner "description")
        expression: [
          ; `_` matches both string expressions & indented string expressions
          (_ (string_fragment) @injection.content)
          (apply_expression
            argument: (_ (string_fragment) @injection.content)
          )
        ]
      )
    ))
  (#set! injection.language "markdown_inline"))

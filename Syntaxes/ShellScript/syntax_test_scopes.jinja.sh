## SYNTAX TEST "Bash (Jinja).sublime-syntax"

# Shell comments need escaped hashtags
## <- comment.line.number-sign.shell punctuation.definition.comment.shell
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

  {% if true %}
##^^^^^^^^^^^^^ meta.embedded.statement.jinja
##^^ punctuation.section.embedded.begin.jinja
##   ^^ keyword.control.conditional.if.jinja
##      ^^^^ constant.language.boolean.true.jinja
##           ^^ punctuation.section.embedded.end.jinja

  {% else %}
##^^^^^^^^^^ meta.embedded.statement.jinja
##^^ punctuation.section.embedded.begin.jinja
##   ^^^^ keyword.control.conditional.else.jinja
##        ^^ punctuation.section.embedded.end.jinja

  {% endif %}
##^^^^^^^^^^^ meta.embedded.statement.jinja
##^^ punctuation.section.embedded.begin.jinja
##   ^^^^^ keyword.control.conditional.endif.jinja
##         ^^ punctuation.section.embedded.end.jinja

    "{{cmd}}" "quoted-{{value}}-string" unquoted-{{value}}-string
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.template.jinja
##  ^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell
##  ^ variable.function.shell punctuation.definition.quoted.begin.shell
##   ^^^^^^^ meta.embedded.expression.jinja - string
##   ^^ punctuation.section.embedded.begin.jinja
##     ^^^ source.jinja.embedded variable.other.readwrite.jinja
##        ^^ punctuation.section.embedded.end.jinja
##          ^ variable.function.shell punctuation.definition.quoted.end.shell
##           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
##            ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
##            ^^^^^^^^ string.quoted.double.shell
##            ^ punctuation.definition.string.begin.shell
##                    ^^^^^^^^^ meta.embedded.expression.jinja - string
##                    ^^ punctuation.section.embedded.begin.jinja
##                      ^^^^^ source.jinja.embedded variable.other.readwrite.jinja
##                           ^^ punctuation.section.embedded.end.jinja
##                             ^^^^^^^^ string.quoted.double.shell
##                                    ^ punctuation.definition.string.end.shell
##                                      ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
##                                      ^^^^^^^^^ string.unquoted.shell
##                                               ^^^^^^^^^ meta.embedded.expression.jinja - string
##                                               ^^ punctuation.section.embedded.begin.jinja
##                                                 ^^^^^ source.jinja.embedded variable.other.readwrite.jinja
##                                                      ^^ punctuation.section.embedded.end.jinja
##                                                        ^^^^^^^ string.unquoted.shell

    command-{{ name }}  --opt-{{ name }}
##  ^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
##          ^^^^^^^^^^ meta.embedded.expression.jinja
##          ^^ punctuation.section.embedded.begin.jinja
##            ^^^^^^ source.jinja.embedded
##             ^^^^ variable.other.readwrite.jinja
##                  ^^ punctuation.section.embedded.end.jinja
##                    ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
##                      ^^^^^^^^^^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
##                      ^^ punctuation.definition.parameter.shell
##                            ^^^^^^^^^^ meta.embedded.expression.jinja
##                            ^^ punctuation.section.embedded.begin.jinja
##                              ^^^^^^ source.jinja.embedded
##                               ^^^^ variable.other.readwrite.jinja
##                                    ^^ punctuation.section.embedded.end.jinja

    [[ {{ var }} == {{ value }} ]]
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
##  ^^ punctuation.section.compound.begin.shell
##     ^^^^^^^^^ meta.embedded.expression.jinja
##     ^^ punctuation.section.embedded.begin.jinja
##       ^^^^^ source.jinja.embedded
##        ^^^ variable.other.readwrite.jinja
##            ^^ punctuation.section.embedded.end.jinja
##               ^^ keyword.operator.comparison.shell
##                  ^^^^^^^^^^^ meta.embedded.expression.jinja
##                  ^^ punctuation.section.embedded.begin.jinja
##                    ^^^^^^^ source.jinja.embedded
##                     ^^^^^ variable.other.readwrite.jinja
##                           ^^ punctuation.section.embedded.end.jinja
##                              ^^ punctuation.section.compound.end.shell

    (( {{ var }} == {{ value }} ))
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell
##  ^^ punctuation.section.compound.begin.shell
##    ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.arithmetic.shell
##     ^^^^^^^^^ meta.embedded.expression.jinja
##     ^^ punctuation.section.embedded.begin.jinja
##       ^^^^^ source.jinja.embedded
##        ^^^ variable.other.readwrite.jinja
##            ^^ punctuation.section.embedded.end.jinja
##               ^^ keyword.operator.comparison.shell
##                  ^^^^^^^^^^^ meta.embedded.expression.jinja
##                  ^^ punctuation.section.embedded.begin.jinja
##                    ^^^^^^^ source.jinja.embedded
##                     ^^^^^ variable.other.readwrite.jinja
##                           ^^ punctuation.section.embedded.end.jinja
##                              ^^ punctuation.section.compound.end.shell

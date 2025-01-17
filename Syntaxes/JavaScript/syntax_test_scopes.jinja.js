## SYNTAX TEST "JavaScript (Jinja).sublime-syntax"

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

function foo () {

  {% if true %}
##^^^^^^^^^^^^^ meta.function.js meta.block.js meta.embedded.statement.jinja
##^^ punctuation.section.embedded.begin.jinja
##   ^^ keyword.control.conditional.if.jinja
##      ^^^^ constant.language.boolean.true.jinja
##           ^^ punctuation.section.embedded.end.jinja

  {% else %}
##^^^^^^^^^^ meta.function.js meta.block.js meta.embedded.statement.jinja
##^^ punctuation.section.embedded.begin.jinja
##   ^^^^ keyword.control.conditional.else.jinja
##        ^^ punctuation.section.embedded.end.jinja

  {% endif %}
##^^^^^^^^^^^ meta.function.js meta.block.js meta.embedded.statement.jinja
##^^ punctuation.section.embedded.begin.jinja
##   ^^^^^ keyword.control.conditional.endif.jinja
##         ^^ punctuation.section.embedded.end.jinja

}

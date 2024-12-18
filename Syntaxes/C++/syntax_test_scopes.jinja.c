// SYNTAX TEST "C (Jinja).sublime-syntax"

#include <cstdint>

  {% if true %}
//^^^^^^^^^^^^^ meta.embedded.statement.jinja
//^^ punctuation.section.embedded.begin.jinja
//   ^^ keyword.control.conditional.if.jinja
//      ^^^^ constant.language.boolean.true.jinja
//           ^^ punctuation.section.embedded.end.jinja

  {% else %}
//^^^^^^^^^^ meta.embedded.statement.jinja
//^^ punctuation.section.embedded.begin.jinja
//   ^^^^ keyword.control.conditional.else.jinja
//        ^^ punctuation.section.embedded.end.jinja

  {% endif %}
//^^^^^^^^^^^ meta.embedded.statement.jinja
//^^ punctuation.section.embedded.begin.jinja
//   ^^^^^ keyword.control.conditional.endif.jinja
//         ^^ punctuation.section.embedded.end.jinja

int foo(int i) {

  char *msg = "My {{message}}!"
//            ^^^^^^^^^^^^^^^^^ string.quoted.double.c
//                ^^^^^^^^^^^ meta.embedded.expression.jinja
//                ^^ punctuation.section.embedded.begin.jinja
//                  ^^^^^^^ source.jinja.embedded variable.other.jinja
//                         ^^ punctuation.section.embedded.end.jinja

  {% if true %}
//^^^^^^^^^^^^^ meta.function.c meta.block.c meta.embedded.statement.jinja
//^^ punctuation.section.embedded.begin.jinja
//   ^^ keyword.control.conditional.if.jinja
//      ^^^^ constant.language.boolean.true.jinja
//           ^^ punctuation.section.embedded.end.jinja

    i++;

  {% else %}
//^^^^^^^^^^ meta.function.c meta.block.c meta.embedded.statement.jinja
//^^ punctuation.section.embedded.begin.jinja
//   ^^^^ keyword.control.conditional.else.jinja
//        ^^ punctuation.section.embedded.end.jinja

    i--;

  {% endif %}
//^^^^^^^^^^^ meta.function.c meta.block.c meta.embedded.statement.jinja
//^^ punctuation.section.embedded.begin.jinja
//   ^^^^^ keyword.control.conditional.endif.jinja
//         ^^ punctuation.section.embedded.end.jinja

    return 0;

}

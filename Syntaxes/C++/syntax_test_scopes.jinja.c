// SYNTAX TEST "C (Jinja).sublime-syntax"

#include <cstdint>

  {% if true %}
//^^^^^^^^^^^^^ meta.embedded.statement.jinja
//^^ punctuation.section.embedded.begin.jinja
//   ^^ keyword.control.conditional.if.jinja
//      ^^^^ constant.language.boolean.jinja
//           ^^ punctuation.section.embedded.end.jinja

  {% else %}
//^^^^^^^^^^ meta.embedded.statement.jinja
//^^ punctuation.section.embedded.begin.jinja
//   ^^^^ keyword.control.conditional.else.jinja
//        ^^ punctuation.section.embedded.end.jinja

  {% endif %}
//^^^^^^^^^^^ meta.embedded.statement.jinja
//^^ punctuation.section.embedded.begin.jinja
//   ^^^^^ keyword.other.endtag.jinja
//         ^^ punctuation.section.embedded.end.jinja

int foo(int i) {

  {% if true %}
//^^^^^^^^^^^^^ meta.function.c meta.block.c meta.embedded.statement.jinja
//^^ punctuation.section.embedded.begin.jinja
//   ^^ keyword.control.conditional.if.jinja
//      ^^^^ constant.language.boolean.jinja
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
//   ^^^^^ keyword.other.endtag.jinja
//         ^^ punctuation.section.embedded.end.jinja

    return 0;

}

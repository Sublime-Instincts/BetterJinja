// SYNTAX TEST "Markdown (Jinja).sublime-syntax"

// [ COMMENTS ] ///////////////////////////////////////////////////////////////

   ##
// ^^^ - meta.embedded.comment - comment

   ## comment
// ^^^^^^^^^^^ - meta.embedded.comment - comment

#  ## comment
// <- - meta.embedded
//^^^^^^^^^^^^ - meta.embedded - comment

   {#  #}
// ^^^^^^ meta.embedded.comment.jinja comment.block.jinja
// ^^ punctuation.definition.comment.begin.jinja
//     ^^ punctuation.definition.comment.end.jinja

// [ STATEMENT BLOCKS ] ///////////////////////////////////////////////////////

   {%  %}
// ^^^^^^ meta.embedded.statement.jinja
// ^^ punctuation.section.embedded.begin.jinja - source.jinja.embedded
//   ^^ source.jinja.embedded
//     ^^ punctuation.section.embedded.end.jinja - source.jinja.embedded

   {%+  +%}
// ^^^^^^^^ meta.embedded.statement.jinja
// ^^^ punctuation.section.embedded.begin.jinja - source.jinja.embedded
//    ^^ source.jinja.embedded
//      ^^^ punctuation.section.embedded.end.jinja - source.jinja.embedded

   {%-  -%}
// ^^^^^^^^ meta.embedded.statement.jinja
// ^^^ punctuation.section.embedded.begin.jinja - source.jinja.embedded
//    ^^ source.jinja.embedded
//      ^^^ punctuation.section.embedded.end.jinja - source.jinja.embedded

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

// [ EXPRESSION BLOCKS ] //////////////////////////////////////////////////////

# Header {{ name }}
// <- markup.heading.1.markdown punctuation.definition.heading.begin.markdown
//^^^^^^^ markup.heading.1.markdown entity.name.section.markdown
//       ^^^^^^^^^^ markup.heading.1.markdown entity.name.section.markdown meta.embedded.expression.jinja
//       ^^ punctuation.section.embedded.begin.jinja
//         ^^^^^^ source.jinja.embedded
//               ^^ punctuation.section.embedded.end.jinja

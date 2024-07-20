# Jinja2

![LICENSE](https://img.shields.io/badge/LICENSE-MIT-green?style=for-the-badge) ![LICENSE](https://img.shields.io/badge/ST-Build%204107+-orange?style=for-the-badge&logo=sublime-text) ![Tag](https://img.shields.io/github/v/tag/Sublime-Instincts/BetterJinja?style=for-the-badge&logo=github&sort=semver) ![Downloads](https://img.shields.io/packagecontrol/dt/Jinja2?style=for-the-badge)
![Syntax tests](https://img.shields.io/github/actions/workflow/status/Sublime-Instincts/BetterJinja/syntax_test.yml?color=green&label=Syntax%20Tests&logo=github&logoColor=white&style=for-the-badge)

[Jinja2](https://jinja.palletsprojects.com/en/3.1.x/) syntax definitions, completions and snippets for [Sublime Text](https://www.sublimetext.com) 
based on its bundled C/C++, CSS, HTML, JavaScript, JSON, Markdown, XML and YAML syntaxes.

## Features

- Syntax highlighting for Jinja2 templates  
  _Supported languages: C/C++, CSS, HTML, JavaScript, JSON, Markdown, XML and YAML_
- Syntax specific indentation for code blocks
- Completions for built in tags, filters, functions, tests & loop variables.
- Key bindings to make your life easier
- Snippets for tags and common code blocks

## Installation

#### Package Control

The best way is to install it via [Package Control](https://packagecontrol.io/). 
Once you have Package Control setup in Sublime Text, open the command palette
and search for `Package Control: Install Package`. Search for `Jinja2` and
install it. Package Control will take care for of automatically updating the
package for you if there are new releases.

You can also use `Package Control: Add Repository`. Copy the github url
(without the `.git` at the end) and enter it into the input panel that pops up
at the bottom when you select `Package Control: Add Repository`. Now use
`Package Control: Install Package` and search for `Jinja2` and install it.

## Documentation

### How to use this package ?

By default, this package supports the following Jinja extensions:
`j2`, `jinja`, `jinja2`, `html.j2`, `html.jinja`, `html.jinja2`, `htm.j2`, `htm.jinja`, `htm.jinja2`.

Since a user can have more than one templating language package installed,
this package doesn't support `.html` directly. To get highlighting for `.html`
files with Jinja code and all the other features this package provides, you
can follow any of the two approaches given below

1. Go to the bottom right status bar item that displays information on current
   syntax and click on that when the currently open file is any `.html` file.
   From there go to `Open all with current extensions as ...` and scroll to
   select `Jinja`. You should now be good to go.

2. When the currently open file has any of the aforementioned file extensions,
   from the main menu, go to `Preferences -> Settings -- Syntax Specific`.
   This should open a 2 column new window, with the default settings on the
   right and a user settings on the left. In the user settings, add the
   following, save & close.

```json
{
    "extensions": [
        ".html"
    ]
}
```

### Key bindings

- The key bindings are configured so that pressing <kbd>shift + {</kbd>
  **twice** will automatically add spaces on both sides for the inner brace
  expression block & place the cursor in the center, like so `{{ | }}`.
- |||ly pressing <kbd>shift + %</kbd> within `{}` will add spaces on both sides of the inner `%` like so `{% | %}`
- You can use <kbd>ctrl + /</kbd> for inserting Jinja style line comments (`## This is a line comment`)
- Similarly, use <kbd>ctrl + shift + /</kbd> for block style comments (`{# This is a block comment #}`)

### Auto completions

No special configuration is required for completions to show while typing or snippets to expand.

Completion behaviour of the primary syntax applies to normal content.
Default behaviour of ST involves distinction between `source` and `text` scopes.

- `source` (CSS, JavaScript, JSON, YAML): completions display while typing.
- `text` (HTML, Markdwon, Text, XML): only snippets expand by pressing <kbd>tab</kbd> key.

Content of `{% %}` and `{{ }}` tags is scoped `source.jinja` to enable completions while typing.

### Snippets

Basic snippets for each keyword are provided to create expressions without bothering with `{%  %}`.

|  **Tab Trigger**  | **Jinja Tag**         |
|-------------------|-----------------------|
|   `autoescape`    | `{% autoescape %}`    |
|  `endautoescape`  | `{% endautoescape %}` |
|       ...         |          ...          |

Prefixed with `j` basic snippets for most common control structures are provided.

|  **Tab Trigger**  |         **Jinja Code Block**          |
|-------------------|---------------------------------------|
|   `jautoescape`   | `{% autoescape %}{% endautoescape %}` |
|      `jblock`     |      `{% block %}{% endblock %}`      |
|      `jcall`      |       `{% call %}{% endcall %}`       |
|     `jextends`    |           `{% extends %}`             |
|       `jexp`      |              `{%  %}`                 |
|     `jfilter`     |     `{% filter %}{% endfilter %}`     |
|       `jfor`      |        `{% for %}{% endfor %}`        |
|       `jif`       |         `{% if %}{% endif %}`         |
|     `jifelse`     |    `{% if %}{% else %}{% endif %}`    |
|      `jmacro`     |      `{% macro %}{% endmacro %}`      |
|       `jraw`      |         `{% raw %}{% endraw %}`       |
|      `jwith`      |       `{% with %}{% endwith %}`       |

For more, please follow the official documentation on [snippets](https://www.sublimetext.com/docs/completions.html#snippets) to create your own.

Snippets can be disabled (ignored) by adding the following to _Preferences.sublime-settings_:

```json
{
    "ignored_snippets": ["Jinja2/*"]
}
```

## Troubleshooting

Jinja2 extends Sublime Text's CSS, HTML, JavaScript, JSON, Markdown, XML and
YAML syntax definitions.

If Jinja2 syntax highlighting doesn't work and console displays syntax errors, 

1. check if required bundled packages are enabled.
2. remove any out-dated syntax override.
   
### Enable bundled packages

1. Open `Command Palette` using <kbd>ctrl+shift+P</kbd> or menu item `Tools → Command Palette...`
2. Choose `Package Control: Enable Packages`
3. Find `CSS` and hit <kbd>Enter</kbd>
4. Repeat the steps for `JavaScript`, `HTML` ...

### Remove overrides

1. call _Menu > Preferences > Browse Packages.._
2. Look for _CSS_, _HTML_, ... folders
3. Remove them or at least delete any syntax definition in them

## Issues & Feature requests

There is always scope for improvements so please report [bug(s) or feature requests](https://github.com/Sublime-Instincts/BetterJinja/issues).

Please follow the issue & feature request templates that have been setup while
reporting any bug(s) or requesting for feature(s) (So as to stay as organised
as possible).

## Acknowledgements

The [syntax_test.yml](.github/workflows/syntax_test.yml) is taken & used (with some modifications) 
from the official [Packages](https://github.com/sublimehq/Packages) repository. So full credit goes to them for it.

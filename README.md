# Jinja2

[Jinja2](https://jinja.palletsprojects.com/en/3.1.x/) and [Django Template Language](https://docs.djangoproject.com/en/5.1/topics/templates/) syntax definitions,
completions and snippets for [Sublime Text](https://www.sublimetext.com)
based on its bundled C/C++, CSS, HTML, JavaScript, JSON, Markdown, ShellScript,
SQL, TOML, XML and YAML syntaxes.

## Features

- Syntax highlighting for Jinja2 and Django templates  
- Syntax specific indentation for code blocks
- Completions for built in tags, filters, functions, tests & loop variables.
- Key bindings to make your life easier
- Snippets for tags and common code blocks

## Installation

### Package Control

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

   `j2`, `jinja`, `jinja2`, `html.j2`, `html.jinja`, `html.jinja2`, `htm.j2`,
   `htm.jinja`, `htm.jinja2`

and Django extensions:

   `djt`, `djhtml`, `dj.html`, `html.djt`

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

- <kbd>shift + {</kbd> **twice** inserts `{{ | }}`
- <kbd>shift + %</kbd> within `{}` expands to `{% | %}`
- <kbd>ctrl + /</kbd> inserts Jinja style line comments
  (`## This is a line comment`)
- <kbd>ctrl + shift + /</kbd> inserts block style comments
  (`{# This is a block comment #}`)

### Auto completions

No special configuration is required for completions to show while typing or snippets to expand.

Completion behaviour of the primary syntax applies to normal content.
Default behaviour of ST involves distinction between `source` and `text` scopes.

- `source` (CSS, JavaScript, JSON, YAML): completions display while typing.
- `text` (HTML, Markdown, Text, XML): only snippets expand by pressing <kbd>tab</kbd> key.

Content of `{% %}` and `{{ }}` tags is scoped `source.jinja` to enable completions while typing.

### Snippets

Basic snippets are provided to create expressions without bothering with `{%  %}`.

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

Jinja2 extends Sublime Text's C++, CSS, HTML, JavaScript, JSON, Markdown, ShellScript,
SQL, TOML, XML and YAML syntax definitions.

If Jinja2 syntax highlighting doesn't work and console displays syntax errors,

1. check if required bundled packages are enabled
2. revert bundled packages to factory defaults
3. uninstall any 3rd-party package, providing incompatible syntax definitions

### Enable bundled packages

1. Open `Command Palette` using <kbd>ctrl+shift+P</kbd> or menu item `Tools → Command Palette...`
2. Choose `Package Control: Enable Packages`
3. Find e.g. `CSS` and hit <kbd>Enter</kbd>
4. Repeat the steps for all relevant packages (`JavaScript`, `HTML`, ...)

### Revert bundled packages to factory defaults

When to use:

- A 3rd-party package, such as TOML augments ST's bundled package.
- An out-dated syntax definition override was created before,
  which prevents the built-in syntax from taking effect.

To revert a bundled package...

1. Open `Command Palette` using <kbd>ctrl+shift+P</kbd> or menu item `Tools → Command Palette...`
2. Choose `Package Control: Revert Built-in Package`
3. Find e.g. `TOML` and hit <kbd>Enter</kbd>
4. Repeat the steps for all relevant packages (`JavaScript`, `HTML`, ...)

To manually check and remove overrides ...

1. Call _Menu > Preferences > Browse Packages.._
2. Look for _CSS_, _HTML_, ... folders
3. Remove them or at least delete any syntax definition in them

### Uninstall incompatible 3rd-party packages

Make sure to remove related out-dated syntax packages,
which don't meet least compatibility requirements.

They can be identified by calling
e.g. `sublime.find_syntax_by_scope("source.ts")` in ST's console.

Known candidates are:

- [JavaScriptNext - ES6 Syntax](https://packagecontrol.io/packages/JavaScriptNext%20-%20ES6%20Syntax)
- [Naomi](https://github.com/borela/naomi)
- [TOML](https://packagecontrol.io/packages/TOML)
- [TypeScript](https://packagecontrol.io/packages/TypeScript)
- [TypeScript Syntax](https://packagecontrol.io/packages/TypeScript%20Syntax)

## Issues & Feature requests

There is always scope for improvements so please report [bug(s) or feature requests](https://github.com/Sublime-Instincts/BetterJinja/issues).

Please follow the issue & feature request templates that have been setup while
reporting any bug(s) or requesting for feature(s) (So as to stay as organised
as possible).

## Acknowledgements

The [syntax_test.yml](.github/workflows/syntax_test.yml) is taken & used (with some modifications)
from the official [Packages](https://github.com/sublimehq/Packages) repository. So full credit goes to them for it.

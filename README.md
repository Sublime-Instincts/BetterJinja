# BetterJinja

![LICENSE](https://img.shields.io/badge/LICENSE-MIT-green?style=for-the-badge) ![LICENSE](https://img.shields.io/badge/ST-Build%204107+-orange?style=for-the-badge&logo=sublime-text) ![Tag](https://img.shields.io/github/v/tag/Sublime-Instincts/BetterJinja?style=for-the-badge&logo=github&sort=semver) ![Downloads](https://img.shields.io/packagecontrol/dt/Jinja2?style=for-the-badge)
![Syntax tests](https://img.shields.io/github/workflow/status/Sublime-Instincts/BetterJinja/syntax_test?color=green&label=Syntax%20Tests&logo=github&logoColor=white&style=for-the-badge)

A Sublime Text package that offers enhanced syntax highlighting, snippets, completions and much more for [Jinja](https://jinja.palletsprojects.com/en/3.1.x/) templates. Read more for the full documentation.

## Features

- Indentation for code blocks.
- Snippets for common code blocks.
- Key bindings to make your life easier.
- Enhanced syntax highlighting for Jinja HTML and YAML templates.
- Autocompletions for built in tags, filters, functions, tests & loop variables.

## Installation

#### Package Control
The best way is to install it via [Package Control](https://packagecontrol.io/). Once you have Package Control setup in Sublime Text, open the command palette and search for `Package Control: Install Package`. Search for `BetterJinja` and install it. Package Control will take care for of automatically updating the package for you if there are new releases.

You can also use `Package Control: Add Repository`. Copy the github url (without the `.git` at the end) and enter it into the input panel that pops up at the bottom when you select `Package Control: Add Repository`. Now use `Package Control: Install Package` and search for `BetterJinja` and install it.

## Documentation

### How to use this package ?

By default, this package supports the following Jinja extensions:
`j2`, `jinja`, `jinja2`, `html.j2`, `html.jinja`, `html.jinja2`, `htm.j2`, `htm.jinja`, `htm.jinja2`.

Since a user can have more than one templating language package installed, this package doesn't support `.html` directly. To get highlighting for `.html` files with Jinja code and all the other features this package provides, you can follow any of the two approaches given below

1. Go to the bottom right status bar item that displays information on current syntax and click on that when the currently open file is any `.html` file. From there go to `Open all with current extensions as ...` and scroll to select `Jinja`. You should now be good to go.

2. When the currently open file has any of the aforementioned file extensions, from the main menu, go to `Preferences -> Settings -- Syntax Specific`. This should open a 2 column new window, with the default settings on the right and a user settings on the left. In the user settings, add the following, save & close.

```json
{
    "extensions": [
        ".html"
    ]
}
```

### Key bindings

- The key bindings are configured so that pressing <kbd>shift + {</kbd> **twice** will automatically add spaces on both sides for the inner brace expression block & place the cursor in the center, like so `{{ | }}`.
- |||ly pressing <kbd>shift + %</kbd> within `{}` will add spaces on both sides of the inner `%` like so `{% | %}`
- You can use <kbd>ctrl + /</kbd> for inserting Jinja style line comments (`## This is a line comment`)
- Similarly, use <kbd>ctrl + shift + /</kbd> for block style comments (`{# This is a block comment #}`)

### Auto completions
In order to get the auto completions, go to `Preferences: Settings` from the command palette and paste the following in the `Preferences.sublime-settings -- User` (the right hand window)

```json
"auto_complete_selector": "text.jinja, meta.tag - punctuation.definition.tag.begin, source - comment - string.quoted.double.block - string.quoted.single.block - string.unquoted.heredoc",
"auto_complete_triggers":
[
    {"characters": "<", "selector": "text.html"},
    {"selector": "text.jinja, text.html.basic"},
]
```

If you already have these in your user settings, then just copy the Twig related portions into them.

### Snippets

`BetterJinja` only adds basic snippets for common code blocks. If you want more snippets, then please follow the official documentation on
[snippets](https://www.sublimetext.com/docs/completions.html#snippets) and create your own.

|  **Tab Trigger**  |           **Jinja Code Block**           |
|-------------------|-------------------------------------------|
|    ```jwith```    |       ```{% with %}{% endwith %}```       |
|     ```jraw```    |         ```{% raw %}{% endraw %}```       |
|    ```jmacro```   |      ```{% macro %}{% endmacro %}```      |
|   ```jifelse```   |    ```{% if %}{% else %}{% endif %}```    |
|     ```jif```     |         ```{% if %}{% endif %}```         |
|     ```jfor```    |        ```{% for %}{% endfor %}```        |
|   ```jfilter```   |     ```{% filter %}{% endfilter %}```     |
|   ```jextends```  |            ```{% extends %}```            |
|     ```jexp```    |                ```{%  %}```               |
|    ```jcall```    |       ```{% call %}{% endcall %}```       |
|    ```jblock```   |      ```{% block %}{% endblock %}```      |
| ```jautoescape``` | ```{% autoescape %}{% endautoescape %}``` |

If you want to ignore the snippets that are provided by default, you can use the `ignored_snippets` setting.

`"ignored_snippets": ["BetterJinja/*"]`

## Issues & Feature requests.

There is always scope for improvements so please do report any bug(s) that you encounter or request for feature(s) that this package should support.

Please follow the issue & feature request templates that have been setup while reporting any bug(s) or requesting for feature(s) (So as to stay as organised as possible).

## Acknowledgements.

The [syntax_test.yml](https://github.com/Sublime-Instincts/BetterTwig/.github/workflows/syntax_test.yml) is taken & used (with some modifications) from the official [Packages](https://github.com/sublimehq/Packages) repository. So full credit goes to them for it.

## License
The MIT License (MIT)

Copyright 2020-2022 &copy; Ashwin Shenoy

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

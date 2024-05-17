# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2020-08-12

### Added
- Indentation for Jinja code blocks.
- Snippets for commonly used Jinja blocks.
- The main syntax file along with syntax test for the scopes.
- Auto completions for builtin tags, filters, tests and functions. 
- Abiility to use <kbd>ctrl + /</kbd> for Jinja line comments & <kbd>ctrl + shift + /</kbd> for block comments.

## [1.1.0] - 2022-03-27

### Added
- Added command palette entries to open key bindings & documentation.
- Updated all the completion files to use kind, annotation & details.
- Added ability to run syntax tests via GitHub actions.
- Updated issue templates to use GitHub issue forms.

### Fixed
- Prevent snippets from triggering in certain places like strings etc.
- Better scoping for escape characters in strings.
- Improved interpolation scopes.
- Distinguish builtin filters/tests/globals/variables in a better way.
- General syntax cleanups.

### Removed
- Removed the settings file as it's not needed.

## [1.1.1] - 2024-05-12

### Fixed
- Fix package name "Jinja2" in various resource files (fixes #15)
- Fix syntax tests not running (fixes #18)
- Fix snippets' indentation

## [2.0.0]

- Reorganize whole package
- Rewrite all syntax definitons extending ST's (CSS, JavaScript, JSON, HTML, Markdown, XML, YAML)
- fix snippet indentation (now using tabs)

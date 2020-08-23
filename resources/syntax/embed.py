"""Custom macros for syntax embedding."""
from itertools import product

from YAMLMacros.api import raw_macro
from YAMLMacros.lib.include import include_resource


@raw_macro
def base_syntax(path, arguments):
    """Import variables from the base syntax to extend.

    :param      path:       The path to the base syntax, e.g.
                            Packages/HTML/HTML.sublime-syntax
    :type       path:       str
    :param      arguments:  Arguments injected by YAMLMacros
    :type       arguments:  dict

    :returns:   YAML element after macro transformation. This is an empty dict
                so that it can be used in an `apply` macro.
    :rtype:     dict
    """
    syntax_yaml = include_resource(path.value)
    arguments['embedding_language'] = syntax_yaml.get('name', '')
    arguments['embedding_suffixes'] = syntax_yaml.get('file_extensions', [])
    arguments['embedding_syntax_path'] = path.value
    arguments['embedding_scope'] = syntax_yaml.get('scope', '')
    return {}


@raw_macro
def add_suffix(source, suffix, eval):
    """Add a dot-separated suffix to a list of strings.

    :param      source:  List of source strings to suffix.
    :type       source:  List[str]
    :param      suffix:  List of suffixes to append.
    :type       suffix:  str|List[str]
    :param      eval:    Evaluation function injected by YAMLMacros
    :type       eval:    callable

    :returns:   List of suffixed strings. Every element in the source list is
                suffixed by every element in the suffix list.
    :rtype:     List[str]
    """
    suffix = eval(suffix)
    source = eval(source)
    if not isinstance(suffix, list):
        suffix = [suffix]

    return ['{}.{}'.format(base, ext) for base, ext in product(source, suffix)]

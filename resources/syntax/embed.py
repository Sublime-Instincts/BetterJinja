"""Custom macros for syntax embedding."""
from collections import OrderedDict
from itertools import product

from YAMLMacros.api import raw_macro
from YAMLMacros.lib.include import include_resource


@raw_macro
def base_syntax(path, arguments, eval, name=None, line_statements=True):
    """
    Import variables from the base syntax to extend.

    :param      path:             The path to the base syntax, e.g.
                                  Packages/HTML/HTML.sublime-syntax
    :type       path:             str
    :param      arguments:        Arguments injected by YAMLMacros
    :type       arguments:        dict
    :param      eval:             Evaluation function injected by YAMLMacros
    :type       eval:             callable
    :param      name:             The name of the syntax, None for autodetect.
    :type       name:             str|None
    :param      line_statements:  Whether or not to use line statements.
                                  Set to False if the host language uses `#`
                                  for comments.
    :type       line_statements:  boolean

    :returns:   YAML element after macro transformation. This is an empty dict
                so that it can be used in an `apply` macro.
    :rtype:     dict
    """
    syntax_yaml = include_resource(path.value)
    if name is not None:
        name = eval(name)
    if not isinstance(line_statements, bool):
        line_statements = eval(line_statements)

    arguments['embedding_language'] = name or syntax_yaml.get('name', '')
    arguments['embedding_suffixes'] = syntax_yaml.get('file_extensions', [])
    arguments['embedding_syntax_path'] = path.value
    arguments['embedding_scope'] = syntax_yaml.get('scope', '')
    arguments['enable_line_statements'] = line_statements
    return OrderedDict()


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

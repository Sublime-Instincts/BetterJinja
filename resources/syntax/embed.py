from itertools import product

from YAMLMacros.api import raw_macro
from YAMLMacros.lib.include import include_resource


@raw_macro
def base_syntax(path, arguments):
    syntax_yaml = include_resource(path.value)
    arguments['embedding_language'] = syntax_yaml.get('name', '')
    arguments['embedding_suffixes'] = syntax_yaml.get('file_extensions', [])
    arguments['embedding_syntax_path'] = path.value
    arguments['embedding_scope'] = syntax_yaml.get('scope', '')
    return {}


@raw_macro
def add_suffix(source, suffix, eval):
    suffix = eval(suffix)
    source = eval(source)
    if not isinstance(suffix, list):
        suffix = [suffix]

    return ['{}.{}'.format(base, ext) for base, ext in product(source, suffix)]

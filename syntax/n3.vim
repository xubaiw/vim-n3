vim9script

# very incomplete
#
# many taken from:
#
# https://github.com/william-vw/vscode-extension-n3
# https://github.com/niklasl/vim-rdf
# https://github.com/epitzer/vim-rdf-turtle

syntax match n3Comment /\v#.*$/
highlight link n3Comment Comment

syntax keyword n3Predicate a
syntax match n3Predicate /\(\s\|^\)<=\(\s\|$\)/
syntax match n3Predicate /\(\s\|^\)=>\(\s\|$\)/
highlight link n3Predicate Keyword

syntax match n3Separator /\.\|;\|,\|{\|}\|@\|\^\^/
highlight link n3Separator Delimiter

syntax match n3PathSymbol /!\|\^\|<-/
highlight link n3PathSymbol Keyword

syntax region n3Iri start=/<\(-\|=\)\@!/ end=/\(-\|=\)\@<!>/
highlight link n3Iri Constant

syntax match n3String /"\([^"\r\n]\|\\"\)*"/
syntax match n3String /'\([^'\r\n]\|\\'\)*'/
syntax region n3String start=/"""/ end=/"""/
highlight link n3String String

syntax match n3Number /[-+]\?[0-9]\+\(\.[0-9]\+\)\?\(e[-+]\?[0-9]\+\)\?/
highlight link n3Number Number

syntax keyword n3Boolean true false
highlight link n3Boolean Boolean

syntax match n3Prefix /[^\x20-\x20<>\"{}|^`\\!]*:/
highlight link n3Prefix Macro

syntax match n3Suffix /:\@<=[^\x20-\x20<>\"{}|^`\\!]\+/
highlight link n3Suffix Identifier

syntax match n3Variable /?[^\x20-\x20<>\"{}|^`\\!]\+/
highlight link n3Variable Type

syntax match n3Define /@prefix\|PREFIX\|@base\|BASE/
highlight link n3Define Define


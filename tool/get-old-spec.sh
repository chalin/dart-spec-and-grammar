#!/bin/bash
#
# Get earlier releases from googlecode.

vers=$1;

curl https://dart.googlecode.com/svn/branches/$vers/dart/docs/language/dart.sty \
     > DLS-v$vers/dart.sty
curl https://dart.googlecode.com/svn/branches/$vers/dart/docs/language/dartLangSpec.tex \
     > DLS-v$vers/dartLangSpec.tex

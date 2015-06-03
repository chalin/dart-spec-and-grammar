include Makefile.include
SDKGIT?=../sdk
TARGET?=grammar pdf

.PHONY:	default grammar mk cp pdf get clean

default: grammar pdf

grammar: mk cp

mk:;	$(MAKE) -C grammar
cp:;	-cp $(DLS)/grammar*.txt $(DOC)/grammar$(AUTOGEN_SUFFIX).txt
	-cp $(DLS)/grammar*.md $(DOC)/grammar$(AUTOGEN_SUFFIX).md

pdf:;	$(MAKE) -C $(DLS) pdf
	-cp $(DLS)/dartLangSpec.pdf $(DOC)/
	$(MAKE) -C grammar pdf

get:;	$(MAKE) -C DLS/current clean
	tool/get-spec.sh

clean:;	$(MAKE) -C grammar clean
	$(MAKE) -C $(DLS) clean

#------------------------------------------------------------------------------
# E.g.: make 1.9 TARGET='grammar'

1.0:;	$(MAKE) VERS=1.0 DATE=2013-11-14 $(TARGET)
1.3:;	$(MAKE) VERS=1.3 DATE=2014-04-09 $(TARGET)
1.6:;	$(MAKE) VERS=1.6 DATE=2014-08-27 $(TARGET)
1.9:;	$(MAKE) VERS=1.9 DATE=2015-03-26 $(TARGET)

# http://news.dartlang.org/2013/11/dart-10-stable-sdk-for-structured-web.html
# http://news.dartlang.org/2014/04/dart-13-dramatically-improves-server.html
# http://news.dartlang.org/2014/08/dart-16-adds-support-for-deferred.html
# http://news.dartlang.org/2015/03/dart-19-release-youve-been-await-ing-for.html
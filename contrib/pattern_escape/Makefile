# contrib/pattern_escape/Makefile

MODULE_big = pattern_escape
OBJS = pattern_escape.o $(WIN32RES)

EXTENSION = pattern_escape
DATA = pattern_escape--1.0.sql pattern_escape--unpackaged--1.0.sql
DATA_TSEARCH = pattern_escape.rules
PGFILEDESC = "pattern_escape - text search dictionary that removes accents"

REGRESS = pattern_escape

# We need a UTF8 database
ENCODING = UTF8
NO_LOCALE = 1

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/pattern_escape
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif

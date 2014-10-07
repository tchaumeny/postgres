/*-------------------------------------------------------------------------
 *
 * pattern_escape.c
 *	  Text search pattern_escape dictionary
 *
 * Copyright (c) 2009-2014, PostgreSQL Global Development Group
 *
 * IDENTIFICATION
 *	  contrib/pattern_escape/pattern_escape.c
 *
 *-------------------------------------------------------------------------
 */

#include "postgres.h"


PG_MODULE_MAGIC;

/*
 * Function-like wrapper for dictionary
 */
PG_FUNCTION_INFO_V1(pattern_escape);

Datum
concat_text(PG_FUNCTION_ARGS)
{
    text  *arg = PG_GETARG_TEXT_P(0);
    PG_RETURN_TEXT_P(arg);
}


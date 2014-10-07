/* contrib/pattern_escape/pattern_escape--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION pattern_escape" to load this file. \quit

CREATE FUNCTION pattern_escape(text)
	RETURNS text
	AS 'MODULE_PATHNAME', 'pattern_escape'
	LANGUAGE C STABLE STRICT;

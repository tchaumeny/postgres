/* contrib/pattern_escape/pattern_escape--unpackaged--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION pattern_escape FROM unpackaged" to load this file. \quit

ALTER EXTENSION pattern_escape ADD function pattern_escape(regdictionary,text);
ALTER EXTENSION pattern_escape ADD function pattern_escape(text);
ALTER EXTENSION pattern_escape ADD function pattern_escape_init(internal);
ALTER EXTENSION pattern_escape ADD function pattern_escape_lexize(internal,internal,internal,internal);
ALTER EXTENSION pattern_escape ADD text search template pattern_escape;
ALTER EXTENSION pattern_escape ADD text search dictionary pattern_escape;

-- These functions are marked as stable in 9.1, were not before:

ALTER FUNCTION pattern_escape(regdictionary, text) STABLE;
ALTER FUNCTION pattern_escape(text) STABLE;

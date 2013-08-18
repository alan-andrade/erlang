% Excercise 3.2 - Simple Pattern Matching.
%
% Created by Alan Andrade.
% @alan_andrade
%
-module(boolean).
-compile(export_all).

% NOT
b_not(true) ->
  false;

b_not(false) ->
  true.

b_and(false,true) ->
  false;


% AND
b_and(true,false) ->
  false;

b_and(false,false) ->
  true;

b_and(true, true) ->
  true.


% OR
b_or(true,_) ->
  true;

b_or(false,true) ->
  true;

b_or(false, false) ->
  false.


% NAND
b_nand(true, true) ->
  b_not(b_and(true, true));

b_nand(true, false) ->
  b_not(b_and(true,false));

b_nand(false, true) ->
  b_not(b_and(false,true));

b_nand(false, false) ->
  b_not(b_and(false,false)).


% 2> c(boolean).
% {ok,boolean}
% 3> boolean:b_not(true).
% false
% 4> boolean:b_and(true,true).
% true
% 5> boolean:b_and(true,false).
% false
% 6> boolean:b_and(false,false).
% true
% 7> boolean:b_nand(true, true).
% false
% 8> boolean:b_nand(true, false).
% true
% 9> boolean:b_or(true,false).
% true
% 10> boolean:b_or(false,true).
% true
% 11> boolean:b_or(false,false).
% false

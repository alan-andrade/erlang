% Excercies 3-2 from Erlang book.
%
% created by Alan Andrade
%
-module(mlist).
-export([create/1, create_reverse/1]).

% Write a function that returns a list of the format [1, 2, ..., N-1, N].
%
% create(3) => [1,2,3].

create(Int) ->
  create_list(1, Int).

create_list(Base, Limit) when Base == Limit ->
  [Base];

create_list(Base, Limit) ->
  [ Base | create_list(Base + 1, Limit) ].

% Write a function that returns a list of the format [N, N-1, .., 2, 1].
%
% create_reverse(3) => [3, 2, 1].

create_reverse(1) ->
  [1];

create_reverse(Int) ->
  [ Int | create_reverse(Int-1) ].

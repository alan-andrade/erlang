% Erlang excercies 3-3. Side Effects.
%

-module(se).
-export([prange/1, prange_even/1]).


% Write a function that prints out the integers between 1 and N.
%
prange(C, N) when C == N ->
  io:format("~p~n", [C]);

prange(C, N) ->
  io:format("~p, ", [C]),
  prange(C+1, N).

prange(N) ->
  prange(1, N).

% Write a funtion that prints out the even integers between 1 and N.
%
prange_even(N) ->
  prange_even(1, N).

prange_even(C, N) when C rem 2 == 0 , C =< N ->
  io:format("~p, ", [C]),
  prange_even(C+1, N);
prange_even(C, N) when C < N ->
  prange_even(C+1, N);
prange_even(C, N) when C >= N ->
  io:format("~n", []).

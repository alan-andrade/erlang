% Excercises chapter 3.
%
% Created by Alan Andrade
%

-module(ex).
-export([sum/1, sum/2]).

% Write a function sum/2 which, given a positive integer N, will return the sum
% of all the integers between 1 and N.
%
% sum(5) => 15.
sum(Int) ->
  sum_acc(Int, 0).

  sum_acc(0,   C) -> C;
  sum_acc(Int, C) ->
    sum_acc(Int-1, C + Int).

% Write a function sum/2 which, given two integers N and M, where N =< M, will
% return the sum of the interfval between N and M. If N > M, you want your
% process to terminate abnormally.
%
% sum(1,3) => 6.
% sum(6,6) => 6.
sum(L, R) when L =< R ->
  sum_range_acc(L, R, 0).

  sum_range_acc(L, R, C) when L == R -> C+L;
  sum_range_acc(L, R, C) -> sum_range_acc(L+1, R, L+C).

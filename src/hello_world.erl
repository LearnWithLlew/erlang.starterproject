-module(hello_world).

-export([hello/0, add/2]).

hello() ->
  "Hello, World!".

add(A, B) ->
  A + B.

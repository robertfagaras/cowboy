%%%-------------------------------------------------------------------
%% @doc cowboy public API
%% @end
%%%-------------------------------------------------------------------

-module(cowboy_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    cowboy_sup:start_link().

stop(_State) ->
    ok.

%% internal functions

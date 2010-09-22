%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the retards application.

-module(retards_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for retards.
start(_Type, _StartArgs) ->
    retards_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for retards.
stop(_State) ->
    ok.

%% @author author <author@example.com>
%% @copyright YYYY author.
%% @doc Example webmachine_resource.

-module(retards_resource).
-export([init/1, resource_exists/2, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

resource_exists(Rd, Ctx) ->
  {true, Rd, decrement(1000000)}.
  
to_html(ReqData, State) ->
  {"Hello, world", ReqData, State}.

decrement(0) ->
	0;
decrement(Count) ->
	decrement(Count - 1).

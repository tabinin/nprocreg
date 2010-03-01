% Nitrogen Web Framework for Erlang
% Copyright (c) 2008-2010 Rusty Klophaus
% See MIT-LICENSE for licensing information.

-module (mprocreg_registry_handler).
-behaviour (process_registry_handler).
-include ("wf.inc").
-export ([
    init/2, 
    finish/2,
    get_pid/3,
    get_pid/4
]).

init(_Config, State) -> 
    {ok, State}.

finish(_Config, State) ->
    {ok, State}.

get_pid(Key, _Config, State) ->
    Pid = mprocreg:get_pid(Key),
    {ok, Pid, State}.

get_pid(Key, Function, _Config, State) ->
    Pid = mprocreg:get_pid(Key, Function),
    {ok, Pid, State}.

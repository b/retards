%%-*- mode: erlang -*-
{application, retards,
 [
  {description, "retards"},
  {vsn, "1"},
  {modules, [
             retards,
             retards_app,
             retards_sup,
             retards_resource
            ]},
  {registered, []},
  {applications, [
                  kernel,
                  stdlib,
                  crypto,
                  mochiweb,
                  webmachine
                 ]},
  {mod, { retards_app, []}},
  {env, []}
 ]}.

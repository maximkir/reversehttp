{application, reversehttp,
 [{description, "reversehttp"},
  {vsn, "0.01"},
  {modules, [
    reversehttp,
    reversehttp_app,
    reversehttp_sup,
    reversehttp_web,
    reversehttp_deps
  ]},
  {registered, []},
  {mod, {reversehttp_app, []}},
  {env, [{reflector_config,
          [{request_parser_module, reqparser_path},
           {access_point_hosts, ["localhost",
                                 "localhost:8000"]},
           {access_point_paths, ["/reversehttp"]}]},
         {port, 8000}]},
  {applications, [kernel, stdlib, crypto]}]}.

This build has only been used/tested to live stream with the rtmp module and to fetch ssl certificates.<br>
The .exe is in nginx-1.30.4/objs folder and you can add it to path by using win+r -> to run sysdm.cpl.<br>
The nginx.conf needs to be created in nginx-rtmp-build/conf and you can easily duplicate nginx.conf.default and rename it to nginx.conf, another thing to mention about nginx.conf in windows directives that need a path like location, access_log, error_log ssl_certificate, ssl_certificate_key you must use / forward slash.

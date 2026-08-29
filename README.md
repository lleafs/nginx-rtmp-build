# Main README
This build has only been used/tested to live stream with the rtmp module and to fetch ssl certificates.<br>
<br>
I used MSYS2 MINGW64, check out the bash script, it was put together after a few builds fails->[build-nginx.sh](./nginx-1.30.4/build-nginx.sh).<br>
<br>
nginx.exe can be found in "nginx-1.30.4\objs" folder and if you wish, you can add the executable to path inside environment variables by running (win+r) sysdm.cpl->advanced options<br>
<br>
The nginx.conf needs to be created in "nginx-rtmp-build\conf" you can easily copy&paste nginx.conf.default and rename the duplicate to nginx.conf<br>
<br>
Directives in "nginx-rtmp-build\conf\nginx.conf" like location, access_log, error_log, ssl_certificate, ssl_certificate_key that need a path to point to a directory or a file you must use / forward slash.<br>
<br>
Example:<br>
 access_log  /nginx-rtmp-build/logs/access.log;<br>
 error_log   /nginx-rtmp-build/logs/error.log debug;<br>
<br>
For full nginx documentation, see the [nginx-1.30.4 README](./nginx-1.30.4/README.md).


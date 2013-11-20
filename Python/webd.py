#
# start a web server and show current location
#


import os, sys;
from BaseHTTPServer import HTTPServer;
from CGIHTTPServer import CGIHTTPRequestHandler;

server_address =  ("", 8080);
server = HTTPServer(server_address,  CGIHTTPRequestHandler);
server.serve_forever()
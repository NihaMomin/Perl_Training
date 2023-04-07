#!/usr/bin/perl -w

use warnings FATAL => 'all';
use strict;
#  This line is sent back to the browser and specifies the content type to be displayed on the browser screen.
# Now you must have undertood basic concept of CGI and you can write many complicated CGI programs using Perl.
# This script can interact with any other exertnal system also to exchange information such as a database, web services, or any other complex interfaces.


# The very first line Content-type:text/html\r\n\r\n is a part of HTTP header,
# which is sent to the browser so that browser can understand the incoming content from server side.
# All the HTTP header will be in the following form −
print "Content-type:text/html\r\n\r\n";
print '<html>';
print '<head>';
print '<title>Hello Word - First CGI Program</title>';
print '</head>';
print '<body>';
print '<h2>Hello Word! This is my first CGI program</h2>';
print '</body>';
print '</html>';
1;

# copy the file to /usr/lib/cgi-bin/ foler
# change permissions
# run http://localhost/cgi-bin/hello.cgi
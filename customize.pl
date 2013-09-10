#!/usr/bin/env perl

use warnings;
use strict;
use CGI qw/:standard/;

my $name = param('name');

print header,start_html;

print "<h3>1. drag the customized link (bookmarklet) below to your bookmarks bar</h3>";

print qq|<a href="javascript: { document.getElementById('CF00N30000006gryA').value = 'CLOSED'; document.getElementById('CF00N30000006gry6').value = '|;

print $name;

print qq|'; document.getElementById('00N30000008kB6x').value = '5'; document.getElementById('00N30000006gryZ').value = 'fixed'; var x = document.getElementsByClassName('dateFormat')[0].innerHTML; var start = x.search(/>/); var end = x.search(/a>/); var date = x.slice(start+1,end-2); document.getElementById('00N30000006gryP').value = date; void(0); }">CLOSE TICKET</a>|;

print "<h3>2. log into salesforce, edit an incident (ticket)</h3>";
print "<h3>3. click on bookmarklet in your bookmarks toolbar to populate required fields</h3>";
print "<h3>4. click save in ticket</h3>";

print "<br><br>extra help: youtube <a href='http://www.youtube.com/watch?v=3YxX8E4iAlI'>video</a> shows how to drag bookmarklet";

print end_html;

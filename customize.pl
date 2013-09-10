#!/usr/bin/env perl

use warnings;
use strict;
use CGI qw/:standard/;

my $name = param('name');

print header,start_html;

print "<h3>drag the customized link below to your bookmarks bar</h3>";

print <<EOF
<a href='javascript: { document.getElementById("CF00N30000006gryA").value = "CLOSED"; document.getElementById("CF00N30000006gry6").value = "$name"; document.getElementById("00N30000008kB6x").value = "5"; document.getElementById("00N30000006gryZ").value = "fixed"; var now = new Date(); function AddZero(num) { return (num >= 0 && num < 10) ? "0" + num : num + ""; }; function FixHour(num) { return (num >= 13 ? num - 12 : num); }; var strDateTime = [[now.getMonth() + 1, now.getDate(), now.getFullYear()].join("/"), [FixHour(now.getHours()), AddZero(now.getMinutes())].join(":"), now.getHours() >= 12 ? "PM" : "AM"].join(" "); document.getElementById("00N30000006gryP").value = strDateTime; void(0); }'>CLOSE TICKET</a>
EOF
;

print end_html;

#!/usr/bin/env perl
use CGI;
use strict;

my $cgi = CGI->new;

print   $cgi->header,
        $cgi->start_html("Environment Variables"),
        $cgi->h1('%ENV'),
        $cgi->table(map { $cgi->Tr($cgi->td($cgi->escapeHTML($_)), $cgi->td($cgi->escapeHTML($ENV{$_}))) } keys(%ENV)),
        $cgi->end_html();
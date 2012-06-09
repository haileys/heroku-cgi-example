#!/usr/bin/env perl
use CGI;
use strict;

my $cgi = CGI->new;

print $cgi->header;

print "Hello world!";
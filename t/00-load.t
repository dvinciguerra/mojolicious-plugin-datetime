#!perl -T
use 5.010;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Mojolicious::Plugin::DateTime' ) || print "Bail out!\n";
}

diag( "Testing Mojolicious::Plugin::DateTime $Mojolicious::Plugin::DateTime::VERSION, Perl $], $^X" );

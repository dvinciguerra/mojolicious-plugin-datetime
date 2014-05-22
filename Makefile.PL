use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Mojolicious::Plugin::DateTime',
    VERSION_FROM     => 'lib/Mojolicious/Plugin/DateTime.pm',
    ABSTRACT_FROM    => 'lib/Mojolicious/Plugin/DateTime.pm',
    AUTHOR           => 'Daniel Vinciguerra <daniel.vinciguerra@bivee.com.br>',
    LICENSE          => 'Artistic_2_0',
    MIN_PERL_VERSION => 5.010,
    CONFIGURE_REQUIRES => { 'ExtUtils::MakeMaker' => 0, },
    BUILD_REQUIRES => { 'Test::More' => 0, },
    PREREQ_PM      => {
        'Mojolicious' => '4.98',
        'DateTime'    => ''
    },
    test => { TESTS => 't/*.t' }
);

package Mojolicious::Plugin::DateTime;
use Mojo::Base 'Mojolicious::Plugin';

our $VERSION = '0.01';

use DateTime;

sub register {
    my ( $self, $app ) = @_;

    # datetime method helper
    $app->helper(
        datetime => sub {
            my $self = shift;
            return DateTime->new(@_);
        }
    );

    # datetime short way
    $app->helper(
        dt => sub {
            return shift->datetime(@_);
        }
    );

    # datetime now method call
    $app->helper(
        now => sub {
            my $self = shift;
            return DateTime->now(@_);
        }
    )

}

1;

__END__
=head1 NAME

Mojolicious::Plugin::DateTime - Mojolicious DateTime module integration!

=head1 VERSION

Version 0.01

=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Mojolicious::Plugin::DateTime;

    my $foo = Mojolicious::Plugin::DateTime->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS



=head1 AUTHOR

Daniel Vinciguerra <daniel.vinciguerra at bivee.com.br>

=head1 BUGS

Please report any bugs or feature requests to C<bug-mojolicious-plugin-datetime at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Mojolicious-Plugin-DateTime>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.


=head1 LICENSE AND COPYRIGHT

Copyright 2014 Daniel Vinciguerra.

This program is free software; you can redistribute it and/or modify it
under the same terms of Perl Programming Language itself.

=cut

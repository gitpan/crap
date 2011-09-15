package crap;
{
  $crap::VERSION = '0.02';
}

#ABSTRACT: just don't take any

use strict;
use warnings;

sub import {
  warnings->unimport();
  strict->unimport();
}

sub unimport {
  strict->import();
  warnings->import();
}

q[for when it hits the fan];


__END__
=pod

=head1 NAME

crap - just don't take any

=head1 VERSION

version 0.02

=head1 SYNOPSIS

  no crap;

  # strict and warnings are enabled

  $foo = 'bar'; # wrong

  use crap;

  # no strictures or warnings now

  $bar = 'foo' # This is 'okay' now

=head1 DESCRIPTION

Enables L<strict> and L<warnings> without all the typing.

To enable just type C<no crap> in your script.

C<use crap> disables L<strict> and L<warnings>.

=begin Pod::Coverage

  import

  unimport

=end Pod::Coverage

=head1 AUTHOR

Chris Williams <chris@bingosnet.co.uk>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Chris Williams.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


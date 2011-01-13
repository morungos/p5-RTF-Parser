#!/usr/bin/perl

use strict;
use Test::More tests => 1;
use RTF::Parser;

{
	local( $^W );
	*RTF::Parser::text = sub { my $self = shift; $self->{_TEST_BUFF} = shift; };
}

my $parser = RTF::Parser->new( );

$parser->parse_string( 'asdf' );

is( $parser->{_TEST_BUFF}, "asdf", 'Data read from string' );
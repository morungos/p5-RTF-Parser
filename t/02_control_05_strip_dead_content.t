#!/usr/bin/perl

use strict;
use RTF::TEXT::Converter;
use Test::More tests => 1;

my $output;

my $object = RTF::TEXT::Converter->new(
        
	output => \$output
        
);

my $input = <<"__TEXT__";
{\\rtf1\\ansi\\deff0{\\fonttbl{\\f0\\fnil\\fcharset0 Courier New;}}
\\viewkind4\\uc1\\pard\\lang1033\\f0\\fs20 Macro e-mail outlook \\par
}
asdf\c@
ddd
asdfasdfasdfas
dfasdfffffffffffffffffffffffffffffffffffffffffffffffff


sdaaaaaaaaaaaafffffffffffffffffffffffasdf

asdfasdf







234asefasdfasdrasdrasdrd





asdf
__TEXT__

open(my $stream , "<", \$input) or die("Can't open input: $!");

$object->parse_stream( $stream );

close($stream);

$output =~ s/\s+$//;

is( $output, "Macro e-mail outlook", "Content after last } stripped" );

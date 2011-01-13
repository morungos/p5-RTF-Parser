
use ExtUtils::MakeMaker;

&WriteMakefile(
               NAME          => 'RTF::Parser',
               EXE_FILES     => [ 'bin/rtf2html', 'bin/rtf2text' ],
               DISTNAME      => 'RTF-Parser',
               VERSION_FROM  => 'lib/RTF/Parser.pm', 
	       PREREQ_PM     => { 'RTF::Tokenizer' => '1.04' },
               dist          => {COMPRESS => 'gzip', SUFFIX => 'gz', },
              );


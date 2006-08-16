use strict;
use Wx::build::MakeMaker;

$Carp::Verbose = 1;
print "is_core = ", Wx::build::MakeMaker::is_core(), "\n";
print "is_wxPerl_tree = ", Wx::build::MakeMaker::is_wxPerl_tree(), "\n";
print "get_api_directory = ", Wx::build::MakeMaker::get_api_directory(), "\n";

wxWriteMakefile(
	NAME			=> 'Wx::TreeListCtrl',
    VERSION_FROM	=> 'lib/Wx/TreeListCtrl.pm',
	ABSTRACT_FROM	=> 'lib/Wx/TreeListCtrl.pm',
	AUTHOR			=> 'Mark Wardell <mwardell@cpan.org>',
	WX_CORE_LIB		=> 'adv core base',
	NO_META       => 1,
##	PREREQ_PM		=> {}, # e.g., Module::Name => 1.1
##    LIBS			=> [''], # e.g., '-lm'
##    INC           => '-I.', # e.g., '-I. -I/usr/include/other'
##    OBJECT            => '$(O_FILES)', # link all the C files too
);

use strict;
use Wx::build::MakeMaker;

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

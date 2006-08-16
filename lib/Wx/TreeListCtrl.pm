package Wx::TreeListCtrl;

use strict;
use warnings;
use Wx::Mini;

our @EXPORT_OK = qw();
our @EXPORT = qw();

our $VERSION = '0.01';

Wx::load_dll( 'core' );
Wx::load_dll( 'base' );
Wx::wx_boot( 'Wx::TreeListCtrl', $VERSION );

# Preloaded methods go here.

1;
__END__

=head1 NAME

Wx::TreeListCtrl - interface to the Wx::TreeListCtrl class

=head1 SYNOPSIS

  use Wx::TreeListCtrl;

=head1 DESCRIPTION

Wx::TreeListCtrl is a wrapper for the wxTreeListCtrl class in the wxWidgets GUI toolkit.

=head2 EXPORT

None by default.

=head2 Exportable constants

  DEFAULT_COL_WIDTH
  wxTR_VIRTUAL



=head1 SEE ALSO

L<http://wxperl.sourceforge.net>
L<http://www.wxwidgets.org>

=head1 AUTHOR

Mark Wardell <mwardell@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006 by Mark Wardell

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.7 or,
at your option, any later version of Perl 5 you may have available.

This package includes the wxTreeListCtrl source code which you may use
acording to the the wxWidgets license.

The authors of the wxTreeListCtrl package are:
	Robert Roebling,
	Julian Smart,
	Alberto Griggio,
	Vadim Zeitlin,
	Otto Wyss,
	Guru Kathiresan

=cut

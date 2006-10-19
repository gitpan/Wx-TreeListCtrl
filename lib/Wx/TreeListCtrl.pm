package Wx::TreeListCtrl;

use strict;
use warnings;
use vars qw( $VERSION @constants );

$VERSION = '0.05';

@constants = qw(
	wxTL_MODE_NAV_FULLTREE
	wxTL_MODE_NAV_EXPANDED
	wxTL_MODE_NAV_VISIBLE
	wxTL_MODE_NAV_LEVEL
	wxTL_MODE_FIND_EXACT
	wxTL_MODE_FIND_PARTIAL
	wxTL_MODE_FIND_NOCASE
	wxTR_HAS_BUTTONS
	wxTR_NO_LINES
	wxTR_LINES_AT_ROOT
	wxTR_TWIST_BUTTONS
	wxTR_MULTIPLE
	wxTR_EXTENDED
	wxTR_HAS_VARIABLE_ROW_HEIGHT
	wxTR_EDIT_LABELS
	wxTR_ROW_LINES
	wxTR_HIDE_ROOT
	wxTR_FULL_ROW_HIGHLIGHT
	wxTR_VIRTUAL
	wxTR_VRULE
	wxTR_HRULE
	wxTR_SHOW_ROOT_LABEL_ONLY
);

push @Wx::EXPORT_OK, @constants;
$Wx::EXPORT_TAGS{'treelist'} = [ @constants ];

Wx::load_dll( 'core' );
Wx::wx_boot( 'Wx::TreeListCtrl', $VERSION );

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

  wxTR_VIRTUAL
  wxTR_SHOW_ROOT_LABEL_ONLY
  wxTR_HAS_BUTTONS
  wxTR_NO_LINES
  wxTR_LINES_AT_ROOT
  wxTR_TWIST_BUTTONS
  wxTR_MULTIPLE
  wxTR_EXTENDED
  wxTR_HAS_VARIABLE_ROW_HEIGHT
  wxTR_EDIT_LABELS
  wxTR_ROW_LINES
  wxTR_HIDE_ROOT
  wxTR_FULL_ROW_HIGHLIGHT
  wxTR_VIRTUAL
  wxTR_VRULE
  wxTR_HRULE
  wxTR_SHOW_ROOT_LABEL_ONLY


=head1 SEE ALSO

L<http://wxperl.sourceforge.net>, 
L<http://www.wxwidgets.org>

=head1 AUTHOR

Mark Wardell <mwardell@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006 by Mark Wardell

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.7 or,
at your option, any later version of Perl 5 you may have available.

This package includes the wxTreeListCtrl source code which you may use
according to the the wxWidgets license.

The authors of the wxTreeListCtrl package are:
	Robert Roebling,
	Julian Smart,
	Alberto Griggio,
	Vadim Zeitlin,
	Otto Wyss,
	Guru Kathiresan

=cut

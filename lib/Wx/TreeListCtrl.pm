package Wx::TreeListCtrl;
use strict;
use warnings;
use Wx;

our $VERSION = '0.06';

our @constants = qw(
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
     wxTR_DEFAULT_STYLE
     wxTR_SINGLE
     wxTR_NO_BUTTONS
     wxTR_VIRTUAL
     wxTR_COLUMN_LINES
     wxTREE_HITTEST_ONITEMCOLUMN
     wxTR_SHOW_ROOT_LABEL_ONLY
);

push @Wx::EXPORT_OK, @constants;
$Wx::EXPORT_TAGS{'treelist'} = [ @constants ];

Wx::wx_boot( 'Wx::TreeListCtrl', $VERSION );

#
# confirm inheritance tree
#

no strict;

package Wx::TreeListCtrl;  @ISA = qw( Wx::Control );

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
  wxTR_DEFAULT_STYLE
  wxTR_SINGLE
  wxTR_NO_BUTTONS
  wxTR_VIRTUAL
  wxTR_COLUMN_LINES
  wxTREE_HITTEST_ONITEMCOLUMN
  wxTR_SHOW_ROOT_LABEL_ONLY  

=head1 DOCUMENTATION

L<http://wxcode.sourceforge.net/components/treelistctrl/reference.html>, 

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

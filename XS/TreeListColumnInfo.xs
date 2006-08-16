#################################################################################
# Name:        XS/TreeListColumnInfo.xs
# Purpose:     XS for Wx::TreeListColumnInfo
# Author:      Mark Wardell
# Modified by:
# Created:     08/08/2006
# RCS-ID:      $Id: TreeListColumnInfo.xs,v 1.00 2006/08/08 10:31:01 $
# Copyright:   (c) 2006 Mark Wardell
# Licence:     This program is free software; you can redistribute it and/or
#              modify it under the same terms as Perl itself
##################################################################################

MODULE=Wx__TreeListCtrl PACKAGE=Wx::TreeListColumnInfo

wxTreeListColumnInfo*
new( CLASS, text, width = DEFAULT_COL_WIDTH, flag = wxALIGN_LEFT, image = -1, shown = true, edit = false )
    PlClassName CLASS
	wxString text
	int width
	int flag
	int image
	bool shown
	bool edit
  CODE:
    RETVAL = new wxTreeListColumnInfo( text, width, flag, image, shown, edit );
  OUTPUT:
    RETVAL

wxString
wxTreeListColumnInfo::GetText()

int
wxTreeListColumnInfo::GetWidth()

int
wxTreeListColumnInfo::GetAlignment()

bool
wxTreeListColumnInfo::IsEditable()

bool
wxTreeListColumnInfo::IsShown()

#wxTreeListColumnInfo*
#wxTreeListColumnInfo::SetText( text )
#	wxString text
#  CODE:
#    RETVAL = THIS->SetText( text );
#  OUTPUT:
#    RETVAL

#wxTreeListColumnInfo*
#wxTreeListColumnInfo::SetWidth( width )
#	int width

#wxTreeListColumnInfo*
#wxTreeListColumnInfo::SetAlignment( flag )
#	int flag

#wxTreeListColumnInfo*
#wxTreeListColumnInfo::SetEditable( edit )
#	bool edit

#wxTreeListColumnInfo*
#wxTreeListColumnInfo::SetShown( shown )
#	bool shown

MODULE=Wx__TreeListCtrl

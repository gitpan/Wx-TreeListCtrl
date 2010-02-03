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

#include <cpp/helpers.h>


# DECLARE_OVERLOAD( wtlc, Wx::TreeListColumnInfo )


void
new( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_wtlc, newCopy )
        MATCH_ANY_REDISP( newFull )
    END_OVERLOAD( "Wx::TreeListColumnInfo::new" )


wxTreeListColumnInfo*
newCopy( CLASS, other )
    PlClassName CLASS
	wxTreeListColumnInfo* other
  CODE:
    RETVAL = new wxTreeListColumnInfo( *other );
  OUTPUT:
    RETVAL


wxTreeListColumnInfo*
newFull( CLASS, text, width = DEFAULT_COL_WIDTH, flag = wxALIGN_LEFT, image = -1, shown = true, edit = false )
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


wxTreeListColumnInfo*
wxTreeListColumnInfo::SetText( text )
    wxString text
  CODE:
    RETVAL = new wxTreeListColumnInfo( THIS->SetText( text ) );
  OUTPUT:
    RETVAL

int
wxTreeListColumnInfo::GetWidth()


wxTreeListColumnInfo*
wxTreeListColumnInfo::SetWidth( width )
    int width
  CODE:
    RETVAL = new wxTreeListColumnInfo( THIS->SetWidth( width ) );
  OUTPUT:
    RETVAL


int
wxTreeListColumnInfo::GetAlignment()


wxTreeListColumnInfo*
wxTreeListColumnInfo::SetAlignment( flag )
    int flag
  CODE:
    RETVAL = new wxTreeListColumnInfo( THIS->SetAlignment( flag ) );
  OUTPUT:
    RETVAL


int
wxTreeListColumnInfo::GetImage()


wxTreeListColumnInfo*
wxTreeListColumnInfo::SetImage( image )
    int image
  CODE:
    RETVAL = new wxTreeListColumnInfo( THIS->SetImage( image ) );
  OUTPUT:
    RETVAL


int
wxTreeListColumnInfo::GetSelectedImage()

wxTreeListColumnInfo*
wxTreeListColumnInfo::SetSelectedImage( image )
    int image
  CODE:
    RETVAL = new wxTreeListColumnInfo( THIS->SetSelectedImage( image ) );
  OUTPUT:
    RETVAL


bool
wxTreeListColumnInfo::IsEditable()


wxTreeListColumnInfo*
wxTreeListColumnInfo::SetEditable( edit )
    bool edit
  CODE:
    RETVAL = new wxTreeListColumnInfo( THIS->SetEditable( edit ) );
  OUTPUT:
    RETVAL     


bool
wxTreeListColumnInfo::IsShown()

wxTreeListColumnInfo*
wxTreeListColumnInfo::SetShown( shown )
    bool shown
  CODE:
    RETVAL = new wxTreeListColumnInfo( THIS->SetEditable( shown ) );
  OUTPUT:
    RETVAL


MODULE=Wx__TreeListCtrl

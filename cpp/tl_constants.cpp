/////////////////////////////////////////////////////////////////////////////
// Name:        cpp/tl_constants.cpp
// Purpose:     constants for Wx::TreeListCtrl
// Author:      Mark Wardell
// Modified by:
// Created:     16/08/2008
// RCS-ID:      $Id: tl_constants.cpp,v 1.0 2006/08/16 21:12:52 mwardell Exp $
// Copyright:   (c) 2001-2004 Mattia Barbon
// Licence:     This program is free software; you can redistribute it and/or
//              modify it under the same terms as Perl itself
/////////////////////////////////////////////////////////////////////////////

#include "cpp/constants.h"

double treelist_constant( const char* name, int arg )
{
    // !package: Wx
    // !parser: sub { $_[0] =~ m<^\s*r\w*\(\s*(\w+)\s*\);\s*(?://(.*))?$> }
    // !tag: grid
#define r( n ) \
    if( strEQ( name, #n ) ) \
        return n;

    WX_PL_CONSTANT_INIT();

    switch( fl )
    {
    case 'T':
		r( wxTL_MODE_NAV_FULLTREE );
		r( wxTL_MODE_NAV_EXPANDED );
		r( wxTL_MODE_NAV_VISIBLE );
		r( wxTL_MODE_NAV_LEVEL );
		r( wxTL_MODE_FIND_EXACT );
		r( wxTL_MODE_FIND_PARTIAL );
		r( wxTL_MODE_FIND_NOCASE );
		r( wxTR_HAS_BUTTONS );
		r( wxTR_NO_LINES );
		r( wxTR_LINES_AT_ROOT );
		r( wxTR_TWIST_BUTTONS );
		r( wxTR_MULTIPLE );
		r( wxTR_EXTENDED );
		r( wxTR_HAS_VARIABLE_ROW_HEIGHT );
		r( wxTR_EDIT_LABELS );
		r( wxTR_ROW_LINES );
		r( wxTR_HIDE_ROOT );
		r( wxTR_FULL_ROW_HIGHLIGHT );
		r( wxTR_VIRTUAL );
		r( wxTR_VRULE );
		r( wxTR_HRULE );
		r( wxTR_SHOW_ROOT_LABEL_ONLY );
		break;
    default:
//        if( strEQ( name, "wxGridSelectCells" ) )
//            return wxGrid::wxGridSelectCells;
//        if( strEQ( name, "wxGridSelectRows" ) )
//            return wxGrid::wxGridSelectRows;
//        if( strEQ( name, "wxGridSelectColumns" ) )
//            return wxGrid::wxGridSelectColumns;
        break;
    }
#undef r

  WX_PL_CONSTANT_CLEANUP();
}

wxPlConstants treelist_module( &treelist_constant );

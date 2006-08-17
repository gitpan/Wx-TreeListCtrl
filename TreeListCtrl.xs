/////////////////////////////////////////////////////////////////////////////
// Name:        TreeListCtrl.xs
// Purpose:     XS for Wx::TreeListCtrl
// Author:      Mark Wardell
// Modified by:
// Created:     08/08/2006
// RCS-ID:      $Id: TreeListCtrl.xs,v 1.00 2006/08/08 10:31:01 $
// Copyright:   (c) 2006 Mark Wardell
// Licence:     This program is free software; you can redistribute it and/or
//              modify it under the same terms as Perl itself
/////////////////////////////////////////////////////////////////////////////

#define PERL_NO_GET_CONTEXT
#define WXDLLEXPORT_TREE
#include "cpp/wxapi.h"
#undef THIS

#include "cpp/overload.h"
#include "cpp/treelistctrl.cpp"

MODULE=Wx__TreeListCtrl

BOOT:
  INIT_PLI_HELPERS( wx_pli_helpers );

INCLUDE: XS/TreeListCtrl.xs
INCLUDE: XS/TreeListColumnInfo.xs

#include "cpp/tl_constants.cpp"

MODULE=Wx__TreeListCtrl

#################################################################################
# Name:        XS/TreeListCtrl.xs
# Purpose:     XS for Wx::TreeListCtrl
# Author:      Mark Wardell
# Modified by:
# Created:     08/08/2006
# RCS-ID:      $Id: TreeListCtrl.xs,v 1.00 2006/08/08 10:31:01 $
# Copyright:   (c) 2006 Mark Wardell
# Licence:     This program is free software; you can redistribute it and/or
#              modify it under the same terms as Perl itself
##################################################################################

MODULE=Wx__TreeListCtrl PACKAGE=Wx::TreeListCtrl

void
new( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_VOIDM_REDISP( newDefault )
        MATCH_ANY_REDISP( newFull )
    END_OVERLOAD( "Wx::TreeListCtrl::new" )

wxTreeListCtrl*
newDefault( CLASS )
    PlClassName CLASS
  CODE:
    RETVAL = new wxTreeListCtrl( );
    wxPli_create_evthandler( aTHX_ RETVAL, CLASS );
  OUTPUT: RETVAL

wxTreeListCtrl*
newFull( CLASS, parent, id, pos = wxDefaultPosition, size = wxDefaultSize, style = wxTR_HAS_BUTTONS, validator = (wxValidator*)&wxDefaultValidator, name = wxT("TreeListCtrl") )
    PlClassName CLASS
    wxWindow* parent
    wxWindowID id
    wxPoint pos
    wxSize size
    long style
    wxValidator* validator
    wxString name
  CODE:
    RETVAL = new wxTreeListCtrl( parent, id, pos, size, style, *validator, name );
  OUTPUT:
    RETVAL

bool
wxTreeListCtrl::Create( parent, id, pos = wxDefaultPosition, size = wxDefaultSize, style = wxTR_HAS_BUTTONS, validator = (wxValidator*)&wxDefaultValidator, name = wxT("TreeListCtrl") )
    wxWindow* parent
    wxWindowID id
    wxPoint pos
    wxSize size
    long style
    wxValidator* validator
    wxString name
  C_ARGS: parent, id, pos, size, style, *validator, name

void
wxTreeListCtrl::Refresh( erase = true, rect = NULL )
	bool erase
	wxRect* rect

void
wxTreeListCtrl::SetFocus()

void
wxTreeListCtrl::SetFlag( flag )
	long flag

long
wxTreeListCtrl::GetFlag()

size_t
wxTreeListCtrl::GetCount()

void
wxTreeListCtrl::SetIndent( indent )
	unsigned int indent

unsigned int
wxTreeListCtrl::GetIndent()

void
wxTreeListCtrl::SetLineSpacing( spacing )
	unsigned int spacing

unsigned int
wxTreeListCtrl::GetLineSpacing()

void
wxTreeListCtrl::SetWindowStyle( style )
	long style

long
wxTreeListCtrl::GetWindowStyle()

### TODO ###

#wxImageList *GetImageList() const;
#wxImageList *GetStateImageList() const;
#wxImageList *GetButtonsImageList() const;

#void SetImageList(wxImageList *imageList);
#void SetStateImageList(wxImageList *imageList);
#void SetButtonsImageList(wxImageList *imageList);
#void AssignImageList(wxImageList *imageList);
#void AssignStateImageList(wxImageList *imageList);
#void AssignButtonsImageList(wxImageList *imageList);

##
## Status Enquiries
##
bool
wxTreeListCtrl::IsVisible (item, fullRow = false)
	wxTreeItemId* item
	bool fullRow
  C_ARGS: *item, fullRow

bool
wxTreeListCtrl::HasChildren ( item )
	wxTreeItemId* item
  C_ARGS: *item

bool
wxTreeListCtrl::IsExpanded ( item )
	wxTreeItemId* item
  C_ARGS: *item

bool
wxTreeListCtrl::IsSelected ( item )
	wxTreeItemId* item
  C_ARGS: *item

bool
wxTreeListCtrl::IsBold ( item )
	wxTreeItemId* item
  C_ARGS: *item

size_t
wxTreeListCtrl::GetChildrenCount ( item, recursively = true );
	wxTreeItemId* item
	bool recursively
  C_ARGS: *item, recursively

##
## Functions to work with columns
##
void
wxTreeListCtrl::AddColumn ( text, width = DEFAULT_COL_WIDTH, flag = wxALIGN_LEFT, image = -1, shown = true, edit = false )
	wxString text
	int width
	int flag
	int image
	bool shown
	bool edit
  CODE:
    THIS->AddColumn( text, width, flag, image, shown, edit );

void
wxTreeListCtrl::AddColumnInfo ( colInfo )
	wxTreeListColumnInfo* colInfo
  CODE:
    THIS->AddColumn( *colInfo );

void
wxTreeListCtrl::InsertColumn ( before, text, width = DEFAULT_COL_WIDTH, flag = wxALIGN_LEFT, image = -1, shown = true, edit = false )
	int before
	wxString text
	int width
	int flag
	int image
	bool shown
	bool edit
  CODE:
    THIS->InsertColumn( before, text, width, flag, image, shown, edit );

void
wxTreeListCtrl::InsertColumnInfo ( before, colInfo )
	int before
	wxTreeListColumnInfo* colInfo
  CODE:
    THIS->InsertColumn( before, *colInfo );

void
wxTreeListCtrl::RemoveColumn ( column )
	int column 

void
wxTreeListCtrl::RemoveAllColumns()

int
wxTreeListCtrl::GetColumnCount()

void
wxTreeListCtrl::SetMainColumn( column )
	int column

int
wxTreeListCtrl::GetMainColumn()

### TODO ##

# SetColumn
# GetColumn

void
wxTreeListCtrl::SetColumnText( col, text )
	int col
	wxString text

wxString
wxTreeListCtrl::GetColumnText( col )
	int col

void
wxTreeListCtrl::SetColumnWidth( col, width )
	int col
	int width

int
wxTreeListCtrl::GetColumnWidth( col )
	int col

void
wxTreeListCtrl::SetColumnAlignment( col, flag )
	int col
	int flag

int
wxTreeListCtrl::GetColumnAlignment( col )
	int col

void
wxTreeListCtrl::SetColumnImage( col, image )
	int col
	int image

int
wxTreeListCtrl::GetColumnImage( col )
	int col

void
wxTreeListCtrl::SetColumnShown( col, shown = true )
	int col
	bool shown

bool
wxTreeListCtrl::IsColumnShown( col )
	int col

void
wxTreeListCtrl::SetColumnEditable( col, edit = true )
	int col
	bool edit 

bool
wxTreeListCtrl::IsColumnEditable( col )
	int col

wxString
wxTreeListCtrl::GetItemText( item, col )
	wxTreeItemId* item
	int col
  C_ARGS: *item, col

# GetItemText
# GetItemImage
# GetItemData

bool
wxTreeListCtrl::GetItemBold ( item )
	wxTreeItemId* item
  C_ARGS: *item

wxColour*
wxTreeListCtrl::GetItemTextColour( item )
	wxTreeItemId* item
  CODE:
    RETVAL = new wxColour( THIS->GetItemTextColour( *item ) );
  OUTPUT:
    RETVAL

wxColour*
wxTreeListCtrl::GetItemBackgroundColour( item )
	wxTreeItemId* item
  CODE:
    RETVAL = new wxColour( THIS->GetItemBackgroundColour( *item ) );
  OUTPUT:
    RETVAL

wxFont*
wxTreeListCtrl::GetItemFont( item )
	wxTreeItemId* item
  CODE:
    RETVAL = new wxFont( THIS->GetItemFont( *item ) );
  OUTPUT:
    RETVAL

int
wxTreeListCtrl::GetItemHeight( item )
	wxTreeItemId* item
  C_ARGS: *item

##
## Modifiers
##

void
wxTreeListCtrl::SetItemText( item, col, text )
	wxTreeItemId* item
	int col
	wxString text
  CODE:
    THIS->SetItemText( *item, col, text );

# SetColumnItemText (overload)
# SetItemImage (main & col) (overload)

void
wxTreeListCtrl::SetItemData( item, data )
    wxTreeItemId* item
    wxTreeItemData* data
  CODE:
    wxTreeItemData* tid = THIS->GetItemData( *item );
    if( tid ) delete tid;
    THIS->SetItemData( *item, data );

void
wxTreeListCtrl::SetItemHasChildren( item, hasChildren = true )
    wxTreeItemId* item
    bool hasChildren
  C_ARGS: *item, hasChildren

void
wxTreeListCtrl::SetItemBold( item, bold = true )
    wxTreeItemId* item
    bool bold
  C_ARGS: *item, bold

void
wxTreeListCtrl::SetItemTextColour( item, col )
    wxTreeItemId* item
    wxColour col
  C_ARGS: *item, col

void
wxTreeListCtrl::SetItemBackgroundColour( item, col )
    wxTreeItemId* item
    wxColour col
  C_ARGS: *item, col

void
wxTreeListCtrl::SetItemFont( item, font )
    wxTreeItemId* item
    wxFont* font
  C_ARGS: *item, *font

void
wxTreeListCtrl::SetItemHeight( item, height )
    wxTreeItemId* item
    int height
  C_ARGS: *item, height

void
wxTreeListCtrl::SetFont( font )
    wxFont* font
  C_ARGS: *font

##
## Navigation
##
wxTreeItemId*
wxTreeListCtrl::GetRootItem()
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetRootItem() );
  OUTPUT:
    RETVAL

wxTreeItemId*
wxTreeListCtrl::GetSelection()
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetSelection() );
  OUTPUT:
    RETVAL

void
wxTreeCtrl::GetSelections()
  PREINIT:
    wxArrayTreeItemIds selections;
  PPCODE:
    size_t num = THIS->GetSelections( selections );
    EXTEND( SP, (IV)num );
    for( size_t i = 0; i < num; ++i )
    {
        PUSHs( wxPli_non_object_2_sv( aTHX_ sv_newmortal(),
                                      new wxTreeItemId( selections[i] ),
                                      "Wx::TreeItemId" ) );
    }

wxTreeItemId*
wxTreeListCtrl::GetItemParent ( item )
	wxTreeItemId* item
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetItemParent( *item ) );
  OUTPUT:
    RETVAL

#wxTreeItemId
#wxTreeListCtrl::GetFirstChild ( item, cookie )
#	wxTreeItemId* item
#	long* cookie
#  C_ARGS: *item, *cookie
#
#wxTreeItemId
#wxTreeListCtrl::GetNextChild ( item, cookie )
#	wxTreeItemId* item
#	long* cookie
#  C_ARGS: *item, *cookie
#
#wxTreeItemId
#wxTreeListCtrl::GetPrevChild ( item, cookie )
#	wxTreeItemId* item
#	long* cookie
#  C_ARGS: *item, *cookie
#
#wxTreeItemId
#wxTreeListCtrl::GetLastChild ( item, cookie )
#	wxTreeItemId* item
#	long* cookie
#  C_ARGS: *item, *cookie

wxTreeItemId*
wxTreeListCtrl::GetNextSibling ( item )
	wxTreeItemId* item
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetNextSibling( *item ) );
  OUTPUT:
    RETVAL

wxTreeItemId*
wxTreeListCtrl::GetPrevSibling ( item )
	wxTreeItemId* item
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetPrevSibling( *item ) );
  OUTPUT:
    RETVAL

wxTreeItemId*
wxTreeListCtrl::GetNext ( item )
	wxTreeItemId* item
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetNext( *item ) );
  OUTPUT:
    RETVAL

wxTreeItemId*
wxTreeListCtrl::GetPrev ( item )
	wxTreeItemId* item
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetPrev( *item ) );
  OUTPUT:
    RETVAL

# get expanded items
wxTreeItemId*
wxTreeListCtrl::GetFirstExpandedItem()
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetFirstExpandedItem() );
  OUTPUT:
    RETVAL

wxTreeItemId*
wxTreeListCtrl::GetNextExpanded ( item )
	wxTreeItemId* item
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetNextExpanded( *item ) );
  OUTPUT:
    RETVAL

wxTreeItemId*
wxTreeListCtrl::GetPrevExpanded ( item )
	wxTreeItemId* item
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetPrevExpanded( *item ) );
  OUTPUT:
    RETVAL

# get visible items
wxTreeItemId*
wxTreeListCtrl::GetFirstVisibleItem()
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetFirstVisibleItem() );
  OUTPUT:
    RETVAL

wxTreeItemId*
wxTreeListCtrl::GetNextVisible ( item, fullrow = false )
	wxTreeItemId* item
	bool fullrow
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetNextVisible( *item, fullrow ) );
  OUTPUT:
    RETVAL

wxTreeItemId*
wxTreeListCtrl::GetPrevVisible ( item, fullrow = false )
	wxTreeItemId* item
	bool fullrow
  CODE:
    RETVAL = new wxTreeItemId( THIS->GetPrevVisible( *item, fullrow ) );
  OUTPUT:
    RETVAL

##
## Operations
##
wxTreeItemId*
wxTreeListCtrl::AddRoot( text, image = -1, selImage = -1, data = 0 )
	wxString text
	int image
	int selImage
	wxTreeItemData* data
  CODE:
	RETVAL = new wxTreeItemId( THIS->AddRoot( text, image, selImage, data ) );
  OUTPUT:
	RETVAL

wxTreeItemId*
wxTreeListCtrl::PrependItem( parent, text, image = -1, selImage = -1, data = 0 )
	wxTreeItemId* parent
	wxString text
	int image
	int selImage
	wxTreeItemData* data
  CODE:
	RETVAL = new wxTreeItemId( THIS->PrependItem( *parent, text, image, selImage, data ) );
  OUTPUT:
	RETVAL

wxTreeItemId*
wxTreeListCtrl::AppendItem( parent, text, image = -1, selImage = -1, data = 0 )
	wxTreeItemId* parent
	wxString text
	int image
	int selImage
	wxTreeItemData* data
  CODE:
	RETVAL = new wxTreeItemId( THIS->AppendItem( *parent, text, image, selImage, data ) );
  OUTPUT:
	RETVAL

void
wxTreeListCtrl::Delete ( item )
	wxTreeItemId* item
  C_ARGS: *item

void
wxTreeListCtrl::DeleteChildren ( item )
	wxTreeItemId* item
  C_ARGS: *item

void
wxTreeListCtrl::DeleteRoot ()

void
wxTreeListCtrl::Expand( item )
	wxTreeItemId* item
  C_ARGS: *item

void
wxTreeListCtrl::ExpandAll( item )
	wxTreeItemId* item
  C_ARGS: *item

void
wxTreeListCtrl::Collapse( item )
	wxTreeItemId* item
  C_ARGS: *item

void
wxTreeListCtrl::Toggle( item )
	wxTreeItemId* item
  C_ARGS: *item

void
wxTreeListCtrl::Unselect()

void
wxTreeListCtrl::UnselectAll()

void
wxTreeListCtrl::SelectAll()


MODULE=Wx__TreeListCtrl

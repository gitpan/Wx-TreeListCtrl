use Wx;

package MyApp;

use strict;
use base qw( Wx::App );

sub OnInit {
	my $self = shift;
	my $frame = MyFrame->new( "Minimal wxPerl app",
				   Wx::Point->new( 50, 50 ),
				   Wx::Size->new( 450, 350 )
							 );
	$self->SetTopWindow( $frame );
	$frame->Show( 1 );
	return 1;
}

package MyFrame;

use strict;
use base qw( Wx::Frame );

sub new {
	my $class = shift;
	my $self  = $class->SUPER::new( undef, -1, $_[0], $_[1], $_[2] );
	$self->SetIcon( Wx::GetWxPerlIcon() );
	$self->SetTitle( "Wx::TreeListCtrl Sample" );

	# create the menus
	my $mfile = Wx::Menu->new();
	$mfile->Append( 1, "E&xit\tAlt-X", "Quit this program" );

	my $mbar = Wx::MenuBar->new();
	$mbar->Append( $mfile, "&File" );
	$self->SetMenuBar( $mbar );

	$self->CreateStatusBar( 1 );
	$self->SetStatusText( "Welcome to wxPerl!", 1 );

	# declare that events coming from menu items with the given
	Wx::Event::EVT_MENU( $self, 1, \&OnQuit );

	# add the TreeListCtrl
	my $tl = MyTreeList->new( $self );

##	# add using a sizer
##	use Wx qw( wxEXPAND wxVERTICAL wxALL );
##	my $sizer = Wx::BoxSizer->new( wxVERTICAL );
##	print "tl = $tl, ISA window = ", $tl->isa('Wx::Window'), "\n";
##	$sizer->Add( $tl, 1, wxEXPAND | wxALL );
##	$self->SetSizer( $sizer );
	$self;
}

sub OnCreateStatusBar {
	my( $self ) = shift;
	my( $status ) = Wx::StatusBar->new( $self, -1 );
	$status->SetFieldsCount( 2 );
	$status;
}

# called when the user selects the 'Exit' menu item
sub OnQuit {
	my( $self, $event ) = @_;
	$self->Close( 1 );
}

package MyTreeList;

use base qw( Wx::TreeListCtrl );
use Wx qw( wxLIST_FORMAT_LEFT );
use Wx qw( wxTR_HIDE_ROOT wxTR_ROW_LINES wxTR_HAS_BUTTONS wxTR_FULL_ROW_HIGHLIGHT wxTR_NO_LINES wxTR_HAS_VARIABLE_ROW_HEIGHT );
#use Wx::TreeListCtrl qw( wxTR_VRULE wxTR_SHOW_ROOT_LABEL_ONLY );
use Wx qw( wxTR_VRULE wxTR_SHOW_ROOT_LABEL_ONLY );

sub new {
	my ($class, $parent) = @_;
	my $self = $class->SUPER::new(
		$parent,
		-1,
		Wx::wxDefaultPosition,
		[400, 400],
		wxTR_HIDE_ROOT | wxTR_ROW_LINES | wxTR_HAS_VARIABLE_ROW_HEIGHT
	);

	# change the styles
	$self->SetFlag( $self->GetFlag | wxTR_HAS_BUTTONS );
	$self->SetFlag( $self->GetFlag | wxTR_FULL_ROW_HIGHLIGHT );
	$self->SetFlag( $self->GetFlag | wxTR_NO_LINES );
	$self->SetFlag( $self->GetFlag | wxTR_VRULE );
	$self->SetFlag( $self->GetFlag | wxTR_SHOW_ROOT_LABEL_ONLY );

	# now add the columns
	$self->AddColumn( "Column Four",	120, wxLIST_FORMAT_LEFT );
	$self->InsertColumn( 0, "Column Three",	120, wxLIST_FORMAT_LEFT );
	$self->InsertColumn( 0, "Column Two",		120, wxLIST_FORMAT_LEFT );
	$self->InsertColumn( 0, "Column One",		120, wxLIST_FORMAT_LEFT );

	my $root = $self->AddRoot( 'Root Item' );
	my $item1 = $self->AppendItem( $root, 'First Top Level Tree Item Is Very Long And Can Span Columns' );
	$self->SetItemHeight( $item1, 120 );
	$self->SetItemBold( $item1, 1 );
	$self->SetItemTextColour( $item1, Wx::Colour->new( 22, 14, 135 ));
	$self->SetItemBackgroundColour( $item1, Wx::Colour->new( 160, 184, 255 ));
	my $child1 = $self->AppendItem( $item1, 'Child #1' );
	$self->AppendItem( $item1, 'Child #2' );
	$self->AppendItem( $item1, 'Child #3' );

	my $item2 = $self->AppendItem( $root, 'Second Tree Item' );
	$self->SetItemBold( $item2, 1 );
	$self->SetItemTextColour( $item2, Wx::Colour->new( 178, 12, 48 ));
	$self->SetItemBackgroundColour( $item2, Wx::Colour->new( 255, 211, 135 ));
	$self->AppendItem( $item2, 'Child A' );
	$self->AppendItem( $item2, 'Child B' );
	$self->AppendItem( $item2, 'Child C' );

	$self->SetItemText( $child1, 1, "Row 1 - Column 1" );
	$self->SetItemText( $child1, 2, "Row 1 - Column 2" );
	$self->SetItemText( $child1, 3, "Row 1 - Column 3" );
	$self->ExpandAll( $self->GetRootItem );
	return $self;
}

package main;
my $app = MyApp->new();
$app->MainLoop();

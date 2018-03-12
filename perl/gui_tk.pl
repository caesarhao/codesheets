#! /usr/bin/env perl
use Tk;
my $mw = MainWindow->new();
# Create a label
my $label1 = $mw->Label(-text => "I'm a label")-> pack();
# Create a Button widget
my $button1 = $mw->Button(-text => "Exit Button!", -command =>sub{exit})-> pack();
# Create a Checkbutton
$cb = $mw->Checkbutton(-text => 'Red', -onvalue => 'Red', -offvalue => '')->pack;
# Create three Radiobuttons
# Link them using $favcolor
foreach (qw/red blue green/) {
    $mw->Radiobutton(-text => $_, -variable => \$favcolor, 
        -value => $_)->pack(-anchor => 'w');
}
# Create listbox
$lb = $mw->Listbox(-selectmode => "single")->pack( );
$lb->insert('end', qw/red yellow green blue grey/);
$lb->bind('<Button-1>', 
          sub { $lb->configure(-background => 
                             $lb->get($lb->curselection( )) );
              });
MainLoop;


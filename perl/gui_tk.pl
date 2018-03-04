#! /usr/bin/env perl
use Tk;
my $mw = MainWindow->new;
$mw->Button(-text => "Hello World!", -command =>sub{exit})->pack;
MainLoop;


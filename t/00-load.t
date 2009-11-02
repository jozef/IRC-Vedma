#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'IRC::Vedma' );
}

diag( "Testing IRC::Vedma $IRC::Vedma::VERSION, Perl $], $^X" );

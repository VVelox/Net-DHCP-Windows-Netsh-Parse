#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 3;

BEGIN {
    use_ok( 'Net::DHCP::Windows::Netsh::Parse' ) || print "Bail out!\n";
}

my $worked=0;
my $parser;
eval{
	$parser=Net::DHCP::Windows::Netsh::Parse->new;
	if ( ref($parser) eq 'Net::DHCP::Windows::Netsh::Parse' ){
		$worked=1;
	}
};
ok( $worked eq '1', 'init') or diag("Net::DHCP::Windows::Netsh::Parse->new died with ".$@);

my $fh;
my $test_data;
open( $fh, '<', 't/test.data' ) || die( 'failed to open t/test.data' );
read( $fh, $test_data, 40000, 0 ) || die( 'failed to read t/test.data' );
close($fh);

$worked=0;
eval{
	$parser->parse( $test_data );
	$worked=1;
};
ok( $worked eq '1', 'parse') or diag("Net::DHCP::Windows::Netsh::Parse->parse died with ".$@);

done_testing(3);

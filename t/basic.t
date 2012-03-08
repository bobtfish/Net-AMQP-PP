use strict;
use warnings;

use Test::More;
use Test::Without::Module qw( XML::LibXML );

use_ok("Net::AMQP::PP");
my $data = Net::AMQP::Protocol->load_xml_spec();
ok $data;
use Data::Dumper;
warn Dumper($data);

done_testing;


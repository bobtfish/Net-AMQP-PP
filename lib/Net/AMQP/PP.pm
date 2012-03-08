package Net::AMQP::PP;
use strict;
use warnings;
use JSON ();

my $data = JSON::from_json(
q[{}]);

sub import {
    local $INC{"XML/LibXML.pm"} = 1;
    require Net::AMQP;
    require Net::AMQP::Protocol;
    no warnings 'redefine';
    *Net::AMQP::Protocol::load_xml_spec = sub {
        $data;
    };
}

1;

=head1 NAME

Net::AMQP::PP - Nasty hack for when you want pure perl AnyEvent::RabbitMQ

=head1 SYNOPSIS

    use Net::AMQP::PP;
    use AnyEvent::RabbitMQ; # Note - order is important!

=head1 DESCRIPTION

This module horribly monkeypatches NET::AMQP to avoid it's need
to load L<XML::LibXML>

This code does disgusting things, and should be considered alpha quality.

=head1 AUTHOR

Tomas Doran (t0m) C<< <bobtfish@bobtfish.net> >>.

=head1 COPYRIGHT

The above author

=head1 LICENSE

Perl licensed.

=cut



use strict;
use warnings;
use inc::Module::Install;

all_from 'lib/Net/AMQP/PP.pm';

requires 'Net::AMQP';
requires 'JSON';

test_requires 'Test::Without::Module';
test_requires 'Test::More' => '0.88';

author_requires 'AnyEvent::RabbitMQ';

if ($Module::Install::AUTHOR) {
    system("maint/rebuild.pl")
        and die $!;
}

WriteAll;


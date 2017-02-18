use strict;
use warnings;
use JSON::PP;

require '../azure_func.pl';

my $name = param('name');
my $content = {
    name    => $name,
    message => "Hello, $name",
};

res(200, {'Content-Type' => 'application/json'}, $content);

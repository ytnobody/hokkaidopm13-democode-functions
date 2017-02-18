use strict;
use warnings;
use utf8;
use JSON::PP;

require '../azure_func.pl';

my $member = decode_json(read_from('inputDocument'));

res(200, {"Content-Type" => "application/json"}, {
    member => $member
});
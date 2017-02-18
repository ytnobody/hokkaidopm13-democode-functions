use strict;
use warnings;
use utf8;
use JSON::PP;

require '../azure_func.pl';

my $id   = param('id');
my $name = param('name');
my $fav  = param('fav');

if (!$id || !$name || !$fav) {
    res(400, {"Content-Type" => "application/json"}, {
        message => "bad request",
    });
}

my $member = {
    id   => $id,
    name => $name,
    fav  => $fav
};

write_to(outputDocument => JSON::PP->new->utf8(1)->encode($member));

res(200, {"Content-Type" => "application/json"}, {
    message => "Done",
});

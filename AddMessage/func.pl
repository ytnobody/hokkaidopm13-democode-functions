use strict;
use warnings;
use utf8;
use JSON::PP;
use Data::Dumper;

require '../azure_func.pl';

my $member = decode_json(read_from('inputDocument'));
my $event  = decode_json(read_from('inputEvent'));

$member->{message} ||= [];
push @{$member->{message}}, $event->{message};

write_to(outputDocument => encode_json($member));

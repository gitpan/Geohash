use strict;
use warnings;
use Test::More;
use Geohash;

my $gh = Geohash->new;

ok(not $gh->validate(''));
ok(not $gh->validate());
ok(not $gh->validate('a'));
ok(not $gh->validate('c2b25psa'));
ok($gh->validate('c2b25ps'));
ok($gh->validate('c2b25pszzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'));

done_testing;

#!/usr/bin/env perl

use FindBin;
use lib $FindBin::Bin.'/../thirdparty/lib/perl5';
use lib $FindBin::Bin.'/../lib';

use Test::More tests => 3;

use_ok 'Illumos::SMF';

my $t = Illumos::SMF->new();

is (ref $t, 'Illumos::SMF', 'Instantiation');

$t = Illumos::SMF->new(zonesupport => 1);
is (ref $t, 'Illumos::SMF', 'Instantiation w/ zone support');

exit 0;

1;


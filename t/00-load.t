use Test;
use Shareable;

plan 1;

my $o = Shareable.new;
isa-ok $o, Shareable;

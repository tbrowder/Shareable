use Test;
use Shareable;

plan 3;

class Foo is Shareable {
    has $.ID
}

my $o = Foo.new: :ID(1);
is $o.ID, 1;

$o.save;
my $b = Foo.from-store;
is $b.ID, 1;

my $store = 't.file';
Foo.set-store-file: $store;
my $s = Foo.show-store;
is $s, $store;


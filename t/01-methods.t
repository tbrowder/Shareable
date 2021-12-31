use Test;
use Shareable;

plan 6;

class Foo is Shareable {
    has $.ID
}

{
    my $o = Foo.new: :ID(1);
    is $o.ID, 1;

    $o.save;
    my $b = Foo.from-store;
    is $b.ID, 1;

    my $store = 't.file';
    Foo.set-store-file: $store;
    my $s = Foo.show-store;
    is $s, $store;
}

{
    my $o = Foo.new: :ID(2);
    is $o.ID, 2;

    $o.store;
    my $b = $o.from-store;
    is $b.ID, 2;

    my $store = 't.file';
    $b.set-store-file: $store;
    my $s = $b.show-store;
    is $s, $store;
}




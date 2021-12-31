[![Actions Status](https://github.com/tbrowder/Shareable/workflows/test/badge.svg)](https://github.com/tbrowder/Shareable/actions)

NAME
====

Shareable - Provides a parent class with shareable and semi-persistent state

SYNOPSIS
========

```raku
use Shareable;
class Foo is Shareable {
    has $.ID;
}
my $o = Foo.new: :ID(1);
say $o.ID;
$o.store;

my $b = Foo.from-store;
say $b.ID;
```

DESCRIPTION
===========

Shareable is ...

AUTHOR
======

Tom Browder <tbrowder@acm.org>

COPYRIGHT AND LICENSE
=====================

Copyright 2021 Tom Browder

This library is free software; you may redistribute it or modify it under the Artistic License 2.0.


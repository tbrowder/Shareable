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
say $o.ID; # OUTPUT: «1␤»
$o.store;  # or, alternatively, '$o.save'

my $b = Foo.from-store;
say $b.ID; # OUTPUT: «1␤»
```

DESCRIPTION
===========

**Shareable** is a class designed to be a parent class for your own class which needs some shared, persistent state. It was designed specifically for use by the author's module **Date::Liturgical::Christian** in order to "look back" to the day previous for any special days that needed to be held over a day. **WARNING: As such, it is not suitable for sharing state between independent processes!**

AUTHOR
======

Tom Browder <tbrowder@acm.org>

COPYRIGHT AND LICENSE
=====================

Copyright 2021 Tom Browder

This library is free software; you may redistribute it or modify it under the Artistic License 2.0.


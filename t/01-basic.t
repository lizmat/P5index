use v6.*;
use Test;
use P5index;

plan 4;

ok defined(::('&index')),          'is &index imported?';
ok !defined(P5index::{'&index'}),  'is &index externally NOT accessible?';
ok defined(::('&rindex')),         'is &rindex imported?';
ok !defined(P5index::{'&rindex'}), 'is &rindex externally NOT accessible?';

# vim: expandtab shiftwidth=4

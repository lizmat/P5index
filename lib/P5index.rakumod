use v6.*;

unit module P5index:ver<0.0.7>:auth<zef:lizmat>;

sub index(Str() $string, Str() $needle, Int() $position = 0) is export {
    $string.index($needle,0 max $position) // -1
}

sub rindex(Str() $string, Str() $needle, Int() $position = $string.chars - 1) is export {
    $position < 0
      ?? -1
      !! $string.rindex($needle,$string.chars - 1 min $position) // -1
}

=begin pod

=head1 NAME

Port of Perl's index() / rindex() built-ins

=head1 SYNOPSIS

  use P5index; # exports index() / rindex()

  say index("foobar", "bar");    # 3
  say index("foofoo", "foo", 1); # 3
  say index("foofoo", "bar");    # -1

  say rindex("foobar", "bar");    # 3
  say rindex("foofoo", "foo", 4); # 3
  say rindex("foofoo", "bar");    # -1

=head1 DESCRIPTION

This module tries to mimic the behaviour of Perl's C<index> / C<rindex>
built-ins as closely as possible in the Raku Programming Language.

=head1 ORIGINAL PERL 5 DOCUMENTATION

    index STR,SUBSTR,POSITION
    index STR,SUBSTR
            The index function searches for one string within another, but
            without the wildcard-like behavior of a full regular-expression
            pattern match. It returns the position of the first occurrence of
            SUBSTR in STR at or after POSITION. If POSITION is omitted, starts
            searching from the beginning of the string. POSITION before the
            beginning of the string or after its end is treated as if it were
            the beginning or the end, respectively. POSITION and the return
            value are based at zero. If the substring is not found, "index"
            returns -1.

    rindex STR,SUBSTR,POSITION
    rindex STR,SUBSTR
            Works just like index() except that it returns the position of the
            last occurrence of SUBSTR in STR. If POSITION is specified,
            returns the last occurrence beginning at or before that position.

=head1 AUTHOR

Elizabeth Mattijsen <liz@wenzperl.nl>

Source can be located at: https://github.com/lizmat/P5index . Comments and
Pull Requests are welcome.

=head1 COPYRIGHT AND LICENSE

Copyright 2018, 2019, 2020, 2021 Elizabeth Mattijsen

Re-imagined from Perl as part of the CPAN Butterfly Plan.

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

# vim: expandtab shiftwidth=4

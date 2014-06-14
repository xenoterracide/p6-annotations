# vim: set filetype=perl6:
use v6;
use Test;
use Annotation::Persistence;
is 1, 1, 'dumb test';

class Entity is entity {
}

done;

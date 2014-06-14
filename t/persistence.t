# vim: set filetype=perl6:
use v6;
use Test;
use Annotation::Persistence;

class Entity is entity {
}

my $e = Entity.new;

isa_ok $e, Entity;

done;

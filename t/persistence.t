# vim: set filetype=perl6:
use v6;
use Test;
use Annotation::Persistence;

class User is entity {
	has $.username;
	has %.profile;
}

class Value {}

my $e = User.new;
my $v = Value.new;

isa_ok $e, User;
isa_ok $v, Value;
is_deeply $e.^annotations, { entity => True };
is_deeply $v.^annotations, {};

done;

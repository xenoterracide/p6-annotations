# vim: set filetype=perl6:
use v6;
use Test;
use Annotation::Persistence;

class User is entity {
	has $.username;
	has %.profile;
}

my $e = User.new;

diag $e.HOW;
isa_ok $e, User;
say $e.^annotations;

done;

# vim: set filetype=perl6:
use v6;
use Test;
use Annotated;
use Annotation::Persistence;

class User is entity {
	has $.username;
	has %.profile;
}

my $e = User.new;

diag $e.HOW;
isa_ok $e, User;
ok !$e.does( Annotated ), 'e should not do annotated';
ok $e.HOW.does( $e.HOW, Annotated ), 'HOW should do annotated';
ok ! $e.HOW.HOW.does( $e.HOW.HOW, Annotated ), 'HOW.HOW should not do annotated';

#diag $e.HOW.ann.DUMP;

done;

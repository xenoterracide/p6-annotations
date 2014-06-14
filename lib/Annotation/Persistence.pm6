use v6;
use Annotated;
module Annotation::Persistence {
	multi sub trait_mod:<is>( Mu:U $type, :$entity! ) is export {
		say $type.HOW;
#		$type.HOW does Annotated;
#		say $type.HOW.annotations.^methods;
#		$type.HOW.annotations{entity} = True;
		say "entity";
	}
	multi sub trait_mod:<is>( Mu:U $type, :$table! ) is export {
#		$type.How does Annotated;
#		$type.HOW.annotations{table} = 'users';
#		say "table: $table";
	}
#	multi sub trait_mod:<is>( Attribute:D $type, :$id! ) is export {
#		$type.How does Annotated;
#		$type.HOW.annotations{id} = True;
#		say "id";
#	}
}

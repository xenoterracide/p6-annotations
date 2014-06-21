use v6;
module Annotation::Persistence {
	multi sub trait_mod:<is>( Mu:U $type, :$entity! ) is export {
		$type.HOW.add_annotation( $type.HOW, 'entity', True );
		$type.^add_annotation( 'entity', True );
		return;
	}
	multi sub trait_mod:<is>( Mu:U $type, :$table! ) is export {
	}
#	multi sub trait_mod:<is>( Attribute:D $type, :$id! ) is export {
#		$type.How does Annotated;
#		$type.HOW.annotations{id} = True;
#		say "id";
#	}
}

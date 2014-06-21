use v6;
module Annotation::Persistence {
	multi trait_mod:<is>(Mu:U $type, :$entity!) is export {
		$type.HOW.add_annotation($type.HOW, 'entity', True );
	}
	multi trait_mod:<is>( Mu:U $type, :$table! ) is export {
	}
}

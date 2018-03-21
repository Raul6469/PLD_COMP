grammar Prog;

prog: include* decl* fun+                   # Lprog;

fun: typeretour Name '(' params ')' bloc    # Lfun;

params: 'void'                              # LparamsVoid
        | param (',' param)*                # Lparams
        | /* epsilon */                     # LparamsEpsilon
        ;

param: type Name                            # Lparam;

bloc: '{' instr* '}'                        # Lbloc;

instr: decl                                 # LinstrDecl
	| affectation							# LinstAffectation
    | appelfonct                            # LinstAppelfonct
    | retourfonct                           # LinstRetourfonct
    ;

affectation: varleftpart operation expr ';'	# Laffectation;

typeretour: 'void'                          # LtyperetourVoid
            | type                          # Ltype
            ;

type: 'char'                                # Lchar
    | 'int32_t'                             # Lint32_t
    | 'int64_t'                             # Lint64_t
    ;

decl: type Name '[' ']' ';'                 # LdeclTable
    | type Name ';'                         # Ldecl
    ;

appelfonct: Name '(' valeurs ')' ';'        # Lappelfonct;

retourfonct: 'return' variable ';'          # Lretourfonct;

valeurs: variable (',' variable)*           # Lvaleurs
        | /* epsilon */                     # LvaleursEpsilon
        ;

expr: variable								# LexprVariable;

variable: varleftpart						# Lvariablevarleftpart
        | Entier                            # LvariableEntier
        | Caractere                         # LvariableCaractere
        ;

varleftpart: Name '[' expr ']'				# LvarleftpartTable
			| Name							# Lvarleftpart
			;
	
operation: '='								# LoperationEqual;

operationunaire: '+'						# Loperationunaire;

operationbinaire: '-'						# Loperationbinaire;

include: '#include' '<' Name '>'			# LincludeSys
		| '#include' '"' Name '"'			# LincludeCustom
		;

Name: [a-zA-Z][a-zA-Z0-9]*;

Entier: [0-9]+;

Caractere: '\'' ~['] '\'';

WS: [ \t\n\r]+ -> skip;

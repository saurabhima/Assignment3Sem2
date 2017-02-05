/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

grammar firstcheck;

drinkSentence : ARTICLE? DRINKING_VESSEL OF drink ;
 
drink : TEXT;
 
// Lexer Rules
 
ARTICLE : 'the' | 'an' | 'a' ;
 
OF : 'of' ;
 
DRINKING_VESSEL : 'cup' | 'pint' | 'shot' | 'mug' | 'glass' ;
 
TEXT : ('a'..'z')+ ;
 
WHITESPACE : ( '\t' | ' ' | '\r' | '\n'| '\u000C' )+ -> skip ;


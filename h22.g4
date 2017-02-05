/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

grammar h22;



//startpt  : DOCTAG HTMLTAG LETTERS+;

start : HTMLTAG HEAD;



HTMLTAG: STARTINDENT SPL 'DOCTYPE' HTML ENDINDENT|STARTINDENT HTML ASSIGN ENDINDENT|STARTINDENT HTML ENDINDENT|STARTINDENT CLASSEND HTML ENDINDENT;

HEAD : STARTINDENT 'head' ENDINDENT|STARTINDENT CLASSEND 'head' ENDINDENT;

ASSIGN : LETTERS|SPL;
ENDINDENT: '>';
CLASSEND :'/';
STARTINDENT : '<';
HTML :'html'|'HTML';
LETTERS : [a-zA-Z]+ ;
SPL : ['!''=']+;
WS : [ \t\r\n]+ -> skip;

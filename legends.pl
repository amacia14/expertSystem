
write("Welcom to the Expert System about Soccer legends!")
write("I'm going to ask questions about some of the best soccer players in the world")
write("Respond to the answers by entering Yes or No")
write("Ready?")

go:- legends(Player),
    write('you picked: '),
    write(Player),
    nl,
    undo.


legends(zZidane) :- zZidane.
legends(ronaldinho) :- ronaldinho.
legends(zIbrahimovic) :- zIbrahimovic.
legends(lMessi) 	:- lMessi.
legends(lSuarez) :- lSuarez.
legends(dForlan) :- dForlan.
legends(tHenry) 	:- tHenry.
legends(cRonaldo) :- cRonaldo.
legends(ronaldo) :- ronaldo.
legends(dMaradona) :- dMaradona.
legends(lBuffon) :-  lBuffon.
legends(bSchweinsteiger) :- bSchweinsteiger.
legends(aIniesta) :- aIniesta.
legends(fLampard) :- fLampard.
legends(pele) :- pele.

zZidane:-
    verify(french),
    verify(midfield),
    verify(realmadrid).

ronaldinho:-
    verify(brazilian),
    verify(midfield),
    verify(barcelona).

zIbrahimovic:-
    verify(swedish),
    verify(forward),
    verify(psg).
lMessi:-
    verify(argentinian),
    verify(midfield),
    verify(barcelona).
lSuarez:-
    verify(urguayan),
    verify(forward),
    verify(barcelona).
dForlan:-
    verify(urguayan),
    verify(midfield),
    verify(atleticoMadrid).
tHenry:-
    verify(french),
    verify(forward),
    verify(arsenal).
cRonaldo:-
    verify(portuguese),
    verify(forward),
    verify(realMadrid).
ronaldo:-
    verify(brazilian),
    verify(forward),
    verify(realMadrid).
dMaradona:-
    verify(argentinian),
    verify(midfield),
    verify(realMadrid).
lBuffon:-
    verify(italian),
    verify(keeper),
    verify(juventus).
bSchweinsteiger:-
    verify(german),
    verify(midfield),
    verify(bayernMunich).
aIniesta:-
    verify(spanish),
    verify(midfield),
    verify(barcelona).
fLampard:-
    verify(english),
    verify(deffense),
    verify(chelsea).
pele:-
    verify(brazilian),
    verify(midfield),
    verify(santos).


ask(Question):-
  write('Im going to ask about the platers nationality, position, and most recognized soccer club'),
  write(Question),
  qrite(?),
  read(Response),
  nl,
  ( ( Response == yes; response == y))
  ->
  assert(yes(Question));
  assert(no(Question)), fail).

:-dynamic yes/1, no/1.
verify(S):-
  (   yes(S)
  ->
  true;
  (   no(S)
  -> fail;
    ask(S))).
undo:-retract(yes(_)),fail.
undo:-retract(no()),fail.
undo.

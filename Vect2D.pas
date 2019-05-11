unit Vect2D; //librairie

interface

Type Vect = record
	posX : integer;
	posY : integer;
end;



function getVectposX (Vecteur:Vect):integer;
function getVectposY (Vecteur:Vect):integer;
procedure setVectposX(var Vecteur : Vect; nb: integer);
procedure setVectposY(var Vecteur : Vect; nb: integer);
function addiVect(var Vecteur1,Vecteur2 : Vect):Vect;
function sousVect(var Vecteur1,Vecteur2 : Vect):Vect;
function prodparscaVect(var Vecteur:Vect; nb:integer):Vect;
function proscaVect(var Vecteur1,Vecteur2 : Vect):integer;
function provecVect(var Vecteur1,Vecteur2 : Vect):Vect;


implementation

function getVectposX (Vecteur:Vect):integer; //assesseur
begin
	getVectposX:=Vecteur.posX;
end;
function getVectposY (Vecteur:Vect):integer;
begin
	getVectposY:=Vecteur.posY;
end;

procedure setVectposX(var Vecteur : Vect; nb: integer); //mutateur
begin
	Vecteur.posX:=nb;
end;
procedure setVectposY(var Vecteur : Vect; nb: integer);
begin
	Vecteur.posY:=nb;
end;

function addiVect(var Vecteur1,Vecteur2 : Vect):Vect; //Fonction renvoyant un vecteur étant une addition de deux vecteurs
var addiVecttemp : Vect;
begin
	addiVecttemp.posX:=Vecteur1.posX+Vecteur2.posX;
	addiVecttemp.posY:=Vecteur1.posY+Vecteur2.posY;
	addiVect:=addiVecttemp;
end;

function sousVect(var Vecteur1,Vecteur2 : Vect):Vect; //Fonction renvoyant un vecteur étant une soustraction de deux vecteurs
var sousVecttemp : Vect;
begin
	sousVecttemp.posX:=Vecteur1.posX-Vecteur2.posX;
	sousVecttemp.posY:=Vecteur1.posY-Vecteur2.posY;
	sousVect:=sousVecttemp;
end;

function prodparscaVect(var Vecteur:Vect; nb:integer):Vect; //Fonction renvoyant un vecteur étant un produit par un scalaire (entier)
var prodparscatemp : Vect;
begin
	prodparscatemp.posX:=Vecteur.posX*nb;
	prodparscatemp.posY:=Vecteur.posY*nb;
	prodparscaVect:=prodparscatemp;
end;

function proscaVect(var Vecteur1,Vecteur2 : Vect):integer; //Fonction renvoyant un scalaire (entier) étant le produit scalaire de deux vecteurs
begin
	proscaVect:=((Vecteur1.posX*Vecteur2.posX)+(Vecteur1.posY*Vecteur2.posY));
end;

function provecVect(var Vecteur1,Vecteur2 : Vect):Vect; //Fonction renvoyant un vecteur étant le produit vectoriel de deux vecteurs
var provectemp : Vect;
begin
	provectemp.posX:= Vecteur1.posY-Vecteur2.posY;
	provectemp.posY:= Vecteur2.posX-Vecteur1.posX;
	provecVect:=provectemp;
end;

end.


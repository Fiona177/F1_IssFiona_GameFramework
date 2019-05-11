program principal;

uses crt,balle,SDL2,SDL2_Image,acteur,Vect2D;

var bal1,bal2,bal3:ball;
	nb:integer;

BEGIN
	clrscr;
	nb:=10;
	//Utilisation des procédures Set pour définir la position de la balle 1
	bal1.obj.position.posX:=5;
	setVectposX(bal1.obj.position,2);
	setVectposY(bal1.obj.position,nb);

	writeln(bal1.obj.position.posX);
	writeln(bal1.obj.position.posY);
	//Utilisation des procédures Set pour définir la position de la balle 2
	setVectposX(bal2.obj.position,5);
	setVectposY(bal2.obj.position,7);

	writeln(bal2.obj.position.posX);
	writeln(bal2.obj.position.posY);
	//J'affecte a la balle 3 l'addition des balles 1 et 2
	bal3.obj.position:=addiVect(bal1.obj.position,bal2.obj.position);

	writeln(bal3.obj.position.posX);
	writeln(bal3.obj.position.posY);
	//J'affecte a la balle 3 la soustraction des balles 1 et 2
	bal3.obj.position:=sousVect(bal1.obj.position,bal2.obj.position);

	writeln(bal3.obj.position.posX);
	writeln(bal3.obj.position.posY);
	//J'affecte a la balle 3 le produit par un scalaire de la balle 1
	bal3.obj.position:=prodparscaVect(bal1.obj.position,5);

	writeln(bal3.obj.position.posX);
	writeln(bal3.obj.position.posY);
	//J'affecte à nb le produit scalaire des balles 1 et 2
	bal3.obj.position:=proscaVect(bal1.obj.position,bal2.obj.position);

	writeln(nb);
	//J'affecte a la balle 3 le produit vectoriel des balles 1 et 2
	bal3.obj.position:=provecVect(bal1.obj.position,bal2.obj.position);

	writeln(bal3.obj.position.posX);
	writeln(bal3.obj.position.posY);

	readln;
END.

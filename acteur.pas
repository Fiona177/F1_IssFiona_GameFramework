unit acteur;  //librairie


interface

uses SDL2, SDL2_image, Vect2D;

Type monObjet  = record
position : Vect ;
textureObj : PSDL_Texture; //Pour le moment, on utilise pas encore les textures
end;

function getObjText(var obj : monObjet):PSDL_Texture;
function getObjVect(var obj : monObjet):Vect;

procedure setObjTexture(var obj : monObjet; texturetmp: PSDL_Texture);
procedure setObjVect(var obj : monObjet; vecttmp: Vect);


implementation

function getObjText(var obj : monObjet):PSDL_Texture; //assesseur
begin
	getObjText := obj.textureObj;
end;

function getObjVect(var obj : monObjet):Vect;
begin
	getObjVect := obj.position;
end;

procedure setObjTexture(var obj : monObjet; texturetmp: PSDL_Texture); //mutateur
begin
	obj.textureObj:=texturetmp;

end;

procedure setObjVect(var obj : monObjet; vecttmp: Vect);
begin
	obj.position:=vecttmp;

end;
end.
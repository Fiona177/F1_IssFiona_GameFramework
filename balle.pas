unit balle; //librairie

interface

uses acteur,SDL2,SDL2_Image, Vect2D;

Type ball = record
	obj : monObjet;
end;

function getBallText(var balle : ball):PSDL_Texture;
function getBallVect(var balle : ball):Vect;

procedure setBallTexture(var balle : ball; texturetmp: PSDL_Texture);
procedure setBallVect(var balle : ball; vecttmp: Vect);


implementation

function getBallText(var balle : ball):PSDL_Texture;//assesseur
begin
	getBallText := balle.obj.textureObj;
end;

function getBallVect(var balle : ball):Vect;
begin
	getBallVect := balle.obj.position;
end;

procedure setBallTexture(var balle : ball; texturetmp: PSDL_Texture);//mutateur
begin
	balle.obj.textureObj:=texturetmp;

end;

procedure setBallVect(var balle : ball; vecttmp: Vect);
begin
	balle.obj.position:=vecttmp;

end;

end.
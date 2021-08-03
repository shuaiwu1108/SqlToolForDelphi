unit CommonUtil;

interface

uses
  Models;

function Md5(param: string): string;
function ObjToStr(obj: TStation): string;


implementation

uses
  IdHashMessageDigest, superobject;

var 
  tmp_md5: TIdHashMessageDigest5;
  j: ISuperObject;

function Md5(param: string): string;
begin
  Result:= tmp_md5.HashStringAsHex(param);  
end;

function ObjToStr(Obj: TStation): string;
begin
  j:= TSuperObject.Create(stObject);
  Result:= j.
end;

initialization
  tmp_md5:= TIdHashMessageDigest5.Create;
end.

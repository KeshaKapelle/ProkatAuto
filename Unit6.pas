unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls, Menus;

type
  TForm6 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Labelm1: TLabel;
    Labelmo1: TLabel;
    Labelg1: TLabel;
    Labelo1: TLabel;
    Labelm2: TLabel;
    Labelmo2: TLabel;
    Labelg2: TLabel;
    Labelo2: TLabel;
    Labelm3: TLabel;
    Labelmo3: TLabel;
    Labelg3: TLabel;
    Labelo3: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit4, Unit5, Unit2;

{$R *.dfm}

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
Form1.Show;
Form6.Hide;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
Module.Tavto.RecNo:=1;
cena:=Module.Tavto.Fields[4].Value;
Form2.DBEdit4.Text:=Module.Tavto.Fields[0].Value;
Form2.Show;
Form6.Hide;
end;

procedure TForm6.SpeedButton3Click(Sender: TObject);
begin
Module.Tavto.RecNo:=2;
cena:=Module.Tavto.Fields[4].Value;
Form2.DBEdit4.Text:=Module.Tavto.Fields[0].Value;
Form2.Show;
Form6.Hide;
end;

procedure TForm6.SpeedButton4Click(Sender: TObject);
begin
Module.Tavto.RecNo:=3;
cena:=Module.Tavto.Fields[4].Value;
Form2.DBEdit4.Text:=Module.Tavto.Fields[0].Value;
Form2.Show;
Form6.Hide;
end;

procedure TForm6.FormShow(Sender: TObject);
var i: integer;

    m: string;     //
    mo: string;   //
    g: string;     //
    o: string;     //
begin

For i:= 1 to 3 do
begin
Module.Tavto.RecNo:=i;
m:=Module.Tavto.Fields[1].Value;
mo:=Module.Tavto.Fields[2].Value;
g:=Module.Tavto.Fields[3].Value;
o:=Module.Tavto.Fields[5].Value;

TLabel(FindComponent('Labelm'+inttostr(i))).Caption:= m;
TLabel(FindComponent('Labelmo'+inttostr(i))).Caption:= mo;
TLabel(FindComponent('Labelg'+inttostr(i))).Caption:= g;
TLabel(FindComponent('Labelo'+inttostr(i))).Caption:= o+' литра';

end;
end;

end.

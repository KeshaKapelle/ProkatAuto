unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Edit1: TEdit;
    Timer1: TTimer;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  cena: integer;

implementation

uses Unit1, Unit4, Unit6;

{$R *.dfm}

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
Form1.Show;
Form2.Hide;
end;


procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
Module.Tarenda.Fields[1].Value:=Label1.Caption;
Module.Tarenda.Fields[4].Value:=strtoint(Edit1.Text);
Module.Tarenda.Fields[5].Value:=strtoint(Edit1.Text)*cena;

Module.Tclient.Post;

Module.Tarenda.Fields[2].Value:=Module.Tclient.Fields[0].Value;

Module.Tarenda.Post;

Form1.Show;
Form2.Hide;

end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin

Form6.SpeedButton2.Visible:=True;
Form6.SpeedButton3.Visible:=True;
Form6.SpeedButton4.Visible:=True;

Form6.Show;

end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
Label1.Caption:=DateToStr(Now);

end;

end.
 
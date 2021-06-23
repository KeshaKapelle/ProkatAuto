unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit4, Unit7;

{$R *.dfm}

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
Form1.Show;
Form5.Hide;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
Module.Tarenda.Delete;
end;

procedure TForm5.SpeedButton3Click(Sender: TObject);
begin
Form7.QuickRep1.Preview;
end;

end.

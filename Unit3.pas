unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
Form1.Show;
Form3.Hide;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
Module.MyLocate(Edit1.Text);
end;

end.

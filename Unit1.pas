unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
Module.Tclient.Append;
Module.Tarenda.Append;
Form2.Show;
Form1.Hide;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
Form3.Show;
Form1.Hide;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Form5.Show;
Form1.Hide;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
Form6.SpeedButton2.Visible:=False;
Form6.SpeedButton3.Visible:=False;
Form6.SpeedButton4.Visible:=False;

Form6.Show;
Form1.Hide;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
Form1.Close;
end;

end.


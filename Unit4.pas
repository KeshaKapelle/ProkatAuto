unit Unit4;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TModule = class(TDataModule)
    con1: TADOConnection;
    Tavto: TADOQuery;
    Tarenda: TADOQuery;
    Tclient: TADOQuery;
    Davto: TDataSource;
    Darenda: TDataSource;
    Dclient: TDataSource;
    TclientDSDesigner: TAutoIncField;
    TclientDSDesigner2: TWideStringField;
    TclientDSDesigner3: TIntegerField;
    TavtoDSDesigner: TAutoIncField;
    TavtoDSDesigner2: TWideStringField;
    TavtoDSDesigner3: TWideStringField;
    TavtoDSDesigner4: TDateTimeField;
    TavtoDSDesigner5: TIntegerField;
    TavtoDSDesigner6: TIntegerField;
    TarendaDSDesigner: TAutoIncField;
    TarendaDSDesigner2: TDateTimeField;
    TarendaDSDesigner3: TIntegerField;
    TarendaDSDesigner4: TIntegerField;
    TarendaDSDesigner5: TIntegerField;
    TarendaDSDesigner6: TIntegerField;
  private
    { Private declarations }
  public
  procedure MyLocate(s:String);
    { Public declarations }
  end;

var
  Module: TModule;

implementation

uses Unit1, Unit2, Unit3, Unit5, Unit6, Unit7;

{$R *.dfm}



procedure TModule.MyLocate(s:String);
begin
Tclient.Locate('???' , s,[loPartialKey]);
end;

end.

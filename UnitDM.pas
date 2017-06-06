unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client,
  Uni, UniProvider, SQLServerUniProvider, DBAccess;

type
  TDM = class(TDataModule)
    FDCSqlite: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    SQLServerUniProvider1: TSQLServerUniProvider;
    UniConn: TUniConnection;
    procedure FDCSqliteBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses System.IOUtils, UnitCommon;
{ %CLASSGROUP 'FMX.Controls.TControl' }

{$R *.dfm}


procedure TDM.FDCSqliteBeforeConnect(Sender: TObject);
var
  dbPath: String;
begin

{$IFDEF MSWINDOWS}
  dbPath := localdbName;
{$ENDIF}

{$IFDEF Android}
  dbPath := TPath.GetDocumentsPath + TPath.PathSeparator + localdbName;
{$ENDIF}

{$IFDEF IOS}
  dbPath := TPath.GetDocumentsPath + TPath.PathSeparator + localdbName;
{$ENDIF}
  FDCSqlite.Params.Values['Database'] := dbPath;
  FDCSqlite.Params.Values['Pooled'] := 'False';
  FDCSqlite.Params.Values['DriverID'] := 'SQLite';
  FDCSqlite.Params.Values['OpenMode'] := 'ReadWrite';
  FDCSqlite.Params.Values['StringFormat'] := 'Unicode';
  // FDCSqlite.Params.Values['Encrypt'] := 'aes-256';
  // FDCSqlite.Params.Values['Password'] := '';
end;

end.

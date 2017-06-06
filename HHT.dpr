program HHT;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitOne in 'UnitOne.pas' {frmOne},
  UnitCommon in 'UnitCommon.pas',
  UnitDM in 'UnitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmOne, frmOne);

  Application.Run;
end.

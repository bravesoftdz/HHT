unit UnitOne;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation, FMX.MultiView, FMX.TMSPageControl,
  FMX.TMSCustomControl, FMX.TMSTabSet, FMX.Layouts;

type
  TfrmOne = class(TForm)
    LayerOne: TLayout;
    PageControl: TTMSFMXPageControl;
    PageControlPage0: TTMSFMXPageControlContainer;
    PageControlPage1: TTMSFMXPageControlContainer;
    PageControlPage2: TTMSFMXPageControlContainer;
    PageControlPage3: TTMSFMXPageControlContainer;
    MultiView: TMultiView;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOne: TfrmOne;

implementation

{$R *.fmx}

uses UnitCommon;


procedure TfrmOne.FormCreate(Sender: TObject);
begin
{$IFDEF Android}
  MultiView.Width := Screen.Width * 0.75;
{$ENDIF}

{$IFDEF MSWINDOWS}
  MultiView.Width := Self.Width * 0.75;
{$ENDIF}

{$IFDEF IOS}
  MultiView.Width := Screen.Width * 0.75;
{$ENDIF}
  PageControl.ActivePageIndex := 0;
  //PageControl.TabAppearance.ActiveFill.Color:=mainColor;
  Self.Caption := '慧海通物流';
  MultiView.ShadowOptions.Color := mainColor;
end;

end.

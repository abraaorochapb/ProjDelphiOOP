unit ProjOOP.src.view.main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmMain = class(TForm)
    pnlTela: TPanel;
    pnlCabecalho: TPanel;
    Panel1: TPanel;
    pnlBotoes: TPanel;
    pnlPrincipal: TPanel;
    btnNovo: TButton;
    btnEditar: TButton;
    btnCancelar: TButton;
    pnlPesquisa: TPanel;
    edtPesquisa: TEdit;
    DBGrid1: TDBGrid;
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses ProjOOP.src.view.cadastrotarefa;

procedure TfrmMain.btnCancelarClick(Sender: TObject);
begin
  close;
end;

end.

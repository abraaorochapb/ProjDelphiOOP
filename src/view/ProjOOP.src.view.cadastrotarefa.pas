unit ProjOOP.src.view.cadastrotarefa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCadastroTarefa = class(TForm)
    pnlTela: TPanel;
    pnlBotoes: TPanel;
    btnNovo: TButton;
    btnCancelar: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtTitulo: TEdit;
    memoDescricao: TMemo;
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroTarefa: TfrmCadastroTarefa;

implementation

{$R *.dfm}

procedure TfrmCadastroTarefa.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.

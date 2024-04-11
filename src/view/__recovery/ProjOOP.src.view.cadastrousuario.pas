unit ProjOOP.src.view.cadastrousuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  ProjOOP.src.model.usuario, ProjOOP.src.dao.daousuario;

type
  TfrmCadastroUsuario = class(TForm)
    pnlTela: TPanel;
    pnlBotoes: TPanel;
    btnNovo: TButton;
    Cancelar: TButton;
    Panel1: TPanel;
    edtNome: TEdit;
    edtEmail: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    procedure CancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    FDAOUsuario: TDAOUsuario;
    procedure salvar;
  public
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}

procedure TfrmCadastroUsuario.btnNovoClick(Sender: TObject);
begin
  salvar;
  ModalResult := mrOk;
end;

procedure TfrmCadastroUsuario.CancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroUsuario.FormCreate(Sender: TObject);
begin
  FDAOUsuario := TDAOUsuario.Create;
end;

procedure TfrmCadastroUsuario.FormDestroy(Sender: TObject);
begin
  FDAOUsuario.Free;
end;

procedure TfrmCadastroUsuario.salvar;
var
  lUsuario: TUsuario;
begin
  lUsuario := TUsuario.Create;
  try
    lUsuario.nome := edtNome.Text;
    lUsuario.email := edtEmail.Text;
    lUsuario.senha := edtSenha.Text;
    FDAOUsuario.Inserir(lUsuario);
    edtNome.Clear;
    edtEmail.Clear;
    edtSenha.Clear;
  finally
    lUsuario.Free;
  end;

end;

end.

unit ProjOOP.src.view.main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, ProjOOP.src.model.usuario,
  ProjOOP.src.view.cadastrotarefa, Vcl.ComCtrls, ProjOOP.src.model.tarefa;

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
    edtPesquisa: TEdit;  procedure btnCancelarClick(Sender: TObject);
    edtPesquisa: TEdit;
    ListView1: TListView;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    function validaUsuario(aEmail, aSenha: String): Boolean;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses ProjOOP.src.view.login;

procedure TfrmMain.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.btnNovoClick(Sender: TObject);
var
  lCadastroTarefa: TfrmCadastroTarefa;
  lTarefas: TObjectList<TTarefa>;
begin
  lTarefas := TObjectList<TTarefa>.Create;
  lCadastroTarefa := TfrmCadastroTarefa.Create(self, lTarefas);
  try
    lCadastroTarefa.ShowModal;
  finally
    FreeAndNil(lCadastroTarefa);
    lTarefas.Free;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  lTelaLogin: TfrmLogin;
begin
  lTelaLogin := TfrmLogin.Create(nil);
  try
    lTelaLogin.ShowModal;
    if not validaUsuario(lTelaLogin.edtEmail.Text, lTelaLogin.edtSenha.Text)
    then
    begin
      Showmessage('Credenciais inválidas, tentenovamente');
      Application.Terminate;
    end;

  finally
    lTelaLogin.Free;
  end;
end;
procedure TfrmMain.preencheListView(aTarefas: TObjectList<TTarefa>);
var
  lItem: TListItem;
  lTarefa: TTarefa;
begin
  if not Assigned(aTarefas) then
  begin
    Exit;
  end;
  ListView1.Clear;
  for lTarefa in aTarefas do
  begin
    lItem := ListView1.Items.Add;
    lItem.Caption := lTarefa.id.ToString;
    lItem.SubItems.Add(lTarefa.titulo);
    lItem.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:mm',
      lTarefa.data_criacao));
    lItem.Data := lTarefa;
  end;

end;
function TfrmMain.validaUsuario(aEmail, aSenha: String): Boolean;
var
  lUsuario: TUsuario;
begin
  lUsuario := TUsuario.Create;
  try
    lUsuario.email := 'email';
    lUsuario.senha := 'senha';
    result := ((lUsuario.email = aEmail) and (lUsuario.senha = aSenha));
  finally
    lUsuario.Free;
  end;
end;

end.

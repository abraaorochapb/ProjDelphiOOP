unit ProjOOP.src.view.login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  ProjOOP.src.view.cadastrousuario;

type
  TfrmLogin = class(TForm)
    pnlTela: TPanel;
    pnlBotoes: TPanel;
    btnEntrar: TButton;
    btnCadastrar: TButton;
    pnlCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtEmail: TEdit;
    edtSenha: TEdit;
    procedure btnEntrarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btnCadastrarClick(Sender: TObject);
var
  lCadastroUsuario: TfrmCadastroUsuario;
begin
  lCadastroUsuario := TfrmCadastroUsuario.Create(nil);
  try
    lCadastroUsuario.ShowModal;
    //if lCadastroUsuario.ModalResult = mrOk then
    //begin
    //  edtEmail.Text := lCadastroUsuario.FUsuario.email;
    //  edtSenha.Text := lCadastroUsuario.FUsuario.senha;
   // end;

  finally
    lCadastroUsuario.Free;
  end;

end;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
  Close;
end;

end.

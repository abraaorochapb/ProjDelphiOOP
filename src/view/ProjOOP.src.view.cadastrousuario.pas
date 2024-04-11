unit ProjOOP.src.view.cadastrousuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  ProjOOP.src.model.usuario;

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
    { Private declarations }
  public
    FUsuario: TUsuario;
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}

procedure TfrmCadastroUsuario.btnNovoClick(Sender: TObject);
begin
  FUsuario.id := 1;
  FUsuario.nome := edtNome.Text;
  FUsuario.email := edtEmail.Text;
  FUsuario.senha := edtSenha.Text;
  ModalResult := mrOk;
end;

procedure TfrmCadastroUsuario.CancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroUsuario.FormCreate(Sender: TObject);
begin
  FUsuario := TUsuario.Create;
end;

procedure TfrmCadastroUsuario.FormDestroy(Sender: TObject);
begin
  FUsuario.Free;
end;

end.

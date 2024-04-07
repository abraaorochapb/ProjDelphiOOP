unit ProjOOP.src.view.cadastrousuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmCadastroUsuario = class(TForm)
    pnlTela: TPanel;
    pnlBotoes: TPanel;
    btnNovo: TButton;
    Button2: TButton;
    Panel1: TPanel;
    edtNome: TEdit;
    edtEmail: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}

end.
